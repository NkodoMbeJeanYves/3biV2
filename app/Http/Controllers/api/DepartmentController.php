<?php

namespace App\Http\Controllers\api;

use App\Models\department;
use App\Models\faculty;
use App\Models\school;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\channel;
use Validator;

class DepartmentController extends Controller
{
    /**
     * @comment load school related events
     */
    public function getSchoolDepartments(string $school_id){
        $departments = department::with('channels')->where('school_id', $school_id)->latest()->get();
        return response()->json($departments);
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
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
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
                                                    'department_name'  =>  'bail|required|string|max:150',
                                                    'school_id'     =>  'bail|required|string|max:50',
                                                    'faculty_id'     =>  'bail|required|string|max:50',
                                                ],$messages);
                                            
                
                //(withErrors) et les entrées (withInput) pour pouvoir les afficher dans le formulaire
                if ($validator->fails())
                {
                return response()->json(['errors'=>$validator->errors(),'form-data'=>$formDataToCheck, 'status'=> 201]);
                }
        
        $department_id = 'dpm'.$this->generate_Id(department::class);
        
        $department = department::create([
                        'department_id'      => $department_id,
                        'department_name' => $formData->department_name,
                        'school_id'     => $formData->school_id,
                        'faculty_id'     => $formData->faculty_id
                    ]); 
        $department->fill(['department_id' => $department_id]);     
        $channels = channel::all();
        $department->channels()->attach($channels->pluck('channel_id')); 
        return response()->json(['data' => $department, 'status' => 200]);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\department  $department
     * @return \Illuminate\Http\Response
     */
    public function show(department $department)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\department  $department
     * @return \Illuminate\Http\Response
     */
    public function edit(department $department)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\department  $department
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, department $department)
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
                                                    'department_name'  =>  'bail|required|string|max:150',
                                                    'school_id'     =>  'bail|required|string|max:50',
                                                    'faculty_id'     =>  'bail|required|string|max:50',
                                                ],$messages);
                                            
                
                //(withErrors) et les entrées (withInput) pour pouvoir les afficher dans le formulaire
                if ($validator->fails())
                {
                return response()->json(['errors'=>$validator->errors(),'form-data'=>$formDataToCheck, 'status'=> 201]);
                }
        
        $department = department::updateOrCreate([
            'department_id'      => $department->department_id,
        ],
        [
            'department_name' => $formData->department_name,
            'faculty_id'     => $formData->faculty_id
        ]); 

        $department->fill(['department_id' => $department->department_id]);            
        $department->channels = $department->channels();            
        return response()->json(['data' => $department, 'status' => 200]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\department  $department
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $department = department::find($id);
        if(!is_null($department)){
            $department->delete();
            return response()->json('item deleted successfully!', 200);
        }
        return response()->json('Any matched item found', 201);
    }
}
