<?php

namespace App\Http\Controllers\users;

use App\Http\Controllers\Controller;
use App\Models\Option;
use App\Models\Question;
use App\Models\Response;
use Illuminate\Http\Request;
use PDF;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Mail;
use Phpml\Classification\DecisionTree;
use Phpml\Dataset\ArrayDataset;
use Phpml\CrossValidation\StratifiedRandomSplit;

class ExaminationController extends Controller
{
    public function ExaminationPage()
    {
        $user = Auth::guard('users')->user();
        if (!$user) {
            return redirect()->route('users.information.page')->with('error', 'You must be logged in to access the examination.');
        }
        $hasSubmitted = Response::where('user_id', $user->id)->exists();
        if ($hasSubmitted) {
            return redirect()->route('users.completed.page')->with('error', 'You have already submitted your responses.');
        }
        $questions = Question::all();
        $options = Option::all();

        return view('users.examination.examination', compact('questions', 'options', 'user'));
    }



    public function SubmitResponses(Request $request)
    {
        $user = Auth::guard('users')->user();

        $request->validate([
            'answer.*' => 'required|in:true,false',
        ]);

        $responses = [];

        foreach ($request->input('answer') as $question_id => $answer) {
            $question = Question::find($question_id);
            if ($question && in_array($question->riasec_id, ['R', 'I', 'A', 'S', 'E', 'C'])) {
                $is_correct = $answer === 'true';
                $responses[] = [
                    'question' => $question->question_text,
                    'answer' => $is_correct ? '✓' : '✗',
                    'riasec_id' => $question->riasec_id
                ];

                $selected_option_id = null;

                if ($is_correct) {
                    $selectedOption = Option::where('question_id', $question_id)
                        ->where('option_text', $question->riasec_id)
                        ->first();

                    if ($selectedOption) {
                        $selected_option_id = $selectedOption->id;
                    }
                }

                Response::create([
                    'user_id' => $user->id,
                    'question_id' => $question_id,
                    'selected_option_id' => $selected_option_id,
                    'is_correct' => $is_correct,
                ]);

                DB::table('riasec_scores')->updateOrInsert(
                    ['user_id' => $user->id, 'riasec_id' => $question->riasec_id],
                    [
                        'points' => DB::raw("points + " . ($is_correct ? 1 : 0)),
                        'created_at' => now(),
                        'updated_at' => now()
                    ]
                );
            }
        }

        $pdf = PDF::loadView('users.pdf.response', ['responses' => $responses, 'user' => $user]);
        $pdfFilePath = public_path('examinees/pdf/RIASEC.pdf');

        // Send the email with both PDFs
        Mail::send('users.email.response', ['user' => $user], function ($message) use ($user, $pdf, $pdfFilePath) {
            $message->to($user->email)
                ->subject('Results')
                ->attachData($pdf->output(), 'responses.pdf')
                ->attach($pdfFilePath, ['as' => 'RIASEC.pdf', 'mime' => 'application/pdf']);
        });

        return response()->json([
            'status' => 'success',
            'message' => 'Submitted successfully',
            'redirect' => route('users.completed.page')
        ]);
    }


    public function ExaminationCompletedPage()
    {
        $user = Auth::guard('users')->user();

        if (!$user) {
            return redirect()->route('users.login.page');
        }

        $scores = DB::table('riasec_scores')
            ->select('riasec_id', DB::raw('SUM(points) as total_points'))
            ->where('user_id', $user->id)
            ->groupBy('riasec_id')
            ->orderBy('total_points', 'desc')
            ->get();

        $riasec_order = ['R', 'I', 'A', 'S', 'E', 'C'];

        $ordered_scores = [];
        foreach ($scores as $score) {
            $ordered_scores[$score->riasec_id] = $score->total_points;
        }

        arsort($ordered_scores);

        $top_scores = [];
        $top_count = 0;
        $max_scores = 3;
        $last_score = null;

        foreach ($ordered_scores as $riasec_id => $total_points) {
            if ($top_count < $max_scores || $total_points == $last_score) {
                $top_scores[$riasec_id] = $total_points;
                $top_count++;
                $last_score = $total_points;
            }
        }

        $riasec_names = DB::table('riasecs')->pluck('riasec_name', 'id')->toArray();

        $all_scores = DB::table('riasec_scores')
            ->where('user_id', $user->id)
            ->pluck('points', 'riasec_id');

        $preferredCoursesData = DB::table('preferred_courses')
            ->where('user_id', $user->id)
            ->select('course_1', 'course_2', 'course_3')
            ->first();

        $preferredCourseIds = array_filter([
            $preferredCoursesData->course_1 ?? null,
            $preferredCoursesData->course_2 ?? null,
            $preferredCoursesData->course_3 ?? null,
        ]);

        $preferredCourseNames = DB::table('courses')
            ->whereIn('id', $preferredCourseIds)
            ->pluck('course_name')
            ->toArray();

        $preferredCourses = DB::table('course_career_pathways')
            ->join('career_pathways', 'course_career_pathways.career_pathway_id', '=', 'career_pathways.id')
            ->join('courses', 'course_career_pathways.course_id', '=', 'courses.id')
            ->join('riasecs', 'career_pathways.riasec_id', '=', 'riasecs.id')
            ->whereIn('career_pathways.riasec_id', $scores->pluck('riasec_id'))
            ->select('courses.id', 'courses.course_name', 'career_pathways.career_name', 'career_pathways.riasec_id', 'riasecs.riasec_name')
            ->get();

        $groupedPreferredCourses = [];
        foreach ($preferredCourses as $course) {
            $groupedPreferredCourses[$course->riasec_id][$course->career_name][] = [
                'id' => $course->id,
                'name' => $course->course_name,
                'riasec_name' => $course->riasec_name
            ];
        }

        return view('users.examination.exam_completed', compact(
            'scores',
            'riasec_names',
            'top_scores',
            'all_scores',
            'groupedPreferredCourses',
            'user',
            'preferredCourseIds',
            'preferredCourseNames',
            'riasec_order'
        ));
    }

    public function ExaminersGetUserRiasecScores()
    {
        $user = Auth::guard('users')->user();
        if (!$user) return response()->json(['error'=>'Unauthorized'],401);

        $scores = DB::table('riasec_scores')
            ->where('user_id',$user->id)
            ->pluck('points','riasec_id');

        if ($scores->isEmpty()) return response()->json(['error'=>'No scores'],404); // <-- your error comes from here

        return response()->json([
            'status'=>'success',
            'user_id'=>$user->id,
            'scores'=>$scores
        ]);
    }

    public function ExaminersGetTrainingData()
    {
        $data = DB::table('riasec_scores')
            ->select('user_id','riasec_id','points')
            ->get()
            ->groupBy('user_id')
            ->map(function($userScores){
                $row = ['label'=>$userScores->sortByDesc('points')->first()->riasec_id];
                foreach(['R','I','A','S','E','C'] as $r){
                    $row[$r] = $userScores->firstWhere('riasec_id',$r)->points ?? 0;
                }
                return $row;
            })->values()->toArray();

        return response()->json($data);
    }

    public function ExaminersPredictAnswers(Request $request)
    {
        $userScores = $request->query('scores');
        if (!$userScores || !is_array($userScores)) {
            return response()->json(['error' => 'No user scores provided'], 400);
        }

        $samples = [
            [9, 2, 3, 4, 5, 2], 
            [8, 3, 2, 5, 4, 3], 
            [2, 9, 3, 4, 3, 2], 
            [3, 8, 2, 5, 4, 3], 
            [2, 3, 9, 4, 2, 3], 
            [3, 2, 8, 3, 4, 2], 
            [2, 3, 4, 9, 3, 2], 
            [3, 2, 4, 8, 2, 3], 
            [2, 3, 2, 3, 9, 2], 
            [3, 2, 3, 2, 8, 3], 
            [2, 3, 2, 3, 2, 9], 
            [3, 2, 3, 2, 3, 8], 
        ];

        $labels = ['R','R','I','I','A','A','S','S','E','E','C','C'];

        $dataset = new ArrayDataset($samples, $labels);
        $split = new StratifiedRandomSplit($dataset, 0.25);
        $classifier = new DecisionTree();
        $classifier->train($split->getTrainSamples(), $split->getTrainLabels());

        $predictedLabels = $classifier->predict($split->getTestSamples());
        $actualLabels = $split->getTestLabels();

        $correct = 0;
        foreach ($predictedLabels as $i => $p) {
            if ($p === $actualLabels[$i]) $correct++;
        }
        $accuracy = count($actualLabels) ? round($correct / count($actualLabels) * 100, 1) : 0;

        $userScoresNumeric = array_map('intval', $userScores);
        arsort($userScoresNumeric);

        $top3 = [];
        $count = 0;
        $lastScore = null;
        foreach ($userScoresNumeric as $type => $score) {
            if ($count < 3 || $score === $lastScore) {
                $top3[] = [
                    'type' => $type,
                    'percent' => round(($score / max($userScoresNumeric)) * 100, 1)
                ];
                $count++;
                $lastScore = $score;
            }
        }

        $riasecNames = [
            'R' => 'Realistic',
            'I' => 'Investigative',
            'A' => 'Artistic',
            'S' => 'Social',
            'E' => 'Enterprising',
            'C' => 'Conventional'
        ];

        return response()->json([
            'top3' => $top3,
            'model_accuracy' => $accuracy,
            'riasec_names' => $riasecNames
        ]);
    }

}
