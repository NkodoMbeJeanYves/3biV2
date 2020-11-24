<?php

namespace App\Http\Controllers\api;

use App\Models\payment;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Carbon\Carbon;
use Validator;
use Illuminate\Support\Str;

class PaymentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

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

        if (is_null($formDataToCheck)) {
            $formDataToCheck = $request->all();
            $formData = $request;
        }
        $messages = [];


   
        $validator = Validator::make(
            $formDataToCheck, 
            [
                'deposit_datetime'     =>  'bail|required|date|before:tomorrow',
                'deposit_amount'       =>  'bail|required|numeric',
                'remitter_name'        =>  'bail|string|required',
                'payment_type'         =>  'bail|required|string',
                'registration_id'      =>  'bail|required|numeric',
                'registration_type'    =>  'bail|required|string',
            ],
            $messages
        );
                                           
             
        //(withErrors) et les entrées (withInput) pour pouvoir les afficher dans le formulaire
        if ($validator->fails()) {
            return response()->json(
                [
                    'errors'=>      $validator->errors()->all(),
                    'form-data'=>   $formDataToCheck,
                    'status'=> 201
                ]
            );
        }
        
        
        $payment = payment::firstOrNew(
            [
                'deposit_datetime'     => Carbon::parse($formData->deposit_datetime),
                'deposit_amount'       => $formData->deposit_amount,
                'payment_type'         => $formData->payment_type,
                'remitter_name'        => $formData->remitter_name,
                'control_number'       => $this->generate_Uuid(
                    payment::class, 'control_number'
                ),
                'registration_id'      => $formData->registration_id,
                'registration_type'    => $formData->registration_type,
            ]
        ); 

        $payment->save();   // persisted 
        return response()->json(['data' => $payment, 'status' => 200]);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\payment  $payment
     * @return \Illuminate\Http\Response
     */
    public function show(payment $payment)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\payment  $payment
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, payment $payment)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\payment  $payment
     * @return \Illuminate\Http\Response
     */
    public function destroy(payment $payment)
    {
        //
    }
}
