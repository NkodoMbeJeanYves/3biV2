<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\event;
use App\Models\school;
use App\Models\classe;
use App\Models\registration_class;
use App\Models\registration_channel;

class AttendanceController extends Controller
{
    public function getRegisteredStudents($school_id){

    	$school = school::find($school_id);

    	// fetch last event
    	$last_event = $school->lastEvent;// (event::where('school_id', $school_id)->latest()->first())

    	if(!is_null($last_event)){
    		// fetch all registrations related to last event
	    	$registrations = $school->school_type == 'UNIVERSITY' ? 
	            registration_channel::where('event_id', $last_event->id)->get():
	            registration_class::where('event_id', $last_event->id)->get();
	        // fetch all classes
	        $classes = classe::where('school_id', $school->school_id)->get();    
	    	// sort student by class
	    	return response()->json([
	    		'registrations'  => $registrations,
	    		'classes' =>	$classes], 200);
    	}
    	return response()->json(null);

    }
}
