<?php

use Illuminate\Support\Facades\Route;

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
