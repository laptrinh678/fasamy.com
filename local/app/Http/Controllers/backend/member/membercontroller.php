<?php

namespace App\Http\Controllers\backend\member;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\backend\member\addrequest;
use App\Http\Requests\backend\member\editRequest;
use DB,Session,DateTime;
use App\User;
// CHỨC NĂNG QUẢN LÝ THÀNH VIÊN LÀM NGÀY 13 THÁNG 10 NĂM 2017 TẠI 28/199/110 ĐỊNH CÔNG
class membercontroller extends Controller
{
    public function getlist()
    {
        $users = User::all();
        //print_r($users);
    	return view('backend.member.list', compact('users'));
    }
    public function getadd()
    {
    	return view('backend.member.add');
    }
    public function postadd(addrequest $request)
    {
        $users = new User;
            $users->name = $request->member_name;
            $users->email = $request->member_mail;
            $users->password =  bcrypt($request->member_pass);
            $users->level = $request->member_level;
        $users->save();
         return redirect('admin/member/list')->with(['addUser'=>'Thêm thành viên thành công']);
    }
    // CHUC NĂNG SỬA THÀNH VIÊN
    public function getedit($id)
    {
        //$users = cmsusers::where('user_id',$id)->get();
        $users= User::where('id',$id)->get();
        //dd($user2);
        return view('backend.member.edit',compact('users'));
    }
    public function postedit(editRequest $request, $id)
    {
        $users = User::find($id);
           $users->name = $request->member_name;
            $users->email = $request->member_mail;
            $users->password =  bcrypt($request->member_pass);
            $users->level = $request->member_level;
        $users->save();
        //$product->save();
        //$users->where('user_id',$id)->update();
        return redirect('admin/member/list')->with(['editUser'=>'Sửa thành viên thành công']);    
    }
    public function getdelete($id)
    {
        $users = User::find($id);
        $users->delete();
        return back();
    }
}
