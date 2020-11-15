<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class extra_time extends Model
{
    use HasFactory;
    public $table = "extra_times";

    protected $primaryKey = "extra_time_id";

    protected $fillable = [
        'teaching_id',
        'extra_condition_id',
        'period_id'
    ];

        /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
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
