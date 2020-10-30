<?php

namespace App\Http\Controllers\api;

use App\Models\profile;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Validator;

class ProfileController extends Controller
{

    

    /**
    *   Get class depending on provided school
    */
    public function getSchoolProfiles(string $school_id){
        $profiles = profile::where('school_id', $school_id)
        ->orderBy('profile_name','ASC')
        ->get();
        return response()->json($profiles);
    }


    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $profiles = profile::all();
        return response()->json($profiles);
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
                                                 'profile_name'  =>  'bail|required|string|max:100',
                                                 'profile_dateofbirth'  =>  'date|nullable',
                                                 'profile_placeofbirth'  => 'string|nullable|max:100',
                                                 'profile_sexe' =>  'string|required|max:10',
                                                 'profile_phone'    =>  'string|required|max:50',
                                                 'profile_phone_2'    =>  'string|nullable|max:50',
                                                 'role' =>  'numeric|required',
                                                 'is_checked'     =>  'boolean|max:1',
                                             ],$messages);
                                           
             
             //(withErrors) et les entrées (withInput) pour pouvoir les afficher dans le formulaire
             if ($validator->fails())
             {
               return response()->json(['errors'=>$validator->errors()->all(),'form-data'=>$formDataToCheck, 'status'=> 201]);
             }
        
        $profile_id = 'pfl'.$this->generate_Id(profile::class);
        
        $profile = profile::firstOrNew([
                     'profile_id'           => $profile_id,
                     'profile_name'         => $formData->profile_name,
                     'profile_dateofbirth'  => $formData->profile_dateofbirth,
                     'profile_placeofbirth' => $formData->profile_placeofbirth,
                     'profile_sexe'         => $formData->profile_sexe,
                     'profile_phone'        => $formData->profile_phone,
                     'profile_phone_2'      => $formData->profile_phone_2?? NULL,
                     'role'                 => $formData->role,
                     'is_checked'           => $formData->is_checked ?? 1,
                     'school_id'            => $formData->school_id
                 ]); 
        $profile->save();   // persisted 
        return response()->json(['data' => $profile, 'status' => 200]);
    }


    
    /**
     * Display the specified resource.
     *
     * @param  \App\Models\profile  $profile
     * @return \Illuminate\Http\Response
     */
    public function show(profile $profile)
    {
        return response()->json($profile);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\profile  $profile
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, profile $profile)
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
                                                 'profile_name'  =>  'bail|required|string|max:100',
                                                 'profile_dateofbirth'  =>  'date|nullable',
                                                 'profile_placeofbirth'  => 'string|nullable|max:100',
                                                 'profile_sexe' =>  'string|required|max:10',
                                                 'profile_phone'    =>  'string|required|max:50',
                                                 'profile_phone_2'    =>  'string|nullable|max:50',
                                                 'role' =>  'numeric|required',
                                                 'is_checked'     =>  'boolean|max:1',
                                             ],$messages);
                                           
             
             //(withErrors) et les entrées (withInput) pour pouvoir les afficher dans le formulaire
             if ($validator->fails())
             {
               return response()->json(['errors'=>$validator->errors()->all(),'form-data'=>$formDataToCheck, 'status'=> 201]);
             }
        $profile->update([
                     'profile_name'         => $formData->profile_name,
                     'profile_dateofbirth'  => $formData->profile_dateofbirth,
                     'profile_placeofbirth' => $formData->profile_placeofbirth,
                     'profile_sexe'         => $formData->profile_sexe,
                     'profile_phone'        => $formData->profile_phone,
                     'profile_phone_2'      => $formData->profile_phone_2?? NULL,
                     'role'                 => $formData->role,
                     'is_checked'           => $formData->is_checked ?? 1,
                     'school_id'            => $formData->school_id
                 ]); 
             
        
        return response()->json(['data' => $profile, 'status' => 200]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\profile  $profile
     * @return \Illuminate\Http\Response
     */
    public function destroy(profile $profile)
    {
        
        $profile->delete();
        return response()->json(['data'=> $profile->profile_id, 'status' => 200]);
    }
}
