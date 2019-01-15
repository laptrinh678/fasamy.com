<?php

namespace App\Http\Controllers\backend\home;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\cateproductmodel;
use App\productmodel;
use App\catepostmodel;

class homecontroller extends Controller
{
    public function getlist()
    {
    	$cateproduct = cateproductmodel::all()->count();
    	$listproduct = productmodel::all()->count();
    	$catepost = catepostmodel::all()->count();
    	//dd($cateproduct);
    	return view('backend.master.home', compact('cateproduct','listproduct','catepost'));
    }
}
