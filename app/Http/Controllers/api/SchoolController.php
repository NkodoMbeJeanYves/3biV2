<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use App\Models\school;
use App\Models\period;
use App\Models\building;
use App\Models\classe;
use App\Models\classroom;
use App\Models\registration_class;
use App\Models\registration_channel;
use App\Models\channel;
use App\Models\day;
use App\Models\event;
use App\Models\sub_event;
use App\Models\course;
use Illuminate\Http\Request;
use Validator;
use Carbon\Carbon;
use App\Services\PeriodService;


class SchoolController extends Controller
{
    private $_periodService = null;

    /**
     * Create a new AuthController instance.
     *
     * @return void
     */
    public function __construct()
    {
        // $this->middleware('auth:api', ['except' => ['login']]);
        $this->_periodService = new PeriodService;
    }

    
    /**
     * @comment load periods with all relationShip related with current school
     */
    public function loadSchoolPeriods(string $school_id){
        $results = $this->_periodService->loadGroupedSchoolPeriods($school_id);
        return $results['periodGroupedByStartTime'];
    }




    /**
     * @Comment fetch all resources
     */
    public function all() {
        // retrieve involved model
        $schools = school::oldest()->get();
        $sub_events = sub_event::all();

        foreach ($schools as $school) {
            # code...
            # fetch school lastEvent in date
            //$school->LastEvent = $school->lastEvent();

            $lastEvent_id = $school->LastEvent != null ? $school->LastEvent->event_id : NUll;

            $school->periods = $this->loadSchoolPeriods($school->school_id);
            $school->ValidPeriod = $this->checkIfPeriodisInAccordWithProvidedClassDuration($school);
            $school->sub_events = $sub_events;

            // $registrations = null;
            if ( $school->school_type == 'UNIVERSITY') {

                $registrations = registration_channel::query();
                #
                # fetch remaining seat to each class
                foreach ($school->classes as $classe) {
                $school_registration_class = $registrations;

                    $school_registration_class->where('event_id', $lastEvent_id)->where('channel_id', $classe->class_id);
                    $classe->current_seat = $school_registration_class->count();
                }

            } else {
                $registrations = registration_class::query();
                #
                # fetch remaining seat to each class
                foreach ($school->classes as $classe) {
                $school_registration_class = $registrations;

                    $school_registration_class->where('event_id', $lastEvent_id)->where('class_id', $classe->class_id);
                    $classe->current_seat = $school_registration_class->count();
                }
            }

                
            //}
            
        }

        return response()->json($schools);
    }

    public function createClassroomsForThatModel($school, $school_id){
        $classrooms = [];
        for ($i=1; $i < 6 ; $i++) { 
            $classrooms[] =  [
                'classroom_id'      =>   'clr'.$this->generate_Id(classroom::class),
                'classroom_name'    =>   'Classroom #'.$i,
                'school_id'     =>   $school_id,
                'seat'    =>   25,
                'building_id'   =>  (building::inRandomOrder()->first())->building_id
            ];
        }
        classroom::insert($classrooms);
        return $classrooms;
    }

    public function createClassForThatModel($school, $school_id){
        $classes = [];
        for ($i=1; $i < 6 ; $i++) { 
            $classes[] =  [
                'class_id'      =>   'cls'.$this->generate_Id(classe::class),
                'class_name'    =>   'Class #'.$i,
                'school_id'     =>   $school_id,
                'class_size'    =>   25
            ];
        }
        classe::insert($classes);
        return $classes;
    }

    public function createBuildingsForThatModel($school, $school_id){
        $buildings = [];
        for ($i=1; $i < 6 ; $i++) {
        $rang = $i+1; 
            $buildings[] =  [
                'building_id'   =>   'bui'.$this->generate_Id(building::class),
                'building_name' =>   'building #'.$i,
                'school_id'     =>   $school_id
            ];
        }
        building::insert($buildings);
        return $buildings;
    }



   


    /**
    *   @Comment Verifier si les heures de recre prévues sont en accord avec la durée des classes
    *   @param school_start_time, 
    *   @param each school break start_time
    *   @param school class_duration 
    *
    */
    function checkIfPeriodisInAccordWithProvidedClassDuration(School $model): int{
        # on verifie que (break_start_time - school_start_time)/ school_class_duration soit un nombre entier
        # exemple, pour des cours de 60 min, debut des classes 8h, debut de la pause 12h10
        # on a [(12h10*60) - (8*60)]/ 60 = (730 - 480)/60 = 250/60 = 4.16
        # dans ce cas return false;

        # Repeat the process for each Break
        $start_time = new Carbon($model->class_start_time);
        $break_start_time = new Carbon($model->first_break_start_time);
        $duration = $model->class_duration;
        $fisrtStep = is_int($break_start_time->diffInMinutes($start_time)/$duration);
        #   second Break Checking 
        $secondStep = $thirdStep = 1;
        if(!is_null($model->second_break_start_time)){
            $start_time = (new Carbon($model->first_break_start_time))->addMinutes($model->first_break_duration);
            $break_start_time = new Carbon($model->second_break_start_time);
            $secondStep = is_int($break_start_time->diffInMinutes($start_time)/$duration);
        }
        #   second Break Checking
        if(!is_null($model->third_break_start_time)){
            $start_time = (new Carbon($model->second_break_start_time))->addMinutes($model->second_break_duration);
            $break_start_time = new Carbon($model->third_break_start_time);
            $thirdStep = is_int($break_start_time->diffInMinutes($start_time)/$duration);
        }

        return $fisrtStep && $secondStep && $thirdStep;
    }


    /**
     * @Comment store a new school into database
     */
    public function store(Request $request){
         // set required headers
         // $this->setHeaderMethod('POST');
         // json object reflect that user send
         // convert entries data into array
         $formDataToCheck = json_decode(file_get_contents("php://input"), TRUE);
         $formData = json_decode(file_get_contents("php://input"));

            if(is_null($formDataToCheck)){
                $formDataToCheck = $request->all();
                $formData = $request;
            }
            $messages = [];
   
            $validator = Validator::make($formDataToCheck, [
                                                 'name'                  =>  'bail|required|string|max:50',
                                                 //'file'               	 =>  'string|max:100',
                                                 'description'           =>  'bail|string|required',
                                                 'school_type'           =>  'bail|string|required',
                                                 'class_start_time'      =>  'bail|date_format:H:i|required',
                                                 'class_end_time'        =>  'bail|date_format:H:i|after:class_start_time|required',
                                                 'class_duration'        =>  'bail|numeric|required',
                                                 'first_break_duration'  =>  'bail|required|numeric',
                                                 'first_break_start_time'  =>  'bail|date_format:H:i|after:class_start_time|required',
                                                 'second_break_duration' =>  'bail|nullable|numeric',
                                                 'second_break_start_time' =>  'bail|nullable|date_format:H:i|after:class_start_time',
                                                 'third_break_duration'  =>  'bail|nullable|numeric',
                                                 'third_break_start_time'  =>  'bail|nullable|date_format:H:i|after:class_start_time',
                                    
                                             ],$messages);
                                           
             
             //(withErrors) et les entrées (withInput) pour pouvoir les afficher dans le formulaire

             if ($validator->fails())
             {
               return response()->json(['errors'=>$validator->errors()->all(),'form-data'=>$formDataToCheck, 'status'=> 201]);
             }    

         $school_id = 'sch'.$this->generate_Id(school::class);
         $school = school::firstOrNew([
                     'school_id'   => $school_id,
                     'name' => $formData->name,
                     'school_type' => $formData->school_type,// 'COLLEGE','HIGH SCHOOL','UNIVERSITY'
                     'description' => $formData->description,
                     'class_start_time' => $formData->class_start_time,
                     'class_end_time' => $formData->class_end_time,
                     'class_duration' => $formData->class_duration,
                     'first_break_duration' => $formData->first_break_duration,
                     'first_break_start_time' => $formData->first_break_start_time,
                     'second_break_duration' => $formData->second_break_duration?? 0,
                     'second_break_start_time' => $formData->second_break_start_time?? NULL,
                     'third_break_duration' => $formData->third_break_duration?? 0,
                     'third_break_start_time' => $formData->third_break_start_time ?? NULL,
                 ]); 
        # Check if provided first period start time is in accord with provided school class duration
         if(!$this->checkIfPeriodisInAccordWithProvidedClassDuration($school)){
               return response()->json([
                'errors' => $validator->errors()->all(),
                'form-data'=>$formDataToCheck, 
                'status'=> 201, 
                'message'  => 'One of each provided breaktime is not in accord with the class duration !']);
         }


         $school->save();   // persisted 
         // create period automatically
         // $school->periods = $this->createPeriodsForThatModel($school, $school_id);
         $school->buildings = $this->createBuildingsForThatModel($school, $school_id);
         $school->classrooms = $this->createClassroomsForThatModel($school, $school_id);
         $school->classes = $this->createClassForThatModel($school, $school_id);
         $school->courses = $this->createSubjectsForThatModel($school, $school_id);

         // Create Building, ClassRoom and Class automatically

         return response()->json(['data' => $school, 'status' => 200]);
    }


    public function createSubjectsForThatModel($school, $school_id){
    	$subjects = ['Mathematics','Computer Sciences','Physics', 'Web Development', 'Learning JS', 'Learning Laravel'];
        $courses = [];
        for ($i=0; $i < 6 ; $i++) {
	        $rang = $i+1; 
	        $courses[] =  [
	            				'course_id'   	=> 'crs'.$this->generate_Id(course::class),
	                 			'course_name' 	=> $subjects[$i],
	                 			'course_code' 	=> 'Subject '.$rang,
	                 			'is_checked'    => 1,
	                 			'school_id'     => $school_id
	        ];
        }
        course::insert($courses);
        return $courses;
    }

    /**
     * @Comment retrieve a school by its identifer
     */
    public function find($school_id){
        
        // find school related to id and customize it
        $school = $this->customize($school_id);
        if (is_null($school))
            return response()->json(['data'=> [], 'status' => 201]);
        else
            return response()->json($school); 
            
    }

    /**
    *   @Comment customize school
    *
    */
    public function customize($param){
        $school = school::orwhere('school_id','like','%'.$param.'%')
                        ->orwhere('name','like','%'.$param.'%')
                        ->orwhere('description','like','%'.$param.'%')
                        ->first();
        $sub_events = sub_event::all();

        # code...
        # fetch school lastEvent in date
        $lastEvent_id = $school->LastEvent != null ? $school->LastEvent->event_id : NUll;

        $school->periods = $this->loadSchoolPeriods($school->school_id);
        $school->ValidPeriod = $this->checkIfPeriodisInAccordWithProvidedClassDuration($school);
        $school->sub_events = $sub_events;


        if ( $school->school_type == 'UNIVERSITY') {

            $registrations = registration_channel::query();
            #
            # fetch remaining seat to each class
            foreach ($school->classes as $classe) {
            $school_registration_class = $registrations;

                $school_registration_class->where('event_id', $lastEvent_id)->where('channel_id', $classe->class_id);
                $classe->current_seat = $school_registration_class->count();
            }

        } else {
            $registrations = registration_class::query();
            #
            # fetch remaining seat to each class
            foreach ($school->classes as $classe) {
            $school_registration_class = $registrations;

                $school_registration_class->where('event_id', $lastEvent_id)->where('class_id', $classe->class_id);
                $classe->current_seat = $school_registration_class->count();
            }
        }

        return $school;
            
    }


    /**
     * @Comment delete school
     */
    public function delete($id){
        //$this->setHeaderMethod('DELETE');
        $school = school::find($id);
        if (is_null($school))
            return response()->json(['data'=> 'no matched record', 'status' => 201]);
        else{
            $school->delete();
            return response()->json(['data'=> $school->school_id, 'status' => 200]);
        }    
    }


    public function update(Request $request, $id){
        $formDataToCheck = json_decode(file_get_contents("php://input"), TRUE);
        $formData = json_decode(file_get_contents("php://input"));

            if(is_null($formDataToCheck)){
                $formDataToCheck = $request->all();
                $formData = $request;
            }
            $messages = [];
   
            $validator = Validator::make($formDataToCheck, [
                                                 'name'                  =>  'bail|required|string|max:50',
                                                 //'file'               	 =>  'string|max:100',
                                                 'description'           =>  'bail|string|required',
                                                 'school_type'           =>  'bail|string|required',
                                                 'class_start_time'      =>  'bail|date_format:H:i|required',
                                                 'class_end_time'        =>  'bail|date_format:H:i|after:class_start_time|required',
                                                 'class_duration'        =>  'bail|numeric|required',
                                                 'first_break_duration'  =>  'bail|required|numeric',
                                                 'first_break_start_time'  =>  'bail|date_format:H:i|after:class_start_time|required',
                                                 'second_break_duration' =>  'bail|nullable|numeric',
                                                 'second_break_start_time' =>  'bail|nullable|date_format:H:i|after:class_start_time',
                                                 'third_break_duration'  =>  'bail|nullable|numeric',
                                                 'third_break_start_time'  =>  'bail|nullable|date_format:H:i|after:class_start_time',
                                    
                                             ],$messages);
                                           
             
             //(withErrors) et les entrées (withInput) pour pouvoir les afficher dans le formulaire
             if ($validator->fails())
             {
               return response()->json(['errors'=>$validator->errors()->all(),'form-data'=>$formDataToCheck, 'status'=> 201]);
             }
        $school = school::find($id);
        $school->name = $formData->name;
        $school->school_type = $formData->school_type;// 'COLLEGE','HIGH SCHOOL','UNIVERSITY'
        $school->description = $formData->description;
        $school->class_start_time = $formData->class_start_time;
        $school->class_end_time = $formData->class_end_time;
        $school->class_duration = $formData->class_duration;
        $school->first_break_duration = $formData->first_break_duration;
        $school->first_break_start_time = $formData->first_break_start_time;
        $school->second_break_duration = $formData->second_break_duration?? 0;
        $school->second_break_start_time = $formData->second_break_start_time?? NULL;
        $school->third_break_duration = $formData->third_break_duration?? 0;
        $school->third_break_start_time = $formData->third_break_start_time?? NULL;

        $school->save();
        return response()->json(['data' => $school, 'status' => 200]);
    }
    
    
}
