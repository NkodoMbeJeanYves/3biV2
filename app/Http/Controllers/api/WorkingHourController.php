<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use App\Models\working_hour_payment;
use Illuminate\Http\Request;
use Carbon\Carbon;
use Validator;
use Illuminate\Support\Facades\Input;



class WorkingHourController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $workingHours = working_hour_payment::all();

        return response()->json($workingHours);
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
                                                'working_hour_paid' => 'bail|required|numeric',
                                                'unit_price' => 'bail|required|numeric',
                                                'payment_date' => 'bail|required|date',
                                                'comment' => 'string|nullable',
                                                'user_id' => 'numeric|required',
                                                'lecturer_id' => 'string|required'
                                             ],$messages);
                                           
             
             //(withErrors) et les entrées (withInput) pour pouvoir les afficher dans le formulaire
             if ($validator->fails())
             {
               return response()->json(['errors'=>$validator->errors()->all(),'form-data'=>$formDataToCheck, 'status'=> 201]);
             }
        
        
        $newWorkingHour = working_hour_payment::firstOrNew([
                     'working_hour_paid' => $formData->working_hour_paid,
                     'unit_price'        => $formData->unit_price,
                     'payment_date'      => Carbon::parse($request->payment_date),
                     'comment'           => $formData->comment,
                     'user_id'           => $formData->user_id,
                     'lecturer_id'       => $formData->lecturer_id,
                 ]); 

        $newWorkingHour->save();   // persisted 


        return response()->json(['data' => $newWorkingHour, 'status' => 200]);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\working_hour_payment  $working_hour_payment
     * @return \Illuminate\Http\Response
     */
    public function show(working_hour_payment $working_hour_payment)
    {
        return response()->json($working_hour_payment);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\working_hour_payment  $working_hour_payment
     * @return \Illuminate\Http\Response
     */
    public function edit(working_hour_payment $working_hour_payment)
    {
        
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\working_hour_payment  $working_hour_payment
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, working_hour_payment $working_hour_payment)
    {
        $formDataToCheck = json_decode(file_get_contents("php://input"), TRUE);
        $formData = json_decode(file_get_contents("php://input"));

        if(is_null($formDataToCheck)){
            $formDataToCheck = $request->all();
            $formData = $request;
        }
        $messages = [];

        $validator = Validator::make($formDataToCheck, [
                                            'working_hour_paid' => 'bail|nullable|numeric',
                                            'unit_price' => 'bail|nullable|numeric',
                                            'payment_date' => 'bail|nullable|date',
                                            'comment' => 'string|nullable',
                                            'user_id' => 'numeric|nullable|nullable',
                                            'lecturer_id' => 'string|nullable'
                                         ],$messages);
                                       
         
         //(withErrors) et les entrées (withInput) pour pouvoir les afficher dans le formulaire
         if ($validator->fails())
         {
           return response()->json(['errors'=>$validator->errors()->all(),'form-data'=>$formDataToCheck, 'status'=> 201]);
         }

        // retrieve members that need to be updated
        $requestedUpdatedMembers = [];

        if (isset($request->working_hour_paid) && !is_null($request->working_hour_paid)) {
            $requestedUpdatedMembers['working_hour_paid'] = $request->working_hour_paid;
        }

        if (isset($request->unit_price) && !is_null($request->unit_price)) {
            $requestedUpdatedMembers['unit_price'] = $request->unit_price;
        }

        if (isset($request->payment_date) && !is_null($request->payment_date)) {
            $requestedUpdatedMembers['payment_date'] = Carbon::parse($request->payment_date);
        }

        if (isset($request->comment) && !is_null($request->comment)) {
            $requestedUpdatedMembers['comment'] = $request->comment;
        }
        
        $newWorkingHour = working_hour_payment::updateOrCreate([
                'working_hour_paid_id'   => $working_hour_payment->working_hour_paid_id
            ],
            $requestedUpdatedMembers
            /*[
                     'working_hour_paid' => $formData->working_hour_paid,
                     'unit_price'        => $formData->unit_price,
                     'payment_date'      => $formData->payment_date,
                     'comment'           => $formData->comment,
                     'user_id'           => $formData->user_id,
                     'lecturer_id'       => $formData->lecturer_id,
                 ]*/); 


        return response()->json(['data' => $newWorkingHour, 'status' => 200]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\working_hour_payment  $working_hour_payment
     * @return \Illuminate\Http\Response
     */
    public function destroy(working_hour_payment $working_hour_payment)
    {
        //
    }
}
