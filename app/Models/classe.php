<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class classe extends Model
{
    public $timestamps = true;

    use SoftDeletes;

    protected $dates = ['deleted_at'];
    public $incrementing = "false";
    protected $keyType = "string";

    protected $table = "classes";
    protected $primaryKey = "class_id";

    protected $fillable = [
        'class_id',
        'class_name',
        'class_size',
        'admission_amount',
        'school_id',
    ];

}
