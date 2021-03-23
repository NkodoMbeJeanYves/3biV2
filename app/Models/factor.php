<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class factor extends Model
{
    use HasFactory;

    public $timestamps = true;

    public $table = "factor_by_events";

    protected $primaryKey = "factor_id";

    protected $fillable = [
        'course_id',
        'event_id',
        'factor'
    ];

    protected $hidden = [
        'created_at', 'updated_at', 'deleted_at'
    ];

    /*protected $with = ['students_class', 'students_channel'];

    protected $withCount = ['students_channel', 'students_class'];

    # retrieve information about the student in relation with teaching
    public function students_class(){
    	return $this->belongsToMany(student::class, 'teachered_class', 'teaching_id', 'student_id');
    }

    public function students_channel(){
    	return $this->belongsToMany(student::class, 'teachered_channel', 'teaching_id', 'student_id');
    }*/
}
