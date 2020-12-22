<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Models\event;
use App\Models\factor;

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

    protected $appends = ['coef'];

        /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'created_at', 'updated_at', 'deleted_at'
    ];

    /**
    * Retrieve coef of course
    */
    public function getcoefAttribute(){
        $lastEvent = event::where('school_id', $this->school_id)->latest()->first();

        if (is_null($lastEvent)) {
            return null;
        }

        $factor = factor::where('course_id', $this->course_id)->where('event_id', $lastEvent->event_id)->first(); 
         
        return is_null($factor) ? null : $factor->factor;
    }
}
