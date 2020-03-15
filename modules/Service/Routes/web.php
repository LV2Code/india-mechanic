<?php
use \Illuminate\Support\Facades\Route;

Route::get('/service/{service}', 'ServiceController@show')->name('service.show');


Route::resource('/admin/module/service', 'ServiceController', ['as' => 'admin']);
Route::resource('/admin/module/package', 'PackageController', ['as' => 'admin'])->except([
    'index', 'edit', 'show', 'destroy'
]);

Route::get('/admin/module/package/{package}/edit/{location}', 'PackageController@edit')
	->name('admin.package.edit');

Route::delete('/admin/module/package/{package}/edit/{location}', 'PackageController@destroy')
	->name('admin.package.destroy');
