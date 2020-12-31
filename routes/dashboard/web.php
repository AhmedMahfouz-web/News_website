<?php

Route::group([	'prefix' => LaravelLocalization::setLocale(),
'middleware' => [ 'localeSessionRedirect', 'localizationRedirect', 'localeViewPath' ]], function()
{
    Route::prefix('dashboard')->name('dashboard.')->middleware(['auth'])->group(function() {

        Route::get('/index', 'DashboardController@index')->name('index');

        //Users route
        Route::resource('/users', 'UsersController');
       
        //Departments route
        Route::resource('/departments', 'DepartmentsController');
        Route::resource('/topics', 'TopicsController');
        Route::get('/departments/{id}/create', 'DepartmentsController@createSub')->name('.departments.createSub');
        
        //News route
        Route::resource('/news', 'NewsController');

    });//end of dashboard routes
});