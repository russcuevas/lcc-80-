<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Riasec extends Model
{
    use HasFactory;


    public $incrementing = false;

    protected $fillable = [
        'id',
        'riasec_name',
        'description',
    ];
}
