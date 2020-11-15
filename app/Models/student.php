<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class student extends Model
{
    public $timestamps = true;

    use SoftDeletes;

    protected $dates = ['deleted_at'];
    public $incrementing = "false";
    protected $keyType = "string";

    protected $table = "students";
    protected $primaryKey = "student_id";

    protected $fillable = [
        'student_id',
        'serial',
        'fullname',
        'dateofbirth',
        'placeofbirth',
        'sex'   => 'Male',  //Male or Female
        'telephone',
        'mobilephone',
        'tutormobilephone_1',
        'tutormobilephone_2',
        'email',
        'file',
        'user_id',
        'first_registered_school_id',
        'current_school_id'
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
