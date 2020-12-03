<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\News;

class Topic extends Model
{
    
    protected $guarded = [];
    
    public function news()
    {
        return $this->hasMany(News::class);

    }
}
