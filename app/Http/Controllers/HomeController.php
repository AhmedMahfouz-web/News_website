<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\Department;
use App\News;
use App\Img;
use App\Topic;
use Intervention\Image\Facades\Image;
use Illuminate\Support\Facades\Storage;

class HomeController extends Controller
{

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $news = News::latest()->get();
        $topics = Topic::all();
        $departments = Department::all();
        return view('index', compact('news', 'topics', 'departments'));
    }

    public function showByDepartment(Department $department){
        $news = News::where('department_id', $department->id)->latest()->paginate(10);
        $topics = Topic::all();
        $departments = Department::all();
        $latest_news = News::latest()->take(7)->get();
        return view('department', compact('news', 'departments', 'department', 'latest_news', 'topics'));
    }

    public function showNews(News $news){
        $departments = Department::all();
        $topics = Topic::all();
        $latest_news = News::latest()->take(7)->get();
        return view('news', compact('news', 'departments', 'latest_news', 'topics'));
    }
}
