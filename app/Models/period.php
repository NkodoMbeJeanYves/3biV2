<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Models\profile;
use App\Models\course;
use App\Models\classroom;
use App\Models\classe;

class period extends Model
{

    public $timestamps = true;

    use SoftDeletes;

    protected $dates = ['deleted_at'];
    public $incrementing = "false";
    protected $keyType = "string";

    protected $table = "periods";
    protected $primaryKey = "period_id";

    protected $fillable = [
        'period_id',
        'day',
        'period_type',
        'description',
        'start_time',
        'end_time',
        'school_id'
    ];

    public function lecturers(){
        return $this->belongsToMany(profile::class,'period_lecturers','period_id','lecturer_id')
        ->as('period_lecturers');
    }

    public function courses(){
        return $this->belongsToMany(course::class,'period_courses','period_id','course_id')
        ->as('period_courses');
    }

    public function classrooms(){
        return $this->belongsToMany(classroom::class,'period_classrooms','period_id','classroom_id')
        ->as('period_classrooms');
    }

    public function classes(){
        return $this->belongsToMany(classe::class,'period_class','period_id','class_id')
        ->as('period_class');
    }

}
