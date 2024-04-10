<?php

use Illuminate\Support\Facades\Route;

Route::get('/', 'App\Http\Controllers\HomeController@index');
Route::get('/filter', 'App\Http\Controllers\HomeController@filter');
Route::get('/add_form', 'App\Http\Controllers\HomeController@add_form');
Route::post('add_book', 'App\Http\Controllers\HomeController@add_book');
Route::get('/delete/{id}', 'App\Http\Controllers\HomeController@delete');
Route::get('/edit_form/{id}', 'App\Http\Controllers\HomeController@edit_form');
Route::post('edit_book', 'App\Http\Controllers\HomeController@edit_book');