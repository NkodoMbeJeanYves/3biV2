<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Models\event;
use App\Models\channel;
use App\Models\student;
use App\Models\payment;

class registration extends Model
{
    /*use SoftDeletes;
    public $timestamps = true;
    protected $table = "registrations_channel";
    protected $primaryKey = "registration_id";

    protected $fillable = [
        'channel_id',
        'event_id',
        'student_id',
        'status',	//ongoing, closed
        'dateline'
    ];

    protected $with = ['student', 'event', 'channel'];

    protected $withCount = ['paymentList'];

    # retrieve information about the student in relation with registration
    public function student(){
    	return $this->belongsTo(student::class, 'student_id', 'student_id');
    }

    public function event(){
    	return $this->belongsTo(event::class, 'event_id', 'event_id');
    }

    public function channel(){
    	return $this->belongsTo(channel::class, 'channel_id', 'channel_id');
    }

    public function paymentList(){
    	return $this->hasMany(payment::class, 'payment_orders_id', 'registration_id');
    }*/
}
