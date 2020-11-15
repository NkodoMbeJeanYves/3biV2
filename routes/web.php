<?php

use Illuminate\Support\Facades\Route;
use Carbon\Carbon;
use Illuminate\Support\Facades\DB;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('symlink', function(){
	$targetFolder = $_SERVER['DOCUMENT_ROOT'].'/../storage/app/public';
	echo "$targetFolder";
	$linkFolder = $_SERVER['DOCUMENT_ROOT'].'/public/storage';
	echo "$linkFolder";
	//symlink($targetFolder,$linkFolder);
	echo 'Symlink process successfully completed';
});

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

// Route::get('/home', 'HomeController@index')->name('home');

Route::get('/home', function(){
	return 'You Are Connected';
})->middleware('auth');

Route::get('/clear-cache', function() {
    $exitCode = Artisan::call('cache:clear');
    $exitCode = Artisan::call('config:cache');
    return 'DONE'; //Return anything
});


Route::get('last', function(){

$periods = DB::table('periods')->get()->keyBy('period_id')->transform(function($item, $key) {
	$obj = new stdClass;
	$obj->period = $key;
	$obj->day = $item->day;
	return $obj;
});
$id = 'per2emcth5yfd3cmrujdkvdgdvjrooez8b1xftxzs09tqkiwyk';
dd($periods[$id]->period);

/*$dt = new Carbon('2020-11-02');

return $dt->format('d')-1;
return [
		'toDateTimeString'	=> (Carbon\Carbon::now())->toDateTimeString(),
		'addDays(29)'	=>	(Carbon\Carbon::now())->addDays(29),                   // 2012-03-03 00:00:00
		'addDay()'	=>	(Carbon\Carbon::now())->addDay(),                     // 2012-03-04 00:00:00
		'subDay()'	=>	(Carbon\Carbon::now())->subDay(),                     // 2012-03-03 00:00:00
		'subDays()'	=>	(Carbon\Carbon::now())->subDays(29)  
	];*/
});
