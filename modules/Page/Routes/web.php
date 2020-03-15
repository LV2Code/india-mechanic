<?php
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
use Illuminate\Support\Facades\Route;

Route::get('/design/{template}', function($template) {
    return view('Page::design.'.$template);
});

// Route::get('/service/{service}', )


// Page
Route::group(['prefix'=>config('page.page_route_prefix')],function(){
    Route::get('/{slug}','PageController@detail');// Detail
});

//Languages

Route::group(['prefix'=>'{lang}'],function(){
    Route::group(['prefix'=>config('page.page_route_prefix')],function(){
        Route::get('/{slug}','PageController@detail');// Detail
    });
});