<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class period_classroom extends Model
{
    public $timestamps = true;

//    use SoftDeletes;

//    protected $dates = ['deleted_at'];


    protected $table = "period_classrooms";
    protected $primaryKey = "id";

    protected $fillable = [
        'period_id',
        'classroom_id'
    ];

}
