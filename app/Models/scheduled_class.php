<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class scheduled_class extends Model
{
    public $timestamps = true;

//    use SoftDeletes;

    protected $table = "scheduled_class";
    protected $primaryKey = "scheduled_class_id";

    protected $fillable = [
        'class_id',
        'classroom_id',
        'profile_id',
        'course_id',
    ];
}
