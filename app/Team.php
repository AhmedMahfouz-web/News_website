<?php

namespace App;

use Laratrust\Models\LaratrustTeam;
use Spatie\Activitylog\Traits\LogsActivity;

class Team extends LaratrustTeam
{
    use LogsActivity;

    public $guarded = [];
    
    protected static $logAttributes = ['*'];
    protected static $logUnguarded = true;
}
