<?php

namespace App\Http\Controllers\Dashboard;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\User;
use App\Department;
use App\News;

class DashboardController extends Controller
{
    public function index()
    {
        $users = User::all();
        $departments = Department::all();
        $news = News::all();
        return view('dashboard.index', compact('users', 'departments', 'news'));
    
    }//end of index
    
}//end of controller
