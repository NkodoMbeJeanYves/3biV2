<?php

namespace App\Http\Controllers\api;

use App\Models\period;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\period_class;
use App\Models\period_classroom;
use App\Models\period_course;
use App\Models\profile;
use App\Models\period_lecturer;
use App\Models\day;
use App\Models\classe;
use App\Models\event;
use App\Models\classroom;
use App\Models\scheduled_class as scheduledClass;
use App\Models\scheduled_class_period as scheduledClassPeriod;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;
use App\Services\PeriodService;

class PeriodController extends Controller
{

    private $periodService;
    // just for a particular maintenance
    public function fork(){
        $refValues = [];
        DB::transaction(function() use(&$refValues) {
            $refValues = period_course::where('deleted_at',Null)->delete();
            $all = DB::table('scheduled_class')
                        ->join('scheduled_class_periods','scheduled_class_periods.scheduled_class_id','=','scheduled_class.scheduled_class_id')
                        ->select('class_id', 'classroom_id', 'profile_id', 'course_id', 'period_id', 'scheduled_class_period_id','scheduled_class_periods.scheduled_class_id')
                        ->orderBy('scheduled_class_id')
                        ->get(); 
            foreach ($all as $key => $line) {
                period_course::updateOrCreate(
                                            [
                                                'period_id' =>  $line->period_id,
                                                'course_id' =>  $line->course_id,
                                                'scheduled_class_period'    =>  $line->scheduled_class_period_id
                                            ]
                                        );
            }
            
            $refValues = period_course::all();
        });
        return response()->json($refValues);

    }


    // initialization of PeriodService
    public function __construct() {
        $this->periodService = new PeriodService;
    }

    /**
     *  @comment load all relation | scheduled_class -- scheduled_class_periods
     */
    public function loadRelationShip(string $school_id){
        # Array of period related to current school
        $event = event::where('school_id', $school_id)->latest()->first();
        
        if(is_null($event)){
            $data = [];
            return response()->json($data); 
        }

        $periods = period::where('school_id', $school_id)
                            ->where('event_id', $event->event_id)
                            ->pluck('period_id');

        $results = DB::table('scheduled_class')
                      ->join('scheduled_class_periods','scheduled_class_periods.scheduled_class_id','=','scheduled_class.scheduled_class_id')
                      ->whereIn('scheduled_class_periods.period_id',$periods)
                      ->select('class_id', 'classroom_id', 'profile_id', 'course_id', 'period_id')
                      ->get();

        return response()->json($results);              
    }



    /**
     * @comment load periods with all relationShip related with current school
     */
    public function loadSchoolPeriodGroupedByStartTime(string $school_id) 
    {
        $results = $this->periodService->loadGroupedSchoolPeriods($school_id);
        return $results['periodGroupedByStartTime'];
    }


    /**
    *   Get class depending on provided school
    */
    public function getSchoolPeriods(string $school_id) 
    {
        // $PeriodService = new PeriodService;
        $results = $this->periodService->loadGroupedSchoolPeriods($school_id);
        $groupedPeriods = $results['periodGroupedByStartTime'];
        return response()->json($groupedPeriods);
    }


    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {   
        $scheduled_class = scheduledClass::all();
        $scheduled_class_periods = scheduledClassPeriod::all();
        foreach ($scheduled_class_periods as $key => $value) {
            # code...
            $period = $value->period_id;
            $scheduled_class = $value->scheduled_class_id;

            # create three tables pivot each time
            period_class::insert([
                'period_id' =>  $period,
                'class_id'  =>  scheduledClass::find($scheduled_class)->class_id
            ]);

            period_classroom::insert([
                'period_id'             =>  $period,
                'classroom_id'   =>  scheduledClass::find($scheduled_class)->classroom_id
            ]);

            period_lecturer::insert([
                'period_id'     =>  $period,
                'lecturer_id'   =>  scheduledClass::find($scheduled_class)->profile_id
            ]);

            period_course::insert([
                'period_id'     =>  $period,
                'course_id'   =>  scheduledClass::find($scheduled_class)->course_id
            ]);
        }

        $periods = period::all();

        return response()->json($periods);
    }


    /**
     * Store a newly created resource in storage.
     * obj = { class_id : , lecturer_id: , classroom_id: , course_id: , periods: []}
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $formDataToCheck = json_decode(file_get_contents("php://input"), TRUE);
        $formData = json_decode(file_get_contents("php://input"));
            
        if(is_null($formDataToCheck)){
            $formDataToCheck = $request->all();
            $formData = $request;
        }
        
        # retrieve school_id
        $school_id = period::find($formData->periods[0])->school_id;

        # load all periods related with current school

        $results = $this->periodService->loadGroupedSchoolPeriods($school_id);

        # loading and preparing response
        $days = day::all()->keyBy('day_id')->transform(function ($item, $key) {
            return $item->description;
          }
        );
        
        # load all classes
        $Classes = classe::where('school_id', $school_id)->get()->keyBy('class_id')->transform(function ($item, $key) {
                    return $item->class_name;
            });

        # load all classrooms
        $Classrooms = classroom::where('school_id', $school_id)->get()->keyBy('classroom_id')->transform(function ($item, $key) {
                    return $item->classroom_name;
            });

        # load all lecturers
        $Lecturers = profile::where('school_id', $school_id)->get()->keyBy('profile_id')->transform(function ($item, $key) {
                    return $item->profile_name;
            });


        #   1 - On recupere le numero des lignes concernant la classe, la salle et la matiere | scheduled_class
        $relatedPeriods = [];
        # store messages telling that class or classroom are not available during update operation
        $availabilitiesMessages = [];

        # deletion process
        if ($formData->action == 'delete'){
            $deletedNotices = $this->proceedOverDeleteAction($formData);
        } else {
            $res = $this->proceedOverUpdateAction($formData, $results['periodkeyById'], $days, $Classes, $Classrooms, $Lecturers);
            // $relatedPeriods = $res['relatedPeriods'];
            $availabilitiesMessages = $res['availabilitiesMessages'];
        }
        
        # on doit gerer le cas ou plusieurs enseignants interviennent pour la même matière

        

        $displayedErrors = [];
        

        # display errors
        if($formData->action == 'delete') {
            return response()->json(['data' => $results, 'status' => 205, 'errors' => $deletedNotices ]);
        } else {
            return response()->json([
                'data' => $results['periodGroupedByStartTime'],
                'status' => 200, 
                'errors' => [], 
                'availabilitiesMessages' => $availabilitiesMessages 
            ]);
        }
    }




    public function proceedOverUpdateAction($formData, $Periods, $Days, $Classes, $Classrooms, $Lecturers)
    {
        $availabilitiesMessages = [];
        #   les lignes existent
        foreach ($formData->periods as $period) {

            # be sure that classroom, class and lecturer are available at this time before proceed
            $checkIfClassIsAvailable = period_class::where(
                [ 
                    'period_id'   => $period,
                    'class_id'    => $formData->class_id
                ])->exists();

            $checkIfClassroomIsAvailable = period_classroom::where(
                [ 
                    'period_id'   => $period,
                    'classroom_id'    => $formData->classroom_id
                ])->exists();

            $checkIfLecturerIsAvailable = period_lecturer::where(
                [ 
                    'period_id'   => $period,
                    'lecturer_id'    => $formData->lecturer_id
                ])->exists();

            if($checkIfClassIsAvailable){
                $availabilitiesMessages[] = "Related ".$Classes[$formData->class_id]." is not available during ".$Periods[$period]->start_time." and ".$Periods[$period]->end_time." at day ".$Days[$Periods[$period]->day];
            }

            if($checkIfClassroomIsAvailable){
                $availabilitiesMessages[] = "Related ".$Classrooms[$formData->classroom_id]." is not available during ".$Periods[$period]->start_time." and ".$Periods[$period]->end_time." at day ".$Days[$Periods[$period]->day];
            }

            if($checkIfLecturerIsAvailable){
                $availabilitiesMessages[] = "Related ".$Lecturers[$formData->lecturer_id]." is not available during ".$Periods[$period]->start_time." and ".$Periods[$period]->end_time." at day ".$Days[$Periods[$period]->day];
            }
            # be sure that classroom and class are available at this time

            #  2 - Pour chaque ligne obtenu, on verifie si il y a relation avec les periodes ponctuelles et si class et salle sont libres
            #  si il y a relation, on modifie le nemuro lecturer de l'enseignant en rapport avec la ligne | scheduled_class
            #  sinon    RAS
            
            if (!$checkIfClassIsAvailable && !$checkIfClassroomIsAvailable && !$checkIfLecturerIsAvailable){
                //foreach ($scheduled_class_ids as $scheduled_class_object) {
                    # code...
                    # create new link 
                    # on crée la nouvelle ligne ou on met à jour
                   /* $check = scheduledClass::where([
                                            'class_id'      =>  $formData->class_id,
                                            'profile_id'    =>  $formData->lecturer_id,
                                            'classroom_id'  =>  $formData->classroom_id,
                                            'course_id'     =>  $formData->course_id
                                        ])->exists();
   
*/
                    
                    # Transaction begins
                    DB::transaction(function () use($formData, $period){
                        $theNewOne = scheduledClass::updateOrCreate(
                                        [
                                            'class_id'      =>  $formData->class_id,
                                            'profile_id'    =>  $formData->lecturer_id,
                                            'classroom_id'  =>  $formData->classroom_id,
                                            'course_id'     =>  $formData->course_id 
                                        ]
                                    ); 

                        $check = scheduledClassPeriod::where([
                                            'scheduled_class_id'      =>  $theNewOne->scheduled_class_id,
                                            'period_id'               =>  $period,
                                        ])->exists();
                        // We need to store id in period_course
                        $scheduledClassPeriod = null;

                        if (!$check){
                            $scheduledClassPeriod = scheduledClassPeriod::updateOrCreate(
                                [
                                    'scheduled_class_id'      =>  $theNewOne->scheduled_class_id,
                                    'period_id'               =>  $period,
                                ]);
                        }
                        
                        #  update period_lecturers relationShip
                        #  $model = period_lecturer::where('period_id', $period)->where('lecturer_id', $scheduled_class_object->profile_id)->first();

                        # Transaction Begins here
                        period_lecturer::updateOrCreate(
                            [
                                'period_id'      =>  $period,
                                'lecturer_id'    =>  $formData->lecturer_id
                            ],
                            [
                                'lecturer_id'    =>  $formData->lecturer_id,
                                'period_id'      =>  $period
                            ]);


                        # store new period_class record
                        period_class::updateOrCreate(
                            [
                                'period_id'      =>  $period,
                                'class_id'       =>  $formData->class_id
                            ]);
                        
                        
                        # store new period_classroom record
                        period_classroom::updateOrCreate(
                            [
                                'period_id'      =>  $period,
                                'classroom_id'   =>  $formData->classroom_id
                            ]);
                        
                    
                        period_course::updateOrCreate(
                                                        [
                                                            'period_id'      =>  $period,
                                                            'course_id'      =>  $formData->course_id,
                                                            'scheduled_class_period' => $scheduledClassPeriod->scheduled_class_period_id
                                                        ]);
                    });

            }

        }

        $res = [
            'availabilitiesMessages'  =>  $availabilitiesMessages
        ];
        return $res; 

    }



    public function proceedOverDeleteAction($formData){

        $scheduled_class_object = scheduledClass::where('class_id', $formData->class_id)
                                            ->where('classroom_id', $formData->classroom_id)
                                            ->where('course_id', $formData->course_id)
                                            ->where('profile_id', $formData->lecturer_id)
                                            ->first();
        $messageToLettingKnowThatEveryThingGoneWell = ['No need to delete!'];

        if(!is_null($scheduled_class_object)){
            # Transaction begins here
            DB::transaction(function () use($formData, $scheduled_class_object){
                # relationShip first
                period_lecturer::whereIn('period_id', $formData->periods)
                               ->where('lecturer_id', $formData->lecturer_id)
                               ->delete();  
                period_classroom::whereIn('period_id', $formData->periods)
                                ->where('classroom_id', $formData->classroom_id)
                                ->delete(); 
                period_class::whereIn('period_id', $formData->periods)
                             ->where('class_id', $formData->class_id)
                             ->delete(); 

                # store scheduled_class_period_id
                $Involvedkeys = scheduledClassPeriod::where('scheduled_class_id', $scheduled_class_object->scheduled_class_id)
                                               ->whereIn('period_id', $formData->periods)
                                               ->pluck('scheduled_class_period_id');               

                period_course::whereIn('period_id', $formData->periods)
                             ->where('course_id', $formData->course_id)
                             ->whereIn('scheduled_class_period', $Involvedkeys)
                             ->delete();             
                

                scheduledClassPeriod::whereIn('scheduled_class_period_id', $Involvedkeys)->delete();
                
                //$scheduled_class_object->delete();
            });

                
            $messageToLettingKnowThatEveryThingGoneWell = [count($formData->periods).' items deleted successfully! '];
        } else {

            try{
                DB::transaction(function() use($formData, &$messageToLettingKnowThatEveryThingGoneWell) {
                    // Delete all tracks, it is possible that we have some remaining trace.
                    # relationShip first
                    period_lecturer::whereIn('period_id', $formData->periods)
                                   ->where('lecturer_id', $formData->lecturer_id)
                                   ->delete();  
                    period_classroom::whereIn('period_id', $formData->periods)
                                    ->where('classroom_id', $formData->classroom_id)
                                    ->delete(); 
                    period_class::whereIn('period_id', $formData->periods)
                                 ->where('class_id', $formData->class_id)
                                 ->delete();

                $messageToLettingKnowThatEveryThingGoneWell = ['All informations were deleted!'];              
                });
            }catch(exception $e){
                $messageToLettingKnowThatEveryThingGoneWell = [$e];    
            }
        }

        return $messageToLettingKnowThatEveryThingGoneWell;
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\period  $period
     * @return \Illuminate\Http\Response
     */
    public function show(period $period)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\period  $period
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, period $period)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\period  $period
     * @return \Illuminate\Http\Response
     */
    public function destroy(period $period)
    {
        //
    }
}
