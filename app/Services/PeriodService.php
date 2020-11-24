<?php

namespace App\Services;

use App\Models\event;
use App\Models\school;
use App\Models\day;
use App\Models\period;
use App\Models\teaching;
use App\Models\sub_event;
use App\Models\event_sub_event;
use Validator;
use stdClass;
use Carbon\Carbon;
use Illuminate\Support\Facades\DB;

class PeriodService {


    public function __construct()
    {
        
    }


    /**
    *@comment determiner le nombre de periodes elementaires entre l'heure de debut 
    * et l'heure de fin des cours de l'ecole du model.
    */
    function findMultiplicateur(School $model){
/*      $start_time = \Carbon\Carbon::createFromFormat('hh:mm:ss',$model->class_start_time);
        $end_time = \Carbon\Carbon::createFromFormat('hh:mm:ss',$model->class_end_time);*/
        $start_time = new Carbon($model->class_start_time);
        $end_time = new Carbon($model->class_end_time);
        $duration = $model->class_duration;
        $delay = $start_time->diffInMinutes($end_time);
        $multi =  intdiv($delay, $duration);
        return $multi;
    }

    /**
    * @Comment Create period related to last event
    */
    public function createPeriodsForThatModel(School $school, string $school_id, string $event_id) {
		$days = day::all();
        $periods = [];

        $multi = $this->findMultiplicateur($school) + 1; 

           // elaboration des periodes
           // days loop
           for ($index = 0; $index  < count($days) ; $index++) { 
            # code...
            $ref_end_time = null;
                for ($i=1; $i <= $multi ; $i++) { 
                    # code...
                    $period_start_time_in_minutes = ($school->class_duration)*($i-1);
                    $period_end_time_in_minutes = ($school->class_duration)*$i;
                    $period_start_time = $ref_end_time ?? (new Carbon($school->class_start_time))->addMinutes($period_start_time_in_minutes);
                    $period_end_time = $ref_end_time ? (new Carbon($ref_end_time))->addMinutes($school->class_duration): (new Carbon($school->class_start_time))->addMinutes($period_end_time_in_minutes);

                    $flag = false;
                    # check if $period_end_time equal to any break start time then create that break period
                    if ($period_start_time->eq(new Carbon($school->first_break_start_time))) {
                        $flag = true;
                        $periods[]  =   [
                            'period_id' =>  'per'.$this->generate_Id(period::class),
                            'day'       =>  $days[$index]->day_id,
                            'start_time'=>  new Carbon($school->first_break_start_time),
                            'end_time'  =>  (new Carbon($school->first_break_start_time))->addMinutes($school->first_break_duration),
                            'period_type'=> 'break',
                            'event_id'  =>  $event_id,
                            'school_id'  => $school_id
                        ];  
                        $ref_end_time = (new Carbon($school->first_break_start_time))->addMinutes($school->first_break_duration);
                    }

                    if ($school->second_break_duration){
                        if ($period_start_time->eq(new Carbon($school->second_break_start_time))) {
                            $flag = true;
                            $periods[]  =   [
                                'period_id' =>  'per'.$this->generate_Id(period::class),
                                'day'       =>  $days[$index]->day_id,
                                'start_time'=>  new Carbon($school->second_break_start_time),
                                'end_time'  =>  (new Carbon($school->second_break_start_time))->addMinutes($school->second_break_duration),
                                'period_type'=> 'break',
                                'event_id'  =>  $event_id,
                                'school_id'  => $school_id
                            ];  
                            $ref_end_time = (new Carbon($school->second_break_start_time))->addMinutes($school->second_break_duration);
                        }
                    }
                    
                    if ($school->third_break_duration){
                        if ($period_start_time->eq(new Carbon($school->third_break_start_time))) {
                            $flag = true;
                            $periods[]  =   [
                                'period_id' =>  'per'.$this->generate_Id(period::class),
                                'day'       =>  $days[$index]->day_id,
                                'start_time'=>  new Carbon($school->third_break_start_time),
                                'end_time'  =>  (new Carbon($school->third_break_start_time))->addMinutes($school->third_break_duration),
                                'period_type'=> 'break',
                                'event_id'  =>  $event_id,
                                'school_id'  => $school_id
                            ];  
                            $ref_end_time = (new Carbon($school->third_break_start_time))->addMinutes($school->third_break_duration);
                        }
                    }
                    
                    if (!$flag){
                        $periods[]  =   [
                            'period_id' =>  'per'.$this->generate_Id(period::class),
                            'day'       =>  $days[$index]->day_id,
                            'start_time'=>  $period_start_time,
                            'end_time'  =>  $period_end_time,
                            'period_type'=> 'class',
                            'event_id'  =>  $event_id,
                            'school_id'  => $school_id
                        ]; 
                        $ref_end_time = $period_end_time;
                    }
                        
                    

                     
                }
            }
        

        period::insert($periods);   // persisted
        return $periods;
    }




    /**
     * @Comment retrieve grouped school period 
     *
     * @comment load periods with all relationShip related with current school
     */
    public function loadGroupedSchoolPeriods(string $school_id) {
        $event = event::where('school_id', $school_id)->latest()->first();
        
        if (is_null($event)) {
            $data = [
                        'periodGroupedByStartTime'   =>  [],
                        'periodkeyById' =>  []
                    ];

            return response()->json($data); 
        }

        $results = [];

        $periods = period::with(
            [
                'lecturers',
                'courses',
                'classrooms',
                'classes'  
            ]
        )->where('school_id', $school_id)
            ->where('event_id', $event->event_id)
            ->orderBy('period_type')
            ->orderBy('start_time')
            ->orderBy('day')
            ->get();

        $start_times = period::where('school_id', $school_id)
            ->distinct()
            ->get('start_time');
        
        $r = []; $a =[];
        foreach ($start_times as $key => $value) {
            
            foreach ($periods as $key => $period) {
                
                if ($period->start_time === $value->start_time) {
                    $r[$period->start_time][]  =   $period;
                }
            }

            $a[$value->start_time] = collect($r[$value->start_time]);
        }
        ksort($a);
        # array keyBy  
        $res = $periods->keyBy('period_id')
        ->transform(function ($item, $key) {
                return $item;
            }
        );

        $results = array_values($a);
            $results = [
                'periodGroupedByStartTime'   =>  $results,
                'periodkeyById' =>  $res
            ];
        return $results;
    }



    /**
     *  @comment retrieve dalay of period regarding teaching_id Extra tme
     */
    function getPeriodDelayByTeachingIdExtraTime(Array $teaching_ids, $school_id): Array {

        $results = DB::table('extra_times')->whereIn('teaching_id', $teaching_ids)
                                                ->join('periods','extra_times.period_id','periods.period_id')
                                                ->join('scheduled_class_periods','scheduled_class_periods.period_id','periods.period_id')
                                                ->join('scheduled_class','scheduled_class_periods.scheduled_class_id','scheduled_class.scheduled_class_id')
                                                ->join('courses','courses.course_id','scheduled_class.course_id')
                                                ->where('periods.school_id', $school_id)
                                                ->select('periods.*','teaching_id', 'course_name as subject')
                                                ->orderBy('teaching_id', 'DESC')
                                                ->orderBy('periods.start_time', 'DESC')
                                                ->get();

        $curDay = $this->extractDayFromTeaching($teaching_ids);                                                                           
        $params = []; 
        foreach ($teaching_ids as $key => $teaching_id) {
            $aux = new stdClass;            
            $aux->start_time = '23:59:59';
            $aux->end_time = '00:00:00';                        
            $aux->teaching_id = $teaching_id;
            $flag = false;
            // 
            foreach ($results as $key => $line) {
                if ($line->teaching_id == $teaching_id) {
                    $aux->start_time = ($aux->start_time > $line->start_time) ? $line->start_time : $aux->start_time ;  
                    $aux->end_time = ($aux->end_time < $line->end_time) ? $line->end_time : $aux->end_time;
                    $flag = true;
                }
            }
            if ($flag == true) {
                $aux->subject = $line->subject;
                $aux->curDay = $curDay[$teaching_id];
                $params[$teaching_id] = $aux;
            }
        }                                    
        return $params;       
    }


    /**
     *  @Comment extract teaching day form classdate
     */
    public function extractDayFromTeaching(Array $teachings): Array {
        
        $formattedDates = teaching::whereIn('teaching_id', $teachings)->get()->map(function($item) {
            $carbon = new Carbon($item->class_date);
            return $carbon->isoFormat('dddd D MMM YY'); //saturday 21 Nov 20
        });
        
        return $array_combine = array_combine(array_values($teachings), $formattedDates->toArray());
        // return $formattedDates->toArray();
    }


    /**
     *  @comment retrieve dalay of period regarding teaching_id normal time
     */
    function getPeriodDelayByTeachingIdNormalTime(Array $teaching_ids, $school_id): Array {
        $results = DB::table('normal_times')->whereIn('teaching_id', $teaching_ids)
                                            ->join('scheduled_class_periods','scheduled_class_periods.scheduled_class_period_id','normal_times.scheduled_class_period_id')
                                            ->join('scheduled_class','scheduled_class_periods.scheduled_class_id','scheduled_class.scheduled_class_id')
                                            ->join('courses','courses.course_id','scheduled_class.course_id')
                                            ->join('periods','periods.period_id','scheduled_class_periods.period_id')
                                            ->where('periods.school_id', $school_id)
                                            ->select('periods.*','teaching_id', 'course_name as subject')
                                            ->orderBy('teaching_id', 'DESC')
                                            ->orderBy('periods.start_time', 'DESC')
                                            ->get();

        $curDay = $this->extractDayFromTeaching($teaching_ids);

        $params = [];
        foreach ($teaching_ids as $key => $teaching_id) {
            $aux = new stdClass;            
            $aux->start_time = '23:59:59';
            $aux->end_time = '00:00:00';                        
            $aux->teaching_id = $teaching_id;
            

            $flag = false;

            foreach ($results as $k => $line) {
                if ($line->teaching_id == $teaching_id) {
                    $aux->start_time = ($aux->start_time > $line->start_time) ? $line->start_time : $aux->start_time ;  
                    $aux->end_time = ($aux->end_time < $line->end_time) ? $line->end_time : $aux->end_time;
                    $flag = true;
                }

            }
            if ($flag == true) {
                $aux->subject = $line->subject;
                $aux->curDay = $curDay[$teaching_id];
                $params[$teaching_id] = $aux;
            }
        }    
        return $params;       
    }
}