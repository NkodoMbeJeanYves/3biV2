<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class event_sub_event extends Model
{
    protected $table = "event_sub_events";
    protected $primaryKey = "id";

    protected $fillable = [
        'id',
        'event_id',
        'sub_event_id',
        'is_checked',
        'registration_fee'
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
