<?php

namespace App\Http\Controllers\api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\event;
use App\Models\school;
use App\Models\day;
use App\Models\period;
use App\Models\sub_event;
use App\Models\event_sub_event;
use Validator;
use Carbon\Carbon;
use Illuminate\Support\Facades\DB;
use App\Services\PeriodService;


class EventController extends Controller
{

    private $_periodService = null;

    public function __construct() {
        $this->_periodService = new PeriodService;
    }


    /**
     * @comment load school related events
     */
    public function getSchoolEvents(string $school_id){
        $events = event::where('school_id', $school_id)->latest()->get();
        return response()->json($events);
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
    *
    *@param Request, [pivotIds] array of pivot key
    *@return attach subEvent to Event
    *
    */
    public function attach(Request $request, $event_id){
        
        $formDataToCheck = json_decode(file_get_contents("php://input"), TRUE);
        $formData = json_decode(file_get_contents("php://input"));
    
        if(is_null($formDataToCheck)){
            $formDataToCheck = $request->all();
            $formData = $request;
        }
        # traiter $subEvents pour enlever les doublons
        $subEvents = array_unique($formData->pivotIds);
        // $event = event::find($event->event_id);           

        # delete all related sub event before setting new one
        $event = event::find($event_id);           
        $event->sub_events()->detach();
        // event_sub_event::where('event_id', $event_id)->delete();

        $event->sub_events()->attach($subEvents); 
        return response()->json(['data' => $event, 'status' => 200]);
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
                                                'event_content'  =>  'bail|required|string|max:50',
                                                'start_date'  =>  'bail|required|date',
                                                'end_date'  =>  'bail|required|date|after:start_date',
                                                'school_id'     =>  'bail|required|string|max:50',
                                            ],$messages);
                                        
            
            //(withErrors) et les entrées (withInput) pour pouvoir les afficher dans le formulaire
            if ($validator->fails())
            {
                return response()->json(['errors'=>$validator->errors(),'form-data'=>$formDataToCheck, 'status'=> 201]);
            }
    
        // Preparing Transactions
        $event_id = 'evn'.$this->generate_Id(event::class);
        // we are going to use reference variable
        // the event value will be updated within the transaction
        $event = event::find($event_id);

        // Create school periods related to that event
        $school = School::find($formData->school_id);
        $school_id = $formData->school_id;

        # Beginning Transaction
        DB::transaction(function () use($formData, $school, $school_id, &$event, $event_id){
            $event = event::create([
                            'event_id'      => $event_id,
                            'event_content' => $formData->event_content,
                            'start_date'    => Carbon::parse($formData->start_date),
                            'end_date'      => Carbon::parse($formData->end_date),
                            'school_id'     => $formData->school_id
                        ]); 

            $event->fill(['event_id' => $event_id]); 

            $sub_events = sub_event::all();
            $event->sub_events()->attach($sub_events->pluck('sub_event_id')); 

            $this->_periodService->createPeriodsForThatModel($school, $school_id, $event_id);

        });
        

        
        # End Transaction
        if (is_null($event)) {
            return response()->json(['data' => $event, 'status' => 201]);
        }           
        return response()->json(['data' => $event, 'status' => 200]);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(event $event)
    {
        return response()->json($event);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, event $event)
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
                                                'event_content'  =>  'bail|required|string|max:50',
                                                'start_date'  =>  'bail|required|date',
                                                'end_date'  =>  'bail|required|date|after:start_date',
                                                'school_id'     =>  'bail|required|string|max:50',
                                            ],$messages);
                                        
        //(withErrors) et les entrées (withInput) pour pouvoir les afficher dans le formulaire
        if ($validator->fails())
        {
            return response()->json(['errors'=>$validator->errors(),'form-data'=>$formDataToCheck, 'status'=> 201]);
        }
        
        # update event
        $event = event::updateOrCreate(
                    [
                        'event_id'      => $event->event_id
                    ],
                    [
                        'event_id'      => $event->event_id,
                        'event_content' => $formData->event_content,
                        'start_date'    => Carbon::parse($formData->start_date),
                        'end_date'      => Carbon::parse($formData->end_date),
                        'school_id'     => $formData->school_id
                    ]); 

        $updatedEvent = event::find($event->event_id);   
        return response()->json(['data' => $updatedEvent, 'status' => 200]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(event $event)
    {
        $event->delete();
        return response()->json(['data'=> $event->event_id, 'status' => 200]);
    }
}
