<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class period_course extends Model
{
    public $timestamps = true;

//    use SoftDeletes;

//   protected $dates = ['deleted_at'];


    protected $table = "period_courses";
    protected $primaryKey = "id";

    protected $fillable = [
        'period_id',
        'course_id'
    ];
}
