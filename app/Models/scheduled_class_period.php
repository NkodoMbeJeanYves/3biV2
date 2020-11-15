<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class scheduled_class_period extends Model
{
    public $timestamps = true;
//    use SoftDeletes;
    
    protected $table = "scheduled_class_periods";
    protected $primaryKey = "scheduled_class_period_id";

    protected $fillable = [
        'scheduled_class_id',
        'period_id',
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