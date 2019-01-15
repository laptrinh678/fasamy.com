<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class catepostmodel extends Model
{
    protected $table = 'catepost';
    protected $guarded = [];
    public $timestamps = false;
     function postmodel(){
    	return $this->hasMany('App\postmodel','cat_id');
    }
}
