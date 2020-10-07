<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class role extends Model
{

    protected $table = "roles";
    protected $primaryKey = "id";

    protected $fillable = [
        'id',
        'content',
    ];
}
