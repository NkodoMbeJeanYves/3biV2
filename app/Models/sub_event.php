<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class sub_event extends Model
{
    public $timestamps = true;

    use SoftDeletes;

    protected $dates = ['deleted_at'];
    public $incrementing = "false";

    // we use it to temporary purpose in front-end
    // be able to know which sub_event is already involve with an event
    protected $appends = ['check']; 
    // protected $keyType = "string";

    protected $table = "sub_events";
    protected $primaryKey = "sub_event_id";

    protected $fillable = [
        'sub_event_id',
        'sub_event_content',
    ];

        /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'created_at', 'updated_at', 'deleted_at'
    ];

    // set default value to false
    public function getCheckAttribute(){
        return false;
    }

}
