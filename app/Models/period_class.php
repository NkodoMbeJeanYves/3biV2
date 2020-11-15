<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class period_class extends Model
{
    public $timestamps = true;

//    use SoftDeletes;

//    protected $dates = ['deleted_at'];


    protected $table = "period_class";
    protected $primaryKey = "id";

    protected $fillable = [
        'period_id',
        'class_id'
    ];


        /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'created_at', 'updated_at', 'deleted_at'
    ];
}
