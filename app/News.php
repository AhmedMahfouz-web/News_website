<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Spatie\Activitylog\Traits\LogsActivity;

class News extends Model
{
    use LogsActivity;

    protected $guarded = [];
    
    protected static $logAttributes = ['*'];
    protected static $logUnguarded = true;

    protected $appends = ['main_img_path', 'other_imgs_path'];

    public function otherImgs() 
    {
        return $this->hasMany(Img::class, 'news_id');
    }

    public function department()
    {
        return $this->belongsTo(Department::class);
    }

    public function topic()
    {
        return $this->belongsTo(Topic::class);
    }

    public function user() 
    {
        return $this->belongsTo(User::class);
    }
    
    public function getMainImgPathAttribute()
    {
        return asset('uploads/news_images/' . $this->main_img);
    }
    

}
