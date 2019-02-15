<?php

namespace App\Http\Controllers\backend\member;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\backend\member\loginrequest;
use Auth;
use App\User;

class logincontroller extends Controller
{
    public function getlogin()
    {
    		return view('backend.member.login');
    }
    public function postlogin(loginrequest $request)
    {
    	$login = [
    		'email'=>$request->email,
    		'password'=>$request->password,
    	];
    	if(Auth::attempt($login)){
    		return redirect('admin/index')->with('success','Đăng nhập thành công');
    	}
    	else
    	{
    		return redirect()->back()->with('err','Đăng nhập thất bại');
    	}
    }
    public function getlogout()
    {
    	Auth::logout();
    	return redirect('loginql');
    }
}
