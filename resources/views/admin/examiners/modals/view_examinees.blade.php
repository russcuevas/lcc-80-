<div class="modal fade" id="viewExaminersModal{{ $examiner->id }}" tabindex="-1" role="dialog"
    aria-labelledby="viewExaminersModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="viewExaminersModalLabel">View Profile</h5>
                <hr style="background-color: #000080; height: 2px; border: none;">
            </div>
            <div class="modal-body">
                <div style="margin-bottom: 10px;">
                    <strong style="color: #000080;">Fullname:</strong> {{ $examiner->fullname }}
                </div>
                <div style="margin-bottom: 10px;">
                    <strong style="color: #000080;">Sex:</strong> <span style="text-transform: capitalize">{{ $examiner->gender }}</span>
                </div>
                <div style="margin-bottom: 10px;">
                    <strong style="color: #000080;">Age:</strong> {{ $examiner->age }}
                </div>
                <div style="margin-bottom: 10px;">
                    <strong style="color: #000080;">Birthday:</strong> {{ $examiner->birthday }}
                </div>
                <div style="margin-bottom: 10px;">
                    <strong style="color: #000080;">Strand:</strong> {{ $examiner->strand }}
                </div>
                <div style="margin-bottom: 10px;">
                    <strong style="color: #000080;">Preferred Course:</strong><br>
                    <strong style="color: #000080;">1.)</strong> {{ $examiner->course_1_name ?? 'N/A' }}<br>
                    <strong style="color: #000080;">2.)</strong> {{ $examiner->course_2_name ?? 'N/A' }}<br>
                    <strong style="color: #000080;">3.)</strong> {{ $examiner->course_3_name ?? 'N/A' }}
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-link waves-effect" data-dismiss="modal">CLOSE</button>
            </div>
        </div>
    </div>
</div>