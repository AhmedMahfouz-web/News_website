<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Spatie\Activitylog\Traits\LogsActivity;

class Img extends Model
{
    use LogsActivity;

    protected $guarded = [];

    protected static $logAttributes = ['*'];
    protected static $logUnguarded = true;

    protected $appends = ['other_img_path'];

    public function news()
    {
        return $this->belongsTo(News::class, 'id');
    }

    public function getOtherImgPathAttribute()
    {
        return asset('uploads/news_images/' . $this->img);
    }
}
