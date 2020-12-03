<?php

namespace App\Http\Controllers\Dashboard;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Department;
use App\Team;
use App\User;
use Illuminate\Support\Facades\Storage;
use App\img;

class DepartmentsController extends Controller
{

    public function __construct()
    {

        $this->middleware(['permission:read_departments'])->only('index');
        $this->middleware(['permission:create_departments'])->only('create', 'createSub');
        $this->middleware(['permission:update_departments'])->only('edit');
        $this->middleware(['permission:delete_departments'])->only('destroy');

    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {

        $departments = Department::with('departmentChildren')->whereNull('parent_id')->where(function ($q) use ($request) 
        {
            return $q->when($request->search, function ($query) use ($request)
            {
                return $query->where('name', 'like', '%' . $request->search . '%');
            });
        })->paginate(10);

        if($departments->count() == 0){
            
            $children = Department::with('news')->whereNotNull('parent_id')->where(function ($q) use ($request) 
            {
                return $q->when($request->search, function ($query) use ($request) 
                {
                    return $query->where('name', 'like', '%' . $request->search . '%');
                });
            })->paginate(10);

            return view('dashboard.departments.index', compact('departments', 'children'));

        } else{

            return view('dashboard.departments.index', compact('departments'));

        } //End of if()


    } //End of index

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $departments = Department::whereNull('parent_id')->get();
        $users = User::whereRoleIs('admin')->get();
        return view('dashboard.departments.create', compact('departments', 'users'));
    }

    
    public function createSub($id)
    {
        $department = Department::where('id', $id)->get();
        $users = User::whereRoleIs('admin')->get();
        return view('dashboard.departments.create', compact('department', 'users'));
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
            'name' => 'required|unique:departments,name',
        ]);

        Department::create($request->all());

        $team_name = ucwords(str_replace(' ', '_', $request->name)) . '_team';
        $display_name = $request->name . ' team';
        $team_desc = 'This is ' . $team_name . ' desc';

        $team = new Team;
        $team->name = $team_name;
        $team->display_name = $display_name;
        $team->description = $team_desc;
        $team->save();


        $roles = ['monetor', 'editor', 'writer'];

        foreach ($roles as $role) {
            $role_id = $role . '_id';

            if (!empty($request->$role_id)) { 
                $user = User::where('id', $request->$role_id)->first();
                $user->attachRole($role, $team);
            }

        }

        // session()->flash('success', __('site.added_succesfully'));
        return redirect()->route('dashboard.departments.index');

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Department $department)
    {
        $departments = Department::with('departmentChildren')->whereNull('parent_id')->get();
        $users = User::whereRoleIs('admin')->get();
        return view('dashboard.departments.edit', compact('department', 'departments', 'users'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Department $department)
    {
        $request->validate([
            'name' => 'required|unique:departments,name,'. $department->id,
        ]);

        $team_name = ucwords(str_replace(' ', '_', $department->name)) . '_team'; 
        $team = Team::where('name', $team_name)->first();   //Get this department's team

        if($department->name != $request->name){ //Check if the department's name has been changed and update team table
            $team->update(['name' => ucwords(str_replace(' ', '_', $request->name)) . '_team']);
        } //End of if
        
        $roles = ['monetor', 'editor', 'writer'];

        foreach ($roles as $role) {
            
            $role_id = $role . '_id';

            if (!empty($request->$role_id)) {
                if ($request->$role_id != $department->$role_id && !empty($department->$role_id)) { //Check if the monetor|writer|editor has been changed and remove role form old monetor|writer|editor
            
                    $new_user = User::where('id', $request->$role_id)->first();
                    $new_user->attachRole($role, $team);

                    $old_user = User::where('id', $department->$role_id)->first();
                    $old_user->detachRole($role, $team);

                } else { //if there was no monetor|writer|editor for this department before

                    $user = User::where('id', $request->$role_id)->first();
                    $user->attachRole($role, $team);

                } //End of if
            } elseif (!empty($department->$role_id)) { //if there was a monetor|writer|editor and want to remove him

                $user = User::where('id', $department->$role_id)->first();
                $user->detachRole($role, $team);
            } //End of if

        }//End of foreach

        $department->update($request->all());

        session()->flash('success', __('site.updated_succesfully'));
        return redirect()->route('dashboard.departments.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Department $department)
    {

        $news = $department->news;
        foreach ($news as $single_news) {//Delete news of this department

            Storage::disk('public_uploads')->delete('/news_images/' . $single_news->main_img); //Delete the main img of the news from storage

            $other_imgs = $single_news->otherImgs;
            foreach($other_imgs as $other_img){ //Delete other imgs of the news from storage

                Storage::disk('public_uploads')->delete('/news_images/' . $other_img->main_img);

            }

            $single_news->delete();

        }//End of foreach

        $children = $department->departmentChildren;
        foreach ($children as $child) {//Delete children of this department

            $news = $child->news;
            foreach ($news as $single_news) {//Delete every single news on the child of this department

                Storage::disk('public_uploads')->delete('/news_images/' . $single_news->img); //Delete the main img of the news from storage

                $other_imgs = $single_news->otherImgs;
                foreach($other_imgs as $other_img){ //Delete other imgs of the news form 
                    
                    Storage::disk('public_uploads')->delete('/news_images/' . $other_img->img);

                }
                

                $single_news->delete();

            }//End of foreach
            
            $team_name = ucwords(str_replace(' ', '_', $child->name)) . '_team';
            $team = Team::where('name', $team_name)->first();
            $team->delete();

            $child->delete();
        }//End of 
        
            $team_name = ucwords(str_replace(' ', '_', $department->name)) . '_team';
            $team = Team::where('name', $team_name)->first();
            $team->delete();

        $department->delete();  // Delete the department
        session()->flash('success', __('site.deleted_succesfully'));
        return redirect()->route('dashboard.departments.index');
    }
}
