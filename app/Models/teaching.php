<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\student;

class teaching extends Model
{
    public $table = "teachings";
    protected $primaryKey = "teaching_id";

    protected $fillable = [
        'class_date',   // datetime
    ];

    protected $with = ['students_class', 'students_channel'];

    protected $withCount = ['students_channel', 'students_class'];

    # retrieve information about the student in relation with teaching
    public function students_class(){
    	return $this->belongsToMany(student::class, 'teachered_class', 'teaching_id', 'student_id');
    }

    public function students_channel(){
    	return $this->belongsToMany(student::class, 'teachered_channel', 'teaching_id', 'student_id');
    }

}
