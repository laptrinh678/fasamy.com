<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class comment_pro_model extends Model
{
     protected $table = "comment_pro";
     public $timestamps = true;
     function productmodel(){
    	return $this->belongsTo('App\productmodel','product_id');
    }
}
