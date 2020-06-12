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

Route::get('/', function () {
    return view('welcome');
});

Route::get('tabledit', 'TableditController@index');
Route::post('tabledit/action', 'TableditController@action')->name('tabledit.action');



Route::get('dropzone', 'DropzoneController@index');
Route::post('dropzone/upload', 'DropzoneController@upload')->name('dropzone.upload');
Route::get('dropzone/fetch', 'DropzoneController@fetch')->name('dropzone.fetch');
Route::get('dropzone/delete', 'DropzoneController@delete')->name('dropzone.delete');



Route::get('contact_us', 'ContactusController@index');
Route::post('contact_us/submit', 'ContactusController@submit');



Route::get('form-validation', 'FormValidationController@index');
Route::post('form-validation/insert', 'FormValidationController@insert')->name('form-validation.insert');



Route::resource('ajax-crud', 'AjaxCrudController');
Route::post('ajax-crud/update', 'AjaxCrudController@update')->name('ajax-crud.update');
Route::get('ajax-crud/destroy/{id}', 'AjaxCrudController@destroy');



