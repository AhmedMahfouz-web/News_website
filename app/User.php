<?php

namespace App;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laratrust\Traits\LaratrustUserTrait;
use App\Department;
use Spatie\Activitylog\Traits\LogsActivity;

class User extends Authenticatable
{
    use LaratrustUserTrait;
    use Notifiable;
    use LogsActivity;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'first_name', 'last_name', 'email', 'password', 'img'
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    protected $appends = ['img_path'];

    protected static $logAttributes = ['*'];
    
    public function departmentMonetor()
    {
        return $this->hasMany(Department::class, 'monetor_id');

    }

    public function departmentEditor()
    {
        return $this->hasMany(Department::class, 'editor_id');

    }

    public function departmentWriter()
    {
        return $this->hasMany(Department::class, 'writer_id');

    }

    public function news()
    {
        return $this->hasMany(News::class, 'user_id');
    }

    public function getImgPathAttribute()
    {
        return asset('uploads/user_images/' . $this->img);
    }
}
