<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class teachered_class extends Model
{
    public $table = "teachered_class";
    protected $primaryKey = "teachered_id";

    protected $fillable = [
        'teaching_id',  // integer
        'student_id',  // varchar
        'was_he_present',   // bool 0 or 1
    ];
}
