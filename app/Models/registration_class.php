<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Models\event;
use App\Models\student;
use App\Models\classe;
use App\Models\payment;
use App\Models\registration;


class registration_class extends registration
{
    use SoftDeletes;
    public $timestamps = true;
    protected $table = "registrations_class";
    protected $primaryKey = "registration_id";

    protected $fillable = [
        'class_id',
        'event_id',
        'student_id',
        'status',	//ongoing, closed
        'dateline'
    ];

    protected $with = ['student', 'classe', 'event', 'paymentList']; //, 'event', 'classe', 'paymentList'];

    protected $withCount = ['paymentList'];

    # retrieve information about the student in relation with registration
    public function student(){
    	return $this->belongsTo(student::class, 'student_id', 'student_id');
    }

    public function event(){
    	return $this->belongsTo(event::class, 'event_id', 'event_id');
    }

    public function classe(){
    	return $this->belongsTo(classe::class, 'class_id', 'class_id');
    }

    public function paymentList(){
    	return $this->hasMany(payment::class, 'registration_id', 'registration_id')->where('registration_type', 'class');
    }
}
