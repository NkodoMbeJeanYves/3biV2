<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class teachered_channel extends Model
{
    public $table = "teachered_channel";
    protected $primaryKey = "teachered_id";

    protected $fillable = [
        'teaching_id',  // integer
        'student_id',  // varchar
        'was_he_present',   // bool 0 or 1
    ];
}
