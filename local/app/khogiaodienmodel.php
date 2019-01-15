<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class khogiaodienmodel extends Model
{
     protected $table = 'khogiaodien';
     public $timestamps = false;
     function catepostmodel(){
    	return $this->belongsTo('App\catepostmodel','danhmuc');
    }
}
