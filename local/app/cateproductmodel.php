<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class cateproductmodel extends Model
{
    protected $table = 'cateproduct';
    protected $guarded = [];
    public $timestamps = false;
    ////  hàm chứa model muốn liên kết đến thường đặt tên trùng tên model////
    function productmodel(){
    	return $this->hasMany('App\productmodel','cat_id');
    	                       /// vị trí model// // cột liên kết///

    }
}
