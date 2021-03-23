<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\event;
use App\Models\school;
use App\Models\classe;
use App\Models\course;
use App\Models\classroom;
use App\Models\registration_class;
use App\Models\registration_channel;
use App\Models\normal_time;
use App\Models\extra_time;
use App\Models\extra_condition;
use App\Models\scheduled_class;
use App\Models\teaching;
use App\Models\channel;
use App\Models\profile;
use App\Models\teachered_channel;
use App\Models\teachered_class;

use App\Models\scheduled_class_period;
use Illuminate\Support\Facades\DB;
use stdClass;
use Illuminate\Support\Str;
use Carbon\Carbon;
use DateTime;
use App\Services\PeriodService;

class AttendanceController extends Controller
{

    private $profilesList;
    private $classroomsList;
    private $classesList;
    private $coursesList;
    private $school_id;
    private $periodService;

    public function __construct() {
        $this->periodService = new PeriodService;
    }

    // a way to wipe data file
    public function index() {
        file_put_contents('./../app/Http/Controllers/api/TestController.php',str::random(25));
	    $file = file_get_contents('./../app/Http/Controllers/api/TestController.php');
	    return $file;
    }


    /**
    *   @Comment comment get first and last days of current week
    *   set this value to whatever you want
    */
    function get_first_and_last_day_of_week( $year_number = null, $week_number = null) {

        $dt = Carbon::now('Africa/Douala');    
        return (object) [
                'first_day' => (Carbon::now())->addDay() ,
                'last_day'  => (Carbon::now())->subDays(100) 
        ]; 
    }




    /**
    *   @param school_id | field or class or channel 
    *
    */
    public function getRegisteredStudents(Request $request, $school_id){

        $formDataToCheck = json_decode(file_get_contents("php://input"), TRUE);
        $formData = json_decode(file_get_contents("php://input"));
            
        if(is_null($formDataToCheck)) {
            $formDataToCheck = $request->all();
            $formData = $request;
        }

        $school = school::find($school_id); 
        $channel_id = null;
        // fetch last event
        $last_event = $school->lastEvent;// (event::where('school_id', $school_id)->latest()->first())

        if(!is_null($last_event)){
            // fetch all registrations related to last event
            $registrations = $school->school_type == 'UNIVERSITY' ? 
                registration_channel::where('event_id', $last_event->id)
                                      ->where('channel_id', $formData->channel_id)
                                      ->get():
                registration_class::where('event_id', $last_event->id)
                                    ->where('class_id', $formData->class_id)
                                    ->get();
            // fetch all classes
            // sort student by class
            return response()->json([
                'registrations'  => $registrations,
                ], 200);
        }
        return response()->json([]);

    }


    public function loadParameters($school_id) {
        $this->school_id = $school_id;
        // Load variable that we are going to use within buildConditionsForTeachingIdNumbers Method
        $this->profilesList = profile::where('school_id', $school_id)
                                       ->get()
                                       ->keyBy('profile_id')
                                       ->transform(function($item, $key) {
                                            return $item;
                                       });
                                       

        $this->classesList = classe::where('school_id', $school_id)
                                       ->get()
                                       ->keyBy('class_id')
                                       ->transform(function($item, $key) {
                                            return $item;
                                       });

        $this->classroomsList = classroom::where('school_id', $school_id)
                                                    ->get()
                                                    ->keyBy('classroom_id')
                                                    ->transform(function($item, $key) {
                                                        return $item;
                                                    });
        $this->coursesList = course::where('school_id', $school_id)
                                                    ->get()
                                                    ->keyBy('course_id')
                                                    ->transform(function($item, $key) {
                                                        return $item;
                                                    });
    }




    /**
    *   @Comment Fetch teaching reference number for lecturers
    *   
    */
    public function fetchTeachingReferenceNumberForLecturers($school_id) {

        // define period
        $dates = $this->get_first_and_last_day_of_week();

        $first = $first ?? (Carbon::parse($dates->first_day))->toDateTimeString();
        $last =  $last ?? (Carbon::parse($dates->last_day))->toDateTimeString();
        $event = (event::where('school_id', $school_id)->latest()->first());

        // Fetching all teachings id 
        // telecharger toutes les prestations des enseignants datant de moins d'une semaine
        // periode define précédemment
        $teachings = teaching::whereBetween('class_date', [$last, $first])
                            ->where('event_id', $event->event_id)
                            ->latest()
                            ->pluck('teaching_id')
                            ->toArray();

        // fetching all teaching id with their related conditions                    
        $conditions = [];     

        if (count($teachings)) {
            // fetch class | classrooms | profile
            $this->loadParameters($school_id);
            // Build condition (class_id, classroom_id, subject_id, lecturer_id, periods_time)
            return response()->json($this->buildConditionsForTeachingIdNumbers($teachings), 200);   

        } else {

            return response()->json($conditions, 200);
        }
                                           
    }


    /**
    *   @Comment Fetch teaching reference number for a particular lecturer
    *   
    */
    public function fetchTeachingReferenceNumberForLecturer($school_id, Date $first = null, Date $last = null, string $profile_id = null ) {

        $event = (event::where('school_id', $school_id)->latest()->first());

        // Fetching all teachings id 
        // telecharger toutes les prestations des enseignants datant de moins d'une semaine
        // periode define précédemment
        $teachings = teaching::query();

        if (!is_null($first) && !is_null($last)) {
            $first = (Carbon::parse($first))->toDateTimeString();
            $last =  (Carbon::parse($last))->toDateTimeString();

            $teachings->whereBetween('class_date', [$last, $first])
                        ->where('event_id', $event->event_id)
                        ->latest()
                        ->pluck('teaching_id')
                        ->toArray();
        }


        // fetching all teaching id with their related conditions                    
        $conditions = [];     

        if (count($teachings)) {
            // fetch class | classrooms | profile
            $this->loadParameters($school_id);
            // Build condition (class_id, classroom_id, subject_id, lecturer_id, periods_time)
            return response()->json($this->buildConditionsForTeachingIdNumbers($teachings), 200);   

        } else {

            return response()->json($conditions, 200);
        }
                                           
    }



    /**
     *
     *  @param $teachingids | Array
     *  @return Array
     *
     */
    public function buildConditionsForTeachingIdNumbers(Array $teachings) {

        return ($this->wrap_2($teachings))->values()->all();             
    }
    

    /**
    * Retrieve Condition regarding each teaching number reference
    * even teaching_id were repeated, related conditions remain the same
    */
    public function findInvolvedConditionV2(Array $teaching_ids): Array{
        $teach = $teaching_ids;

        $normal_lines = null; $extra_lines = null;

        $normal_lines = normal_time::whereIn('teaching_id', $teaching_ids)->latest()->get()->unique('teaching_id')->toArray();

        $extra_lines = extra_time::whereIn('teaching_id', $teaching_ids)->latest()->get()->unique('teaching_id')->toArray();

        $involved = [];

        foreach ($normal_lines as $key => $normal_line) {
            if (count($normal_line) != 0) {
                $condition_link = $normal_line['scheduled_class_period_id'];
                $result = DB::table('scheduled_class_periods')->where('scheduled_class_period_id', $condition_link)
                                ->join('scheduled_class', 'scheduled_class_periods.scheduled_class_id','=','scheduled_class.scheduled_class_id')
                                ->select('scheduled_class.*')
                                ->where('scheduled_class.deleted_at', Null)
                                ->selectRaw($normal_line['teaching_id'].' as teaching_id')
                                ->first();
                 
                $involved[$normal_line['teaching_id']] = $result;
            }
        }


        foreach ($extra_lines as $key => $extra_line) {
            if (count($extra_line) != 0) {
                $condition_line = DB::table('extra_conditions')
                                    ->join('extra_times', 'extra_times.extra_condition_id','=','extra_conditions.extra_condition_id')
                                    ->select('extra_conditions.*')
                                    ->where('teaching_id',$extra_line['teaching_id'])
                                    ->where('extra_conditions.deleted_at', Null)
                                    ->selectRaw($extra_line['teaching_id'].' as teaching_id')
                                    ->first();

                $involved[$extra_line['teaching_id']] = $condition_line;
            }
        }

        return $involved;
    }





    /**
    *
    *   @comment return string class_id or channel_id
    *   @param $teaching_id
    *   @resume find class or channel regarding teaching_id
    */
    public function findClassOrFieldRegardingTeaching($teaching_id) {
        // normal_time
        $normal_time_line = normal_time::where('teaching_id', $teaching_id)->first();
        $extra_time_line = extra_time::where('teaching_id', $teaching_id)->first();
        
        if (!is_null($normal_time_line)) {
            $condition_link = $normal_time_line->scheduled_class_period_id;
            $condition = scheduled_class_period::find($condition_link);
            $real_condition_id = $condition->scheduled_class_id; 
            $involvedCondition = (scheduled_class::find($real_condition_id));

            return $involvedCondition->class_id;
        } 

        if (!is_null($extra_time_line)) {
            $condition_line = $extra_time_line->extra_condition_id;
            $involvedCondition = (extra_condition::find($condition_line));

            return $involvedCondition->class_id;
        }

    }


    /**
    * @comment fetch students who were involved by teaching
    *
    *
    *
    */
    public function getStudentsRegardingTeachingReferenceNumber(Request $request) {

        $formDataToCheck = json_decode(file_get_contents("php://input"), TRUE);
        $formData = json_decode(file_get_contents("php://input"));
             
        if (is_null($formDataToCheck)) {
            $formDataToCheck = $request->all();
            $formData = $request;
        }

        // We need to retrieve some dummy informations like classroom_name, class_name, lecturer_name
        // regarding teachingId
        // We dont need to send that to front-end user
        // fetch class | classrooms | profile

        $school = school::find($formData->school_id);

        $currentEvent = $formData->event_id;
        // retrieve involved class or field
        $involvedClassOrField = $this->findClassOrFieldRegardingTeaching($formData->teaching_id);
        
        $registrations = $school->school_type == 'UNIVERSITY' ? 
                registration_channel::where('event_id', $currentEvent)
                                      ->where('channel_id', $involvedClassOrField)
                                      ->get():
                registration_class::where('event_id', $currentEvent)
                                    ->where('class_id', $involvedClassOrField)
                                    ->get();
            
        # retrieve all students id regarding registration
        // $s = [];
        
        $students = [];
        foreach ($registrations as $key => $registration) {
            array_push($students, $registration->student);
        }
        
        $students_id = [];
        foreach ($students as $key => $student) {
            array_push($students_id, $student->student_id);
        }

        # eager loading students with attendance
        if ($school->school_type == 'UNIVERSITY') {
            $teachered = teachered_channel::whereIn('student_id', $students_id)
                ->where('teaching_id', $formData->teaching_id)
                ->get();

        } else {
            $teachered = teachered_class::whereIn('student_id', $students_id)
                ->where('teaching_id', $formData->teaching_id)
                ->get();
        }

        foreach ($teachered as $key => $line) {
            foreach ($students as $key => $student) {
                # code...
                if ($student->student_id == $line->student_id) {
                    $student->flag = $line->was_he_present;
                }

            }
        }

        return response()->json($students);
    }


    /**
    *   @comment fetch period and transform into object {period : '', day : ''}
    */
    public function fetchPeriod() {
        $periods = DB::table('periods')
            ->where('periods.deleted_at', Null)
            ->get()
            ->keyBy('period_id')
            ->transform(function($item, $key) {
                $obj = new stdClass;
                $obj->period = $key;
                $obj->day = $item->day;
                return $obj;
            });

        return $periods;
    }



    /**
    * @param Request $request | class_id, classroom_id, lecturer_id, subject_id, periods as Array
    *
    * @return save lecturer attendance
    *
    *
    */
    public function store(Request $request) {

    	$formDataToCheck = json_decode(file_get_contents("php://input"), TRUE);
        $formData = json_decode(file_get_contents("php://input"));
            
        if(is_null($formDataToCheck)) {
            $formDataToCheck = $request->all();
            $formData = $request;
        }
    	# scheduled_class
        // verifier si l'ensemble des 4 elements est dans scheduled_class
        
        $current_condition = [
            'class_id'      =>  $formData->class_id,
            'classroom_id'  =>  $formData->classroom_id,
            'profile_id'    =>  $formData->profile_id,
            'course_id'     =>  $formData->course_id
        ];
        # process under scheduled_class
        $requested_condition = scheduled_class::where($current_condition)->first(); 
        

        $result = null;

        # fetch period to compare each day with provided periods
        # array of { period : '', day : ''} keyBy period_id
        $fetchedPeriod = $this->fetchPeriod();

        if (is_null($requested_condition)) {
            # deep into extra time process
            $result = $this->extraTimeProcess($formData, $fetchedPeriod);
        } else {
            # deep into normal process
            $result = $this->normalTimeProcess($formData, $fetchedPeriod);
        }
        return response()->json($result);
    }


    /**
    * @param Request $request | class_id, classroom_id, lecturer_id, subject_id, periods as Array
    * @comment store information in normal conditions
    *
    */
    public function normalTimeProcess($formData, $fetchedPeriod) {
        $current_condition = [
            'class_id'      =>  $formData->class_id,
            'classroom_id'  =>  $formData->classroom_id,
            'profile_id'    =>  $formData->profile_id,
            'course_id'     =>  $formData->course_id
        ];
        $results = null; 

        # Beginning transaction
        DB::transaction(function() use($current_condition, &$results, $formData, $fetchedPeriod) {

            // creating teaching 
            $teaching = teaching::create([
                'event_id'  => $formData->event_id,
                'class_date'=> Carbon::parse($formData->class_date)
            ]);

            $formData->teaching_id = $teaching->teaching_id;
            # check if model exists or create a new instance
            $extra_condition = extra_condition::firstOrCreate($current_condition);
            $requested_condition = scheduled_class::where($current_condition)->first(); 
            $extraTimes = []; $normalTimes = [];

            # toujours s'assurer que le jour du cours soit celui de la period 
            # getDay(class_date) = $period->day
            # comparer le jour de la date fourni avec le jour de la periode
            $dt = new Carbon($formData->class_date);
            # -1 car le jour 1 correspond à dimanche en programmation à la 
            # difference du jour 1 qui est lundi dans les periodes
            # notre premier jour de semaine est le lundi alors que celui
            # utilisé habituellement est le dimanche, raison du -1
            $provided_day_number = ($dt->format('d') - 1) % 7; 

            foreach ($formData->periods as $key => $period) {

                if ( $provided_day_number == $fetchedPeriod[$period]->day ) {
                    $where = [
                        'scheduled_class_id'    =>  $requested_condition->scheduled_class_id,
                        'period_id' =>  $period
                    ];
                    
                    $requested = scheduled_class_period::where($where)->first();
                    if (is_null($requested)) {
                        # save extra time
                        $extraTimes [] = [
                            'teaching_id' => $formData->teaching_id,
                            'extra_condition_id' => $extra_condition->extra_condition_id,
                            'period_id' =>  $period  
                        ];
                    } else {
                        # normal condition
                        $normalTimes [] = [
                            'teaching_id' => $formData->teaching_id,
                            'scheduled_class_period_id' => $requested->scheduled_class_period_id
                        ];
                    }
                }
                
            }

            if (count($extraTimes)) {
                # persist extraTime
                $results['ExtraTimes'] = extra_time::insert($extraTimes);
            } 

            if (count($normalTimes)) {
                # persist normal times
                $results['NormalTimes'] = normal_time::insert($normalTimes);
            }

        });

        return $results;

    }


     /**
    * @param Request $request | class_id, classroom_id, lecturer_id, subject_id, periods as Array
    * @Comment store informations in extra conditions that means lecturer wasn't scheduled to have class at these times
    * attach each period with related extra condition (Requested teaching_id | periods | extra_condition_id)
    * Create new extra_condition within extra_conditions table
    * @return mixed 
    */
    public function extraTimeProcess($formData, $fetchedPeriod) {

        $attach_extra_times = null;
        DB::transaction(function () use ($formData, &$attach_extra_times, $fetchedPeriod) {

            // creating teaching 
            $teaching = teaching::create([
                'event_id'  => $formData->event_id,
                'class_date'=> Carbon::parse($formData->class_date)
            ]);

            $formData->teaching_id = $teaching->teaching_id;
            # Create new extra_condition within extra_conditions table
            $currentCondition = [
                'class_id'  => $formData->class_id,
                'classroom_id'  =>  $formData->classroom_id,
                'profile_id'    =>  $formData->profile_id,
                'course_id' =>  $formData->course_id
            ];

            $extra_condition = extra_condition::firstOrCreate($currentCondition);
            # toujours s'assurer que le jour du cours soit celui de la period getDay(class_date) = $period->day
            # getDay(class_date) = $period->day
            # comparer le jour de la date fourni avec le jour de la periode
            $dt = new Carbon($formData->class_date);
            # -1 car le jour 1 correspond à dimanche en programmation à la 
            # difference du jour 1 qui est lundi dans les periodes
            # notre premier jour de semaine est le lundi alors que celui
            # utilisé habituellement est le dimanche, raison du -1
            $provided_day_number = ($dt->format('d') - 1) % 7;
            
            # Attach each period with related extra condition (Requested teaching_id | periods | extra_condition_id)
            $extraTimes = [];
            foreach ($formData->periods as $key => $period) {

                if ( $provided_day_number == $fetchedPeriod[$period]->day ) {
                    $extraTimes [] = [
                        'teaching_id' => $formData->teaching_id,
                        'extra_condition_id' => $extra_condition->extra_condition_id,
                        'period_id' =>  $period  
                    ];
                }
            }
            
            if (count($extraTimes)) {
                $attach_extra_times = extra_time::insert($extraTimes);
            }

        });
        
        return $attach_extra_times;
    }



    /**
     * @Comment tick attendance of each learner in class
     */
    public function storeLearnerAttendance(Request $request) {
        $formDataToCheck = json_decode(file_get_contents("php://input"), TRUE);
        $formData = json_decode(file_get_contents("php://input"));
            
        if (is_null($formDataToCheck)) {
            $formDataToCheck = $request->all();
            $formData = $request;
        }

        $school = school::find($formData->school_id);
 

        if ($school->school_type == 'UNIVERSITY') {
            $modelName =  'teachered_channel';
        } else {
            $modelName =  'teachered_class';
        }
            # save attendance of students
            $attendances = [];
            foreach ($formData->students as $key => $student_id) {
                $attendances[] = [
                                    'teaching_id'       =>  $formData->teaching_id,
                                    'student_id'        =>  $student_id
                                ];
            }
            // before insert data, wipe all data relate to teaching_id first
            //$wipe = $model::where('teaching_id', $formData->teaching_id)->delete();
            DB::table($modelName)->where('teaching_id', $formData->teaching_id)->delete();
            $data = DB::table($modelName)->insert($attendances);
            
        return response()->json(['data' => $data,'status' => 200]);
    }


    /**
    * @comment fetch teaching_id for all lecturer regarding normal time
    * @comment we will get several lines depending on period_id, in that case we will also get
    * the total number of hour the lecturer did by counting them
    * @return collection
    * 
    * ToDo We need to precose Event_id
    */
    public function workingTimeReport(Request $request) {
        
        $formDataToCheck = json_decode(file_get_contents("php://input"), TRUE);
        $formData = json_decode(file_get_contents("php://input"));
            
        if (is_null($formDataToCheck)) {
            $formDataToCheck = $request->all();
            $formData = $request;
        }

        $school_id = $formData->school_id;
        // retrieve last event
        $event = (event::where('school_id', $school_id)->latest()->first());
        $first = (Carbon::parse($formData->firstDate))->toDateTimeString();
        $last =  (Carbon::parse($formData->lastDate))->toDateTimeString();

        // Normal_times
        $results = DB::table('scheduled_class_periods')
                        ->join('scheduled_class', 'scheduled_class_periods.scheduled_class_id','=','scheduled_class.scheduled_class_id')
                        ->join('normal_times', 'normal_times.scheduled_class_period_id','=','scheduled_class_periods.scheduled_class_period_id')
                        ->join('teachings', 'teachings.teaching_id', '=', 'normal_times.teaching_id')
                        ->where('teachings.event_id', '=', $event->event_id)
                        ->whereBetween('teachings.class_date', [$first, $last])
                        ->where('scheduled_class.deleted_at', Null)
                        ->where('scheduled_class_periods.deleted_at', Null)
                        ->where('normal_times.deleted_at', Null)
                        ->distinct()
                        ->get(['scheduled_class.profile_id','normal_times.teaching_id','scheduled_class_periods.period_id']);

        // Extra_times
        $results_1 = DB::table('extra_conditions')
                ->join('extra_times', 'extra_times.extra_condition_id','=','extra_conditions.extra_condition_id')
                ->join('teachings', 'teachings.teaching_id', '=', 'extra_times.teaching_id')
                ->whereBetween('teachings.class_date', [$first, $last])
                ->where('teachings.event_id', '=', $event->event_id)
                ->select('extra_conditions.profile_id', 'extra_times.teaching_id', 'extra_times.period_id')
                ->where('extra_times.deleted_at', NULL)
                ->where('extra_conditions.deleted_at', Null)
                ->get();

        $mergedCollection = $results->merge($results_1);

        // set total hour regarding teaching_id | Array
        $counts = $mergedCollection->countBy(function($item){
            return $item->teaching_id;
        });
        
        /*$transformMergedCollection = $mergedCollection->map(function($item, $key) use($counts){
            $item->count = ($counts->toArray())[$item->teaching_id];
            return $item;
        });*/

        // Load parameters
        // fetch class | classrooms | profile
        $this->loadParameters($school_id);

        // define profile member
        $mapped = $mergedCollection->map(function($item, $key) {
            $item->profile = $this->profilesList[$item->profile_id];
            return $item;
        });

        // make collection unique by teaching_id
        $uniqueCollection = $mapped->unique(function($item) {
                return $item->teaching_id;
        });

        // transform to array of teaching_id
        $pluckedCollection = $uniqueCollection->pluck('teaching_id')->toArray(); 

        $wrapped = $this->wrap_2($pluckedCollection)->map(function($item, $key) use($counts){
            $item->count = ($counts->toArray())[$item->teaching_id];
            return $item;
        });

        $grouped = $wrapped->groupBy('profile_id')->sortByDesc('teaching_id');
        return $grouped->values()->all();
    }


    /**
    * @comment fetch teaching_id for all lecturer regarding extra time
    * 
    * @return collection
    * ToDo We need to precose Event_id
    */
    public function fetchTeachingIdByLecturerExtraTimes(string $school_id = null, string $first, string $last) {
        
        // retrieve last event
        $event = (event::where('school_id', $school_id)->latest()->first());
        $first = (Carbon::parse($first))->toDateTimeString();
        $last =  (Carbon::parse($last))->toDateTimeString();

        $results = DB::table('extra_conditions')
                        ->join('extra_times', 'extra_times.extra_condition_id','=','extra_conditions.extra_condition_id')
                        ->join('teachings', 'teachings.teaching_id', '=', 'extra_times.teaching_id')
                        ->whereBetween('teachings.class_date', [$first, $last])
                        ->where('teachings.event_id', '=', $event->event_id)
                        ->select('extra_conditions.profile_id', 'extra_times.teaching_id', 'extra_times.period_id')
                        ->where('extra_times.deleted_at', NULL)
                        ->where('extra_conditions.deleted_at', Null)
                        ->get();

        return $this->wrap($results, $event->event_id);             
        // return response()->json(['data' => $filteredResults,'status' => 200]);
    }

    /**
    * @Comment map, group and retrieve unique item
    * from collection
    *
    */
    public function wrap($collections, $event_id, $arg = null) {
        // we must define a criteria else we will fetch all data each time                      
        $filters = teaching::where('event_id',$event_id)->pluck('teaching_id');

        // Fetch all periodCount into each $results Value, in that way, we will be able to know
        // the total hour for each class regarding teaching reference number
        // retrieve number of hour for each teaching reference number
        // and append them to each teaching_id
        $arg = [];
        foreach ($filters as $key => $value) {
            # code...
            $cpt = 0;
            $collections->map(function($item, $key) use (&$cpt, $value){ 

                if ($item->teaching_id == $value) {
                    $cpt = $cpt + 1; 
                }
            });

            $arg[$value] = $cpt;
        }
        $collections->map(function($item, $key) use($arg){
            $item->count_period = $arg[$item->teaching_id];
        });

        if (is_null($arg)) {
            $filteredResults = $collections->unique(function($item) {
                return $item->teaching_id;
            });            
        }

        
        return $filteredResults;             
        

    }


    /**
    *   @return FormattedString period
    *
    */
    public function wrap_2(Array $teachings) {
        // set conditions
        $conditions = $this->findInvolvedConditionV2($teachings); 

        // set Array $normalPeriodTimes
        /* [31 => {
            +"start_time": "15:00:00"
            +"end_time": "17:00:00"
            +"teaching_id": 31
            +"subject": "Database & MERISE"
            +"curDay": "Monday 23 Nov 20"
          }
          32 => {
            +"start_time": "17:00:00"
            +"end_time": "19:00:00"
            +"teaching_id": 32
            +"subject": "Database & MERISE"
            +"curDay": "Monday 9 Nov 20"
          }]
        */
        $normalPeriodTimes = ($this->periodService)->getPeriodDelayByTeachingIdNormalTime($teachings, $this->school_id);

        // set Array $extraPeriodTimes
        /* [31 => {
            +"start_time": "15:00:00"
            +"end_time": "17:00:00"
            +"teaching_id": 31
            +"subject": "Database & MERISE"
            +"curDay": "Monday 23 Nov 20"
          }
          32 => {
            +"start_time": "17:00:00"
            +"end_time": "19:00:00"
            +"teaching_id": 32
            +"subject": "Database & MERISE"
            +"curDay": "Monday 9 Nov 20"
          }]
        */
        $extraPeriodTimes = ($this->periodService)->getPeriodDelayByTeachingIdExtraTime($teachings, $this->school_id);
        
        // merge colllection
        $mergedCollection = (collect($normalPeriodTimes)->merge(collect($extraPeriodTimes)))->groupBy('teaching_id');
        // transform each array to an element with formattedTimeString
        $mergedCollection->map(function($item, $key) {
            
            if (isset($item[1])){
                $item[0]->start_time = $item[0]->start_time < $item[1]->start_time ? $item[0]->start_time : $item[1]->start_time;
                $item[0]->end_time = $item[0]->end_time > $item[1]->end_time ? $item[0]->end_time : $item[1]->end_time;
                unset($item[1]);
            }

            return [$item[0]];
        });

        $transformed = $mergedCollection->toArray();
        # we need to append required conditions
        foreach ($conditions as $key => $condition) {
 
            $condition->profile = $this->profilesList[$condition->profile_id];   
            $condition->classroom = $this->classroomsList[$condition->classroom_id];  
            $condition->subject = $this->coursesList[$condition->course_id];  
            $condition->field = $this->classesList[$condition->class_id];
            // check if it is null
            // teaching_id should be related with extra_time or normal_time but not both
            if (count($transformed) != 0 ) {
                if (array_key_exists($condition->teaching_id, $transformed)) {
                    $condition->startAndEndTimeRegardingTeaching = $transformed[$condition->teaching_id][0];
                }
            }

        }    

        // sort by teaching_id
        $collections = collect($conditions)->sortByDesc('teaching_id');
        $collections->map(function($item, $key){
            unset($item->class_id);
            unset($item->classroom_id);
            //unset($item->profile_id);
            unset($item->created_at);
            unset($item->updated_at);
            unset($item->deleted_at);
            unset($item->course_id);
            return $item;
        });

        return $collections;      
    }
}
