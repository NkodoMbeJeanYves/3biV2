<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Models\period;
use App\Models\building;
use App\Models\classe;
use App\Models\channel;
use App\Models\classroom;
use App\Models\profile;
use App\Models\course;
use App\Models\event;

class school extends Model
{

    public $timestamps = true;

    use SoftDeletes;

    protected $dates = ['deleted_at'];
    public $incrementing = "false";
    protected $keyType = "string";

    protected $table = "schools";
    protected $primaryKey = "school_id";
    protected $appends = ['test', 'LastEvent']; 

    protected $fillable = [
        'school_id',
        'name',
        'file',
        'school_type' => 'HIGH SCHOOL',  // 'COLLEGE','HIGH SCHOOL','UNIVERSITY'
        'description',
        'class_start_time',
        'class_end_time',
        'class_duration',
        'first_break_duration',
        'first_break_start_time',
        'second_break_duration',
        'second_break_start_time',
        'third_break_duration',
        'third_break_start_time',
    ];

    # Sometimes you might want to always load some relationships when retrieving a model. 
    # To accomplish this, you may define a $with property on the model:
    protected $with = ['periods', 'buildings', 'classes', 'classrooms', 'profiles', 'courses'];

    # Sometimes you might want to always load some countable relationships when retrieving a model. 
    protected $withCount = ['periods', 'buildings', 'classes', 'classrooms', 'profiles', 'courses'];


    public function periods(){
        return $this->hasMany(period::class, 'school_id', 'school_id');
    }

    public function buildings(){
        return $this->hasMany(building::class, 'school_id', 'school_id')
        ->orderBy('building_name','ASC');
    }

    # Classes Or fileds | Specialities
    public function classes(){
        return $this->hasMany(classe::class, 'school_id', 'school_id')
        ->where('is_checked', 1)
        ->orderBy('class_name','ASC');
    }    

    public function classrooms(){
        return $this->hasMany(classroom::class, 'school_id', 'school_id')
        ->orderBy('classroom_name', 'ASC');
    }

    public function profiles(){
        return $this->hasMany(profile::class, 'school_id', 'school_id')
        ->orderBy('profile_name','ASC');
    }

    public function courses(){
        return $this->hasMany(course::class, 'school_id', 'school_id')
        ->orderBy('course_name','ASC');
    }

    # always fetch informations about last event in date
    # (event::class, 'foreign_key', 'local_key')
    public function getLastEventAttribute(){
        return event::where('school_id', $this->school_id)->latest()->first();
    }

    public function getTestAttribute(){
        return 'yohaa!';
    }

}
