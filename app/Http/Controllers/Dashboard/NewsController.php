<?php

namespace App\Http\Controllers\Dashboard;

use App\Http\Controllers\Controller;
use App\News;
use Illuminate\Http\Request;
use App\Department;
use App\Team;
use App\User;
use Intervention\Image\Facades\Image;
use Illuminate\Support\Facades\Storage;
use App\Img;
use App\Topic;

class NewsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $departments = Department::all();
        $news = News::where(function ($q) use ($request) 
        {
            return $q->when($request->search, function ($query) use ($request)
            {
                return $query->where('title', 'like', '%' . $request->search . '%')
                ->orWhere('body', 'like', '%' . $request->search . '%');;
            });
        })->when($request->department_id, function ($query) use ($request)
        {
            return $query->where('department_id', $request->department_id);

        })->latest()->paginate(10);
        
        return view('dashboard.news.index', compact('news', 'departments'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $departments = Department::all();
        $topics = Topic::all();
        return view('dashboard.news.create', compact('departments', 'topics'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'title' => 'required',
            'body' => 'required',
            'main_img' => 'required',
        ]);

        $request_data = $request->except(['main_img', 'other_imgs']);
        $request_data['user_id'] = auth()->user()->id;
        
        
        // Check if the user has the rold to write news
        if(auth()->user()->hasRole('super_admin')){

            if ($request->main_img) {

                Image::make($request->main_img)
                    ->resize(800, null, function ($constraint) {
                        $constraint->aspectRatio();
                    })
                    ->save(public_path('uploads/news_images/' . $request->main_img->hashName()));
    
                $request_data['main_img'] = $request->main_img->hashName();
    
            }//End of if

        $news = News::create($request_data);
        $news_id = $news->id; //Get this news id

        } else { //If the user is admin
            
            $department_id = $news->department_id;
            $department = Department::where('id', $department_id)->first();
            $department_name = ucwords(str_replace(' ', '_', $department->name));
            
            if(auth()->user()->hasRole(['writer', 'monetor'], $department_name . '_team')){ //Check the team role

                if ($request->main_img) {

                    Image::make($request->main_img)
                        ->resize(800, null, function ($constraint) {
                            $constraint->aspectRatio();
                        })
                        ->save(public_path('uploads/news_images/' . $request->main_img->hashName()));
        
                    $request_data['main_img'] = $request->main_img->hashName();
        
                }//End of if

                $news = News::create($request_data);
                $news_id = $news->id; //Get this news id

            }//End of if


        }// End of if

        if (!empty($news_id)) {
            if ($request->other_imgs) { // Check if this news has other images

                $other_imgs = $request->other_imgs;

                foreach ($other_imgs as $other_img) {
                    Image::make($other_img)
                ->resize(800, null, function ($constraint) {
                    $constraint->aspectRatio();
                })
                ->save(public_path('uploads/news_images/' . $other_img->hashName()));

                    $img = new Img; //Create new row in img's table and sort this img
                    $img->news_id = $news_id;
                    $img->img = $other_img->hashName();
                    $img->save();

                }//End of foreach

            }//End of if

            session()->flash('success', __('site.added_succesfully'));

        } else{

        session()->flash('error', __('site.you_don\'t_have_permission'));

        }//End of if


        return redirect()->route('dashboard.news.index');

    }//End of store

    /**
     * Display the specified resource.
     *
     * @param  \App\News  $news
     * @return \Illuminate\Http\Response
     */
    public function show(News $news)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\News  $news
     * @return \Illuminate\Http\Response
     */
    public function edit(News $news)
    {
        $news->with('otherImgs')->get();
        $department = Department::where('id', $news->department_id)->first();
        return view('dashboard.news.edit', compact('news', 'department'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\News  $news
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, News $news)
    {
        $request->validate([
            'title' => 'required',
            'body' => 'required',
        ]);

        $request_data = $request->except(['main_img', 'other_imgs', 'delete']);
        $request_data['user_id'] = auth()->user()->id;

        $department_id = $news->department_id;
        $department = Department::where('id', $department_id)->first();
        $department_name = ucwords(str_replace(' ', '_', $department->name));
        
        if(auth()->user()->hasRole(['editor', 'monetor'], $department_name . '_team') || auth()->user()->hasRole('super_admin')){ //Check the team role

            if ($request->main_img) {

                Storage::disk('public_uploads')->delete('/news_images/' . $news->img);
    
                Image::make($request->main_img)
                ->resize(800, null, function ($constraint) {
                    $constraint->aspectRatio();
                })
                ->save(public_path('uploads/news_images/' . $request->main_img->hashName()));

                $request_data['main_img'] = $request->main_img->hashName();
            }//End of if

            $news->update($request_data); //Update the news
            $news_id = $news->id; //Get this news id

            if (!empty($news_id)) {
                if ($request->other_imgs) { // Check if this news has other images
    
                    $other_imgs = $request->other_imgs;
    
                    foreach ($other_imgs as $other_img) {
                        Image::make($other_img)
                    ->resize(800, null, function ($constraint) {
                        $constraint->aspectRatio();
                    })
                    ->save(public_path('uploads/news_images/' . $other_img->hashName()));
    
                        $img = new Img; //Create new row in img's table and sort this img
                        $img->news_id = $news_id;
                        $img->img = $other_img->hashName();
                        $img->save();
    
                    }//End of foreach
    
                }//End of if
    
            }//End of if

            if (!empty($request->delete)) {
                foreach ($request->delete as $delete) {
                    if (!empty($delete)) {
                        $img = Img::where('img', $delete)->first();
                        Storage::disk('public_uploads')->delete('/news_images/' . $img->img);
                        $img->delete();
                    }//End of if
                }//End of foreach
            }
            session()->flash('success', __('site.updated_succesfully'));

        } else{
    
            session()->flash('error', __('site.you_don\'t_have_permission'));
        
        }//End of if


        
        return redirect()->route('dashboard.news.index');

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\News  $news
     * @return \Illuminate\Http\Response
     */
    public function destroy(News $news)
    {

            Storage::disk('public_uploads')->delete('/news_images/' . $news->main_img); //Delete the main img of the news from storage

            $other_imgs = $news->otherImgs;
            foreach($other_imgs as $other_img){ //Delete other imgs of the news from storage

                Storage::disk('public_uploads')->delete('/news_images/' . $other_img->main_img);

            }

            $news->delete();
            return redirect()->route('dashboard.news.index');
    }
}
