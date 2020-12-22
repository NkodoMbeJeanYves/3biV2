<?php

namespace App\Http\Controllers\api;

use App\Models\course;
use App\Models\factor;
use App\Models\school;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Validator;

class CourseController extends Controller
{

    /**
    *   Get class depending on provided school
    */
    public function getSchoolCourses(string $school_id){

        $courses = course::where('school_id', $school_id)
        ->orderBy('course_name','ASC')
        ->get();
        return response()->json($courses);
    }


    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $courses = course::all();
        return response()->json($courses);

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // update is_checked and class_name and class_size fields

        $formDataToCheck = json_decode(file_get_contents("php://input"), TRUE);
        $formData = json_decode(file_get_contents("php://input"));

            if(is_null($formDataToCheck)){
                $formDataToCheck = $request->all();
                $formData = $request;
            }
            $messages = [];
   
            $validator = Validator::make($formDataToCheck, [
                                                 'course_name'  =>  'bail|required|string|max:50',
                                                 'course_code'  =>  'bail|required|string|max:7',
                                                 'coef'         =>  'bail|required|numeric',
                                                 'is_checked'     =>  'boolean|max:1',
                                             ],$messages);
                                           
             
             //(withErrors) et les entrées (withInput) pour pouvoir les afficher dans le formulaire
             if ($validator->fails())
             {
               return response()->json(['errors'=>$validator->errors()->all(),'form-data'=>$formDataToCheck, 'status'=> 201]);
             }
        
        $course_id = 'crs'.$this->generate_Id(course::class);
        
        $course = course::firstOrNew([
                     'course_id'   => $course_id,
                     'course_name' => $formData->course_name,
                     'course_code' => $formData->course_code,
                     'is_checked'    => 1,
                     'school_id'     => $formData->school_id
                 ]); 
        $course->save();   // persisted 
        $course->fill([
            'course_id' => $course_id
        ]);

        // store factor
        factor::insert([
            'course_id' => $course_id,
            'event_id'  => school::find($formData->school_id)->LastEvent->event_id,
            'factor'    => $formData->coef 
        ]);

        return response()->json(['data' => $course, 'status' => 200]);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\models\Course  $course
     * @return \Illuminate\Http\Response
     */
    public function show(Course $course)
    {
        return response()->json($course);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\models\Course  $course
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Course $course)
    {
        // update is_checked and class_name and class_size field

        $formDataToCheck = json_decode(file_get_contents("php://input"), TRUE);
        $formData = json_decode(file_get_contents("php://input"));

            if(is_null($formDataToCheck)){
                $formDataToCheck = $request->all();
                $formData = $request;
            }
            $messages = [];
   
            $validator = Validator::make($formDataToCheck, [
                                                 'course_name'  =>  'bail|required|string|max:50',
                                                 'course_code'  =>  'bail|required|string|max:7',
                                                 'is_checked'     =>  'boolean|max:1',
                                             ],$messages);
                                           
             
             //(withErrors) et les entrées (withInput) pour pouvoir les afficher dans le formulaire
             if ($validator->fails())
             {
               return response()->json(['errors'=>$validator->errors()->all(),'form-data'=>$formDataToCheck, 'status'=> 201]);
             }
        $course->course_name = $formData->course_name;
        $course->course_code = $formData->course_code;
        $course->is_checked = !$course->is_checked;
        
        $course->save();
        return response()->json(['data' => $course, 'status' => 200]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\models\Course  $course
     * @return \Illuminate\Http\Response
     */
    public function destroy(Course $course)
    {
        //
    }
}
