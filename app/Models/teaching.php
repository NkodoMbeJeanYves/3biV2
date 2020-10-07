<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\profile;
use App\Models\student;
use App\Models\course;

class teaching extends Model
{
    public $table = "teachings";
    protected $primaryKey = "teaching_id";

    protected $fillable = [
        'lecturer_id',  // varchar
        'subject_id',  // varchar
        'class_date',   // datetime
        'extratime_started_at', //  time
        'extratime_ended_at',   // time
    ];

    protected $with = ['students_class', 'students_channel', 'lecturer','subject'];

    protected $withCount = ['students_channel', 'students_class'];

    # retrieve information about the student in relation with teaching
    public function students_class(){
    	return $this->belongsToMany(student::class, 'teachered_class', 'teaching_id', 'student_id');
    }

    public function students_channel(){
    	return $this->belongsToMany(student::class, 'teachered_channel', 'teaching_id', 'student_id');
    }

    public function subject(){
    	return $this->belongsTo(course::class, 'subject_id', 'course_id');
    }

    public function lecturer(){
    	return $this->belongsTo(profile::class, 'lecturer_id', 'profile_id');
    }

}
