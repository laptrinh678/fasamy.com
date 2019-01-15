<?php

namespace App\Http\Controllers\backend\khachhang;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\khachhangmodel;

class khachhangcontroller extends Controller
{
    public function getlist()
    {
        $khachhang = khachhangmodel::paginate(10);
        //dd($khachhang);
    	return view('backend.khachhang.list',compact('khachhang'));
    }
    public function getadd()
    {
    	return view('backend.khachhang.add');
    }
    public function postadd(Request $Request)
    {
        $khachhang = new khachhangmodel;
        $khachhang->name= $Request->name;
        $khachhang->email= $Request->email;
        $khachhang->facebook= $Request->facebook;
        $khachhang->dienthoai= $Request->dienthoai;
        $khachhang->ngaysinh= $Request->ngaysinh;
        $khachhang->diachi= $Request->diachi;
        $khachhang->ghichu= $Request->ghichu;
        $khachhang->loaikh= $Request->loaikh;
        $khachhang->save();
        return redirect('admin/khachhang/list')->with('addsucess','Thêm thành công');

    	
    }
    public function getedit($id)
    {
        $khachhangid = khachhangmodel::find($id);
        //dd($khachhangid);
        return view('backend.khachhang.edit',compact('khachhangid'));
    }
     public function postedit(Request $Request, $id)
    {
        $khachhang = khachhangmodel::find($id);
        $khachhang->name= $Request->name;
        $khachhang->email= $Request->email;
        $khachhang->facebook= $Request->facebook;
        $khachhang->dienthoai= $Request->dienthoai;
        $khachhang->ngaysinh= $Request->ngaysinh;
        $khachhang->diachi= $Request->diachi;
        $khachhang->ghichu= $Request->ghichu;
        $khachhang->loaikh= $Request->loaikh;
        $khachhang->save();
        return redirect('admin/khachhang/list')->with('editsucess','Sửa thành công');
    }
    public function getdelete($id)
    {
        $khachhang = khachhangmodel::find($id);
        $khachhang->delete();
        return redirect('admin/khachhang/list')->with('deletesucess','Xóa thành công');
    }
}
