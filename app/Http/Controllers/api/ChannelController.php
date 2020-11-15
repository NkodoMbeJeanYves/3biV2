<?php

namespace App\Http\Controllers\api;

use App\Models\channel;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Validator;

class ChannelController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $channels = channel::all();
        return response()->json($channels);
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
                                                    'channel_content'  =>  'bail|required|string|max:150',
                                                    'admission_amount'     =>  'numeric',
                                                ],$messages);
                                            
                
                //(withErrors) et les entrées (withInput) pour pouvoir les afficher dans le formulaire
                if ($validator->fails())
                {
                return response()->json(['errors'=>$validator->errors(),'form-data'=>$formDataToCheck, 'status'=> 201]);
                }
        
        $channel_id = 'chn'.$this->generate_Id(channel::class);
        
        $channel = channel::create([
                        'channel_id'    =>  $channel_id,
                        'channel_content'      => $formData->channel_content,
                        'admission_amount' => $formData->admission_amount ?? 0,
                        'school_id' => null
                    ]); 
        $channel->fill(['channel_id' => $channel_id]);            
                    
        return response()->json(['data' => $channel, 'status' => 200]);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\channel  $channel
     * @return \Illuminate\Http\Response
     */
    public function show(channel $channel)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\channel  $channel
     * @return \Illuminate\Http\Response
     */
    public function edit(channel $channel)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\channel  $channel
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, channel $channel)
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
                                                    'channel_content'  =>  'bail|required|string|max:150',
                                                    'admission_amount'     =>  'numeric',
                                                ],$messages);
                                            
                
                //(withErrors) et les entrées (withInput) pour pouvoir les afficher dans le formulaire
                if ($validator->fails())
                {
                return response()->json(['errors'=>$validator->errors(),'form-data'=>$formDataToCheck, 'status'=> 201]);
                }
        
        $channel = channel::updateOrCreate(
        [
            'channel_id'    =>  $channel->channel_id
        ],
        [
            'channel_content'      => $formData->channel_content,
            'admission_amount' => $formData->admission_amount ?? 0,
        ]); 

        $channel->fill(['channel_id' => $channel->channel_id]);            
                    
        return response()->json(['data' => $channel, 'status' => 200]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\channel  $channel
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $channel = channel::find($id);
        if(!is_null($channel)){
            $channel->delete();
            return response()->json('item deleted successfully!', 200);
        }
        return response()->json('Any matched item found', 201);
    }
}
