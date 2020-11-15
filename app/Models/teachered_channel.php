<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class teachered_channel extends Model
{
    public $table = "teachered_channel";
    protected $primaryKey = "teachered_id";

    protected $fillable = [
        'teaching_id',  // integer
        'student_id',  // varchar
        'was_he_present',   // bool 0 or 1
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
