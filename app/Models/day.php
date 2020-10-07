<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Models\period;

class day extends Model
{

    public $timestamps = true;

    use SoftDeletes;

    protected $dates = ['deleted_at'];
    

    protected $table = "days";
    protected $primaryKey = "day_id";

    protected $fillable = [
        'day_id',
        'description',
    ];



}
