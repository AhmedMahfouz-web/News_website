<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\User;
use App\News;
use Spatie\Activitylog\Traits\LogsActivity;


class Department extends Model
{
    use LogsActivity;
    
    protected $guarded = [];

    protected static $logAttributes = ['*'];
    protected static $logUnguarded = true;

    public function departmentChildren()
    {
        return $this->hasMany(Department::class, 'parent_id');

    }

    public function mentor()
    {
        return $this->belongsTo(User::class);

    }

    public function writer()
    {
        return $this->belongsTo(User::class);

    }

    public function editor()
    {
        return $this->belongsTo(User::class);

    }
    
    public function news()
    {
        return $this->hasMany(News::class);

    }

}
