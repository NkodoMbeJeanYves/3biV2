<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Models\sub_event;

class department_channel extends Model
{
    public $timestamps = true;

    use SoftDeletes;

    protected $dates = ['deleted_at'];
   /*  public $incrementing = "false";
    protected $keyType = "string"; */

    // protected $with = ['sub_events'];
    // protected $withCount = ['sub_events'];

    protected $table = "department_channels";
    protected $primaryKey = "id";

    protected $fillable = [
        'id',
        'department_id',
        'channel_id',
    ];

    /* public function sub_events(){
        return $this->belongsToMany(sub_event::class,'event_sub_events','event_id','sub_event_id')
        ->as('related_sub_events');
    } */

}
