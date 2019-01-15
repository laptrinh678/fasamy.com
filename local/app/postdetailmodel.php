<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class postdetailmodel extends Model
{
     protected $table = "postdetail";
     public $timestamps = false;

    function postmodel(){
    	return $this->belongsTo('App\postmodel','post_id');
    }
}
