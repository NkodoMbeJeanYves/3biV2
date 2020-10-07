<?php

namespace App\Http\Controllers\api;

use App\Models\registration;
use App\Models\classe;
use App\Models\registration_class;
use App\Models\registration_channel;
use App\Models\student;
use App\Models\school;
use App\Models\event;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Carbon\carbon;
use Validator;

class RegistrationController extends Controller
{


    public function howManySeatdoesitRemainInClass($event_id, $class_id){
        # check remaining seat within class
        $curclass = classe::find($class_id);
        $current_seat = registration_class::where('event_id', $event_id)
                                             ->where('class_id', $class_id)
                                             ->count();
        $remaining_place = $curclass->class_size - $current_seat;
        return $remaining_place;
    }

   /**
    *   Get class depending on provided school
    */
    public function getSchoolRegistrations(string $school_id){
        $school = school::find($school_id);

        # retrieve last event
        $lastEventId   = (event::where('school_id', $school_id)->latest()->first())->event_id;
        $registrations = $school->school_type == 'UNIVERSITY' ? 
            registration_channel::where('event_id', $lastEventId)->get():
            registration_class::where('event_id', $lastEventId)->get();
        
        return response()->json($registrations);
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // update is_checked and building_name field

        $formDataToCheck = json_decode(file_get_contents("php://input"), TRUE);
        $formData = json_decode(file_get_contents("php://input"));
    
        if(is_null($formDataToCheck)){
            $formDataToCheck = $request->all();
            $formData = $request;
        }
        $messages = [];

        $validator = Validator::make($formDataToCheck, [
                                                'class_id'      =>  'nullable|string|max:50',
                                                'channel_id'    =>  'nullable|string|max:50',
                                                'event_id'      =>  'bail|required|string|max:50',
                                                'student_id'    =>  'bail|required|string|max:50',
                                                'dateline'      =>  'bail|required|date',
                                            ],$messages);
                                        
            
            //(withErrors) et les entrées (withInput) pour pouvoir les afficher dans le formulaire
            if ($validator->fails())
            {
                return response()->json(['errors'=>$validator->errors(),'form-data'=>$formDataToCheck, 'status'=> 201]);
            }

            # We need to create student firstly
            $registration = new registration();
            DB::transaction(function () use($formData, &$registration){

            switch ($formData->class_id) {
                case NULL:
                    # code...
                    # use registration_channel
                    $registration = registration_channel::updateOrCreate(
                        [
                            'event_id'      => $formData->event_id,
                            'student_id'    => $formData->student_id,
                        ],
                        [
                            'event_id'      => $formData->event_id,
                            'channel_id'    => $formData->channel_id,
                            'dateline'      => Carbon::parse($formData->dateline),
                            'student_id'    => $formData->student_id,
                        ]);   

                    $registration->student()->update([
                        'current_school_id' => event::find($formData->event_id)->school_id
                    ]);
                    
                    break;
                
                default:
                    # code...
                    # use registration_class
                    # check remaining seat within class
                    
                    
                    # in case there is some remaining place in the class
                    if($this->howManySeatdoesitRemainInClass($formData->event_id,$formData->class_id)){
                        $registration = registration_class::updateOrCreate(
                        [
                            'event_id'      => $formData->event_id,
                            'student_id'    => $formData->student_id,
                        ],
                        [
                            'event_id'      => $formData->event_id,
                            'class_id'      => $formData->class_id,
                            'dateline'      => Carbon::parse($formData->dateline),
                            'student_id'    => $formData->student_id,
                        ]);

                        $registration->student()->update([
                            'current_school_id' => event::find($formData->event_id)->school_id
                        ]);

                    }
                    
                    break;
                }

                     
            });
        if(is_null($registration)){
            return response()->json(['errors'=> 'There is no more place in this class', 'status'=> 201]);
        }
    
        return response()->json(['data' => $registration, 'status' => 200]);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\registration  $registration
     * @return \Illuminate\Http\Response
     */
    public function show(registration $registration)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\registration  $registration
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, registration $registration)
    {
        
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\registration  $registration
     * @return \Illuminate\Http\Response
     */
    public function destroy($registration_id)
    {
        $registration = registration_class::find($registration_id) ?? registration_channel::find($registration_id);
        if(!is_null($registration)) {
            $registration->delete();
            return response()->json(['data'=> $registration, 'status' => 200]);
        }
        return response()->json(['data'=> $registration, 'status' => 201]);

        
    }
}
