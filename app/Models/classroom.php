<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class classroom extends Model
{

    public $timestamps = true;

    use SoftDeletes;

    protected $dates = ['deleted_at'];
    public $incrementing = "false";
    protected $keyType = "string";

    protected $table = "classrooms";
    protected $primaryKey = "classroom_id";

    protected $fillable = [
        'classroom_id',
        'classroom_name',
        'building_id',
        'seat',
        'school_id',
        'is_checked',
    ];


}
