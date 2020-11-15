<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Models\department;

class channel extends Model
{
    public $timestamps = true;

    use SoftDeletes;

    protected $dates = ['deleted_at'];
    public $incrementing = "false";
    protected $keyType = "string";

     protected $with = ['departments'];
     protected $withCount = ['departments'];

    protected $table = "channels";
    protected $primaryKey = "channel_id";

    protected $fillable = [
        'channel_id',
        'channel_content',
        'admission_amount'
    ];

        /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'created_at', 'updated_at', 'deleted_at'
    ];

    /* public function sub_events(){
        return $this->belongsToMany(sub_event::class,'event_sub_events','event_id','sub_event_id')
        ->as('related_sub_events');
    } */

    public function departments(){
        return $this->belongsToMany(department::class,'department_channels','channel_id','department_id')
        ->as('channel_departments');
    }

}
