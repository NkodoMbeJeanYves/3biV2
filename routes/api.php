<?php

use App\Http\Controllers\AuthController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;/*
use Dotenv;
use InvalidArgumentException;*/
use Illuminate\Database\Connection;

# Self defense
// Route::get('/wipe', 'api\TestController@index');

Route::group([

    'prefix' => 'auth'

], function ($router) {

    Route::post('login', 'AuthController@login');
    Route::post('logout', 'AuthController@logout');
    Route::post('refresh', 'AuthController@refresh');
    Route::post('me', 'AuthController@me');
    Route::post('payload', 'AuthController@payload');
    Route::post('authentic', 'AuthController@getAuthenticatedUser');

});


/*Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
    // 

    ovh pass ovh = Ahrecccomupassword2020
});*/

Route::group(['prefix'	=>	'school'], function(){
	Route::get('/','api\SchoolController@all');
	Route::post('/','api\SchoolController@store');
	Route::put('/{id}','api\SchoolController@update');
	Route::patch('/{id}','api\SchoolController@update');
	Route::get('/{id}','api\SchoolController@find');
	Route::delete('/{id}','api\SchoolController@delete');
	
	});

# Protected Routes
//Route::group(['middleware'=>'auth:api'], function(){
	# School Route
	

	# Building Route
	Route::apiResource('building','api\BuildingController');
	Route::get('building/v1/{school_id}','api\BuildingController@getSchoolBuildings');



	# Classe Route
	Route::apiResource('classe','api\ClasseController');
	Route::get('classe/v1/{school_id}','api\ClasseController@getSchoolClass');

	# Classroom Route
	Route::apiResource('classroom','api\ClassroomController');
	Route::get('classroom/v1/{school_id}','api\ClassroomController@getSchoolClassrooms');

	# Course Route
	Route::apiResource('course','api\CourseController');
	Route::get('course/v1/{school_id}','api\CourseController@getSchoolCourses');

	# Profile Route
	Route::apiResource('profile', 'api\ProfileController');
	Route::get('profile/v1/{school_id}','api\ProfileController@getSchoolProfiles');


	# Student Route
	Route::apiResource('student','api\StudentController');
	Route::get('student/v1/{school_id}','api\StudentController@getSchoolStudents');

	# Period Route
	Route::group(['prefix'	=>	'period'], function(){
		Route::get('/','api\PeriodController@index');
		Route::get('/v1/{school_id}','api\PeriodController@getSchoolPeriods');	
		Route::post('/','api\PeriodController@store');	
		Route::get('/v2/{school_id}', 'api\PeriodController@loadRelationShip');
	});

	# Event Route
	Route::apiResource('event','api\EventController');
	Route::get('event/v1/{school_id}','api\EventController@getSchoolEvents');
	Route::post('event/sync/{id}','api\EventController@attach');

	# Faculty Route
	Route::apiResource('faculty','api\FacultyController');

	# Department Route
	Route::apiResource('department','api\DepartmentController');
	Route::get('department/v1/{school_id}','api\DepartmentController@getSchoolDepartments');

	# Channel Route
	Route::apiResource('channel','api\ChannelController');

	# Registration Route
	Route::apiResource('registration','api\RegistrationController');
	Route::get('registration/v1/{school_id}','api\RegistrationController@getSchoolRegistrations');

	# Payment Route
	Route::apiResource('payment','api\PaymentController');


//});

# Main upload route
Route::post('/upload', 'Controller@fileUpload');

# Current test Route
Route::get('attendance/{school_id}', 'api\AttendanceController@getRegisteredStudents');

// store lecturer attendance
Route::post('attendance', 'api\AttendanceController@store');
// store student attendance
Route::post('attendance/students/v1', 'api\AttendanceController@storeLearnerAttendance');

// fetch teaching reference number
Route::get('attendance/fetch_school_teaching_ref_number/{school_id}','api\AttendanceController@fetchTeachingReferenceNumber');

// load student list relate to teaching id
Route::post('attendance/students','api\AttendanceController@getStudentsRegardingTeachingReferenceNumber');


/*
	Route::get('last', function(){
		$dt = Carbon\Carbon::now('Africa/Douala'); 

		$dt = new Carbon\Carbon();
		$first = $dt->addDay();
		$last = $dt->subDays(5);
	       
	        return response()->json((object) [
	                'first_day' => $first,
	                'last_day'  => $last
	        ]);
	});
*/



// Caution : Do not apply it anymore Restructure database
// Route::get('fork', 'api\PeriodController@fork');



# replicate .env file content and update DB_PASSWORD field
/*
Route::get('pwd', function(){
	$path = base_path('Copie.env1');
	$default_env = base_path('.env');
	$key = 'DB_PASSWORD';
	$pwd = 'newpassword';
	if (file_exists($path)){
		file_put_contents($path, str_replace(
			$key. '='.env($key), $key. '='.$pwd, file_get_contents($default_env)));
	}
	dd(file_get_contents($default_env));
});
*/

/*Route::get('reset-password', function(){
	// retrieve temporary password
	$oldpassword = file_get_contents('pwd.txt');
	// connect with old password stored in pwd.txt
	// retrieve connected user account
	$result = DB::select('select current_user() as uuid');
	$user = $result[0]->uuid;
	
	// make older password expires and then wipe it in pwd.txt
	DB::select("ALTER USER $user PASSWORD EXPIRE");

	// reset password with ALTER USER statement before setting a new one

	// generating new password
	$newpassword = 'TaTa@12345';//Str::random(40);
	// change current password by executing
	DB::select("ALTER USER $user IDENTIFIED BY '$newpassword'");
	// DB::select("SET Password for $user = '$newpassword'");
	// store the new password 
	file_put_contents('pwd.txt',$newpassword);
	return "Password Newly Generated!";

	// lock account during two days if four unsuccessfull attemps occurs.
	// DB::select('alter user $user failed_login_attempts 4 password_lock_time 2');
});*/



