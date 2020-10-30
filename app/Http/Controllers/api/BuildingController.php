<?php

namespace App\Http\Controllers\api;

use App\Models\building;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Validator;
use Illuminate\Support\Facades\DB;


class BuildingController extends Controller
{

    /**
    *   Get buildings depending on provided school
    */
    public function getSchoolBuildings(string $school_id){

        $buildings = building::where('school_id', $school_id)
        ->orderBy('building_name','ASC')
        ->get();
        return response()->json($buildings);
    }



    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $buildings = building::all();
        return response()->json($buildings);
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
                                                 'building_name'  =>  'bail|required|string|max:50',
                                                 'is_checked'     =>  'boolean|max:1',
                                             ],$messages);
                                           
             
             //(withErrors) et les entrées (withInput) pour pouvoir les afficher dans le formulaire
             if ($validator->fails())
             {
               return response()->json(['errors'=>$validator->errors(),'form-data'=>$formDataToCheck, 'status'=> 201]);
             }
        
        $building_id = 'bui'.$this->generate_Id(building::class);
        
        $building = building::firstOrNew([
                     'building_id'   => $building_id,
                     'building_name' => $formData->building_name,
                     'is_checked'    => 1,
                     'school_id'     => $formData->school_id
                 ]); 
        $building->save();   // persisted 
        return response()->json(['data' => $building, 'status' => 200]);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\building  $building
     * @return \Illuminate\Http\Response
     */
    public function show(building $building)
    {
        return response()->json($building);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\building  $building
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, building $building)
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
                                                 'building_name'  =>  'bail|required|string|max:50',
                                                 'is_checked'     =>  'boolean|max:1',
                                             ],$messages);
                                           
             
             //(withErrors) et les entrées (withInput) pour pouvoir les afficher dans le formulaire
             if ($validator->fails())
             {
               return response()->json(['errors'=>$validator->errors(),'form-data'=>$formDataToCheck, 'status'=> 201]);
             }
        $building->building_name = $formData->building_name;
        $building->is_checked = !$building->is_checked;
        
        $building->save();
        return response()->json(['data' => $building, 'status' => 200]);
        
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\building  $building
     * @return \Illuminate\Http\Response
     */
    public function destroy(building $building)
    {
        //
    }
}
