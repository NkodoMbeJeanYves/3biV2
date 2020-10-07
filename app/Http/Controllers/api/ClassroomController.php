<?php

namespace App\Http\Controllers\api;

use App\Models\classroom;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Validator;
use Illuminate\Support\Facades\DB;

class ClassroomController extends Controller
{

    /**
    *   Get class depending on provided school
    */
    public function getSchoolClassrooms(string $school_id){

        $classrooms = classroom::where('school_id', $school_id)->get();
        return response()->json($classrooms);
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $classrooms = classroom::all();
        return response()->json($classrooms);
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
                                                 'classroom_name'  =>  'bail|required|string|max:50',
                                                 'seat'  =>  'bail|required|numeric',
                                                 'is_checked'     =>  'boolean|max:1',
                                             ],$messages);
                                           
             
             //(withErrors) et les entrées (withInput) pour pouvoir les afficher dans le formulaire
             if ($validator->fails())
             {
               return response()->json(['errors'=>$validator->errors()->all(),'form-data'=>$formDataToCheck, 'status'=> 201]);
             }
        
        $classroom_id = 'clr'.$this->generate_Id(classroom::class);
        
        $classroom = classroom::firstOrNew([
                     'classroom_id'   => $classroom_id,
                     'classroom_name' => $formData->classroom_name,
                     'seat' => $formData->seat,
                     'is_checked'    => 1,
                     'school_id'     => $formData->school_id,
                     'building_id'   => $formData->building_id
                 ]); 
        $classroom->save();   // persisted 
        return response()->json(['data' => $classroom, 'status' => 200]);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\classroom  $classroom
     * @return \Illuminate\Http\Response
     */
    public function show(classroom $classroom)
    {
        return response()->json($classroom);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\classroom  $classroom
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, classroom $classroom)
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
                                                 'classroom_name'  =>  'bail|required|string|max:50',
                                                 'seat'  =>  'bail|required|numeric',
                                                 'is_checked'     =>  'boolean|max:1',
                                             ],$messages);
                                           
             
             //(withErrors) et les entrées (withInput) pour pouvoir les afficher dans le formulaire
             if ($validator->fails())
             {
               return response()->json(['errors'=>$validator->errors()->all(),'form-data'=>$formDataToCheck, 'status'=> 201]);
             }
        $classroom->classroom_name = $formData->classroom_name;
        $classroom->seat = $formData->seat;
        $classroom->is_checked = !$classroom->is_checked;
        $classroom->building_id = $formData->building_id;
        
        $classroom->save();
        return response()->json(['data' => $classroom, 'status' => 200]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\classroom  $classroom
     * @return \Illuminate\Http\Response
     */
    public function destroy(classroom $classroom)
    {
        //
    }
}
