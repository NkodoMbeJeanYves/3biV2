<?php

namespace App\Http\Controllers\api;

use App\Models\student;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\registration;
use App\Models\registration_class;
use App\Models\classe;
use App\Models\registration_channel;
use App\Models\role;
use App\User;
use Carbon\Carbon;
use DateTime;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\DB;
use Validator;

class StudentController extends Controller
{
    /**
    *   @param $event_id    event identifier
    *   @param $class_id    class identifier
    */
    public function howManySeatdoesitRemainInClass($event_id, $class_id ){
        # check remaining seat within class
        $curclass = classe::find($class_id);
        $current_seat = registration_class::where('event_id', $event_id)
                                             ->where('class_id', $class_id)
                                             ->count();
        $remaining_place = $curclass->class_size - $current_seat;
        return $remaining_place;
    }


    /**
    *   Get class depending on provided school
    */
    public function getSchoolStudents(string $school_id){
        $students = student::where('current_school_id', $school_id)->get();
        return response()->json($students);
    }


    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        // dd(Carbon::parse('14-02-1983')->year);
        // dd((Carbon::parse('14-02-1983'))->format('l jS \\of F Y h:i:s A')); //=> Monday 14th of February 1983 12:00:00 AM
        $students = student::query();

        // Sort results by Sex
        if($request->has('sex')){
            $students->where('sex', $request->sex);
        }

        // Sort results by School_id
        if($request->has('current')){
            $students->where('current_school_id', $request->current);
        }

        return response()->json($students->get());
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
     *  @param $formData    Posted Data
     *  @param $student (filled student model)
     *  @param $data custom data related to student password and other
     *  @param $model class_id | channel_id
     *
     **/
    public function enroll($formData, $student, $data, $model = null){

        $registration = new registration();
        # passage par reférence car on veut extraire le contenu de $registration à la sortie
        DB::transaction(function () use ($formData, $student, $data, &$registration){
            $student->fill([
                // save student and retrieve its id
                'user_id' => $this->getStudentUserId($data),
            ]);   
            $student_id = $student->student_id;

            $student->save();
 

            switch (!isset($formData->class_id)) {
                case true:
                    # code...
                    # use registration_channel
                    $registration = registration_channel::updateOrCreate(
                        [
                            'event_id'      => $formData->event_id,
                            'channel_id'    => $formData->channel_id,
                            'student_id'    => $student_id,
                        ],
                        [
                            'event_id'      => $formData->event_id,
                            'channel_id'    => $formData->channel_id,
                            'dateline'      => Carbon::parse($formData->dateline),
                            'student_id'    => $student_id,
                        ]);  
                    break;
                
                default:
                    # code...
                    # use registration_class
                    $registration = registration_class::updateOrCreate(
                        [
                            'class_id'      => $formData->class_id,
                            'event_id'      => $formData->event_id,
                            'student_id'    => $student_id,
                        ],
                        [
                            'event_id'      => $formData->event_id,
                            'class_id'      => $formData->class_id,
                            'dateline'      => Carbon::parse($formData->dateline),
                            'student_id'    => $student_id,
                        ]);
                    break;
            }

        });

        return $registration;
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
                                                'fullname'  =>  'bail|required|string|max:150',
                                                'dateofbirth'  =>  'bail|required|date|nullable',
                                                'placeofbirth'  => 'string|nullable|max:200',
                                                'sex' =>  'string|required|max:10',
                                                'telephone'    =>  'string|required|max:50',
                                                'email'    =>  'string|unique:students|max:100',
                                                'mobilephone'    =>  'string|max:50',
                                                'tutormobilephone_1'    =>  'string|nullable|max:50',
                                                'tutormobilephone_2'    =>  'string|nullable|max:50',
                                                'first_registered_school_id'    =>  'bail|required|string|max:50',
                                                'current_school_id'    =>  'nullable|string|max:50',
                                            ],$messages);
                                        
            // return response()->json($formData);
            //(withErrors) et les entrées (withInput) pour pouvoir les afficher dans le formulaire
            if ($validator->fails())
            {
                return response()->json(['errors'=>$validator->errors()->all(),'form-data'=>$formDataToCheck, 'status'=> 201]);
            }

        # check if there are remaining seat within the class
        # only check remaining seat at college or high school but not at university        
        if(isset($formData->registration->class_id)){
            if ($this->howManySeatdoesitRemainInClass($formData->registration->event_id, $formData->registration->class_id) == 0 ){
                return response()->json(['errors'=> 'There is no more place in this class', 'status'=> 201]);
            }
        }
            
        
        $student_id = 'stu'.$this->generate_Id(student::class);
        
        $student = student::firstOrNew([
                        'student_id'    =>  $student_id,
                        'fullname'  =>  strtoupper($formData->fullname),
                        'dateofbirth'  =>  Carbon::parse($formData->dateofbirth),
                        'placeofbirth'  => $formData->placeofbirth,
                        'sex' =>  $formData->sex,
                        'telephone'    =>  $formData->telephone ,
                        'email'      =>  $formData->email,
                        'mobilephone'    =>  $formData->mobilephone ?? NULL,
                        'tutormobilephone_1'    =>  $formData->tutormobilephone_1 ?? NULL,
                        'tutormobilephone_2'    =>  $formData->tutormobilephone_2 ?? NULL,
                        'first_registered_school_id'    =>  $formData->first_registered_school_id,
                        'current_school_id'    =>  $formData->current_school_id 
                    ]); 
        # Before save instance we need to set serial value | user_id 
        
        $data = [
            'fullname'      =>  $formData->fullname,
            'dateofbirth'   =>  Carbon::parse($formData->dateofbirth),
            'sex' =>  $formData->sex,
            'first_registered_school_id'    =>  $formData->first_registered_school_id,
            'password'=> "000000" // default password
        ];
        $serial = $this->getSerial($data);
        $student->fill([
            'serial'     => $serial
        ]);
        $data['serial'] = $serial;
        

        // after student went persisted, create its registration
        # We need event_id, Class or Channel_id, dateline and student_id
        # define model member to access registration
        // $model = (isset($formData->registration->class_id)) ? 'class_id' : 'channel_id';    
        $registration = $this->enroll($formData->registration, $student, $data);
        return response()->json(['data' => $registration, 'status' => 200]);
    }

    /**
     * @comment store a new user related to student instance
     * @return user_id key
     */
    public function getStudentUserId(Array $data = []): string{
        $role_id = role::where('content', 'student')->first()->id;
        $user = User::create([
                'name' => $data['fullname'],
                'email' => $data['serial']."@3bii.com",
                'password' => Hash::make($data['password']),
                'school_id' =>  $data['first_registered_school_id'],
                'role_id'   =>  $role_id 
            ]);
        return $user->id;
    }

    /**
     * @comment set serial value of student instance
     * @return string length = 10 | 20ABCDEFGH
     */
    public function getSerial(Array $data): string{
        $serial = '';
        $year = substr($data['dateofbirth']->year, 0, 2);
        $sexSymbol = $data['sex'] == 'Male' ? 'A' : 'B';
        while(1){
            $random = $this->generateRandomString(7);
            $serial = "{$year}{$sexSymbol}{$random}";
            if(is_null(student::where('serial', $serial)->first())){
                return $serial;
            }
        }
    }


    /**
    *
    *@param $length length of generated password
    *
    */
    public function generateRandomString($length = 5){
        $characters = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_';
        $charactersLength = strlen($characters);
        $randomString = '';
        for ($i = 0; $i < $length; $i++) {
            $randomString .= $characters[rand(0, $charactersLength - 1)];
        }
        return $randomString;
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\student  $student
     * @return \Illuminate\Http\Response
     */
    public function show(student $student)
    {
        return response()->json($student, 200);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\student  $student
     * @return \Illuminate\Http\Response
     */
    public function edit(student $student)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\student  $student
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, student $student)
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
                                                    'fullname'              =>  'bail|required|string|max:150',
                                                    'dateofbirth'           =>  'bail|required|date|nullable',
                                                    'placeofbirth'          => 'string|nullable|max:200',
                                                    'sex'                   =>  'string|required|max:10',
                                                    'telephone'             =>  'string|required|max:50',
                                                    'mobilephone'           =>  'string|max:50',
                                                    'tutormobilephone_1'    =>  'string|nullable|max:50',
                                                    'tutormobilephone_2'    =>  'string|nullable|max:50',
                                                    'current_school_id'     =>  'nullable|string|max:50',
                                                ],$messages);
                                            
                
                //(withErrors) et les entrées (withInput) pour pouvoir les afficher dans le formulaire
                if ($validator->fails())
                {
                    return response()->json(['errors'=>$validator->errors()->all(),'form-data'=>$formDataToCheck, 'status'=> 201]);
                }
            
            $student = student::updateOrCreate([
                            'student_id'    =>  $student->student_id
            ],
            [
                'fullname'             =>  strtoupper($formData->fullname),
                'dateofbirth'          =>  Carbon::parse($formData->dateofbirth),
                'placeofbirth'         =>  $formData->placeofbirth,
                'sex'                  =>  $formData->sex,
                'telephone'            =>  $formData->telephone,
                'mobilephone'          =>  $formData->mobilephone,
                'tutormobilephone_1'   =>  $formData->tutormobilephone_1,
                'tutormobilephone_2'   =>  $formData->tutormobilephone_2,
            ]);     
            
            return response()->json(['data' => $student, 'status' => 200]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\student  $student
     * @return \Illuminate\Http\Response
     */
    public function destroy(student $student)
    {
        return response()->json(['data'=> 'Not yet implemented!', 'status' => 200]);
        
        $student->delete();
        return response()->json(['data'=> $student->student_id, 'status' => 200]);
    }
}
