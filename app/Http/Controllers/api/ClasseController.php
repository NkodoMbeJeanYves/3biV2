<?php

namespace App\Http\Controllers\api;

use App\Models\classe;
use App\Models\building;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Validator;
use Illuminate\Support\Facades\DB;

class ClasseController extends Controller
{


    /**
    *   Get class depending on provided school
    */
    public function getSchoolClass(string $school_id){

        $classes = classe::where('school_id', $school_id)->get();
        return response()->json($classes);
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $classes = classe::all();
        return response()->json($classes);
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
                                                 'class_name'       =>  'bail|required|string|max:50',
                                                 'class_size'       =>  'bail|required|numeric',
                                                 'admission_amount' =>  'bail|required|numeric',
                                                 'is_checked'       =>  'boolean|max:1',
                                             ],$messages);
                                           
             
             //(withErrors) et les entrées (withInput) pour pouvoir les afficher dans le formulaire
             if ($validator->fails())
             {
               return response()->json(['errors'=>$validator->errors()->all(),'form-data'=>$formDataToCheck, 'status'=> 201]);
             }
        
        $class_id = 'cls'.$this->generate_Id(classe::class);
        
        $classe = classe::firstOrNew([
                     'class_id'   => $class_id,
                     'class_name' => $formData->class_name,
                     'class_size' => $formData->class_size,
                     'admission_amount' => $formData->admission_amount,
                     'is_checked'    => 1,
                     'school_id'     => $formData->school_id
                 ]); 
        $classe->save();   // persisted 
        return response()->json(['data' => $classe, 'status' => 200]);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\classe  $classe
     * @return \Illuminate\Http\Response
     */
    public function show(classe $classe)
    {
        return response()->json($classe);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\classe  $classe
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, classe $classe)
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
                                                 'class_name'  =>  'bail|required|string|max:50',
                                                 'class_size'  =>  'bail|required|numeric',
                                                 'admission_amount' =>  'bail|required|numeric',
                                                 'is_checked'     =>  'boolean|max:1',
                                             ],$messages);
                                           
             
             //(withErrors) et les entrées (withInput) pour pouvoir les afficher dans le formulaire
             if ($validator->fails())
             {
               return response()->json(['errors'=>$validator->errors()->all(),'form-data'=>$formDataToCheck, 'status'=> 201]);
             }
        $classe->class_name = $formData->class_name;
        $classe->class_size = $formData->class_size;
        $classe->admission_amount = $formData->admission_amount;
        $classe->is_checked = !$classe->is_checked;
        
        $classe->save();
        return response()->json(['data' => $classe, 'status' => 200]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\classe  $classe
     * @return \Illuminate\Http\Response
     */
    public function destroy(classe $classe)
    {
        //
    }
}
