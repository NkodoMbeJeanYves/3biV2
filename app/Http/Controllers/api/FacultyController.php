<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use App\Models\school;
use App\Models\period;
use App\Models\building;
use App\Models\classe;
use App\Models\classroom;
use App\Models\day;
use App\Models\course;
use App\Models\faculty;
use Illuminate\Http\Request;
use Validator;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\URL;
use Carbon\Carbon;

class FacultyController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $faculties = faculty::all();
        return response()->json($faculties);
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

        $formDataToCheck = json_decode(file_get_contents("php://input"), TRUE);
        $formData = json_decode(file_get_contents("php://input"));
        
        if(is_null($formDataToCheck)){
            $formDataToCheck = $request->all();
            $formData = $request;
        }
        $messages = [];

        $validator = Validator::make($formDataToCheck, [
                                                'faculty_name'  =>  'bail|required|string|max:100',
                                            ],$messages);
                                            
        if ($validator->fails())
        {
        return response()->json(['errors'=>$validator->errors(),'form-data'=>$formDataToCheck, 'status'=> 201]);
        }
        
        $faculty_id = 'fac'.$this->generate_Id(faculty::class);
        
        $faculty = faculty::create([
                        'faculty_id'      => $faculty_id,
                        'faculty_name' => $formData->faculty_name
                    ]); 
        $faculty->fill(['faculty_id' => $faculty_id]);                     
        return response()->json(['data' => $faculty, 'status' => 200]);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, faculty $faculty)
    {
        $formDataToCheck = json_decode(file_get_contents("php://input"), TRUE);
            $formData = json_decode(file_get_contents("php://input"));
        
            if(is_null($formDataToCheck)){
                $formDataToCheck = $request->all();
                $formData = $request;
            }
            $messages = [];
    
            $validator = Validator::make($formDataToCheck, [
                                                    'faculty_name'  =>  'bail|required|string|max:100',
                                                ],$messages);
                                            
                
                //(withErrors) et les entrées (withInput) pour pouvoir les afficher dans le formulaire
                if ($validator->fails())
                {
                return response()->json(['errors'=>$validator->errors(),'form-data'=>$formDataToCheck, 'status'=> 201]);
                }
        
            $faculty = faculty::updateOrCreate(
                [
                    'faculty_id'      => $faculty->faculty_id
                ],
                [
                    'faculty_id'      => $faculty->faculty_id,
                    'faculty_name' => $formData->faculty_name
                ]
            );

        return response()->json(['data' => $faculty, 'status' => 200]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $faculty = faculty::find($id);
        if(!is_null($faculty)){
            $faculty->delete();
            return response()->json('item deleted successfully!');
        }
        return response()->json('Any matched item found');
    }
}
