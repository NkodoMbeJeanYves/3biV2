<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class course extends Model
{
    public $timestamps = true;

    use SoftDeletes;

    protected $dates = ['deleted_at'];
    public $incrementing = "false";
    protected $keyType = "string";

    protected $table = "courses";
    protected $primaryKey = "course_id";

    protected $fillable = [
        'course_id',
        'course_name',
        'course_code',
        'school_id',
    ];
}
