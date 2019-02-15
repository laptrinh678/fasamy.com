<?php

namespace App\Http\Controllers\backend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\QuestionModel;
use Validator;
use DB;
use App\Http\Requests\backend\cateProduct\QuestionEditRequest;

class QuestionController extends Controller
{
    public function getlist()
    { 
        $listQuestion = QuestionModel::all();
        //dd($listQuestion);
    	return view('backend.Question.list', compact('listQuestion'));
    }
    public function getadd()
    {
    	return view('backend.Question.add');
    }
    public function postadd(Request $request)
    {
        $validate = Validator::make(
            $request->all(),
            [
                'nameQuestion' => 'required',
                'replyA' => 'required',
                'replyB' => 'required',
                'replyC' => 'required',
                'replyD' => 'required',
                'chooseReply' => 'required',
                'status' => 'required',
            ],

            [
                'required' => 'Không được để trống tên câu hỏi, đáp án hoặc đáp án đúng',
                'same' => 'Nhập lại PassWord không giống PassWord ',
                'email' => 'Vui lòng nhập lại Email',
            ]

        );

        if ($validate->fails()) {
            return View('backend/Question/add')->withErrors($validate);
        }


    	$Question = new QuestionModel;
        $Question ->nameQuestion= $request->nameQuestion;
        $Question ->replyA= $request->replyA;
        $Question ->replyB= $request->replyB;
        $Question ->replyC= $request->replyC;
        $Question ->replyD= $request->replyD;
        $Question ->chooseReply= $request->chooseReply;
        $Question ->status= $request->status;
        //dd($Question);
        $Question ->save();
        return redirect('admin/Question/list')->with('addsucess','Thêm mới thành công');
    }
     public function getedit(Request $request,$id)
    {
        $Question = QuestionModel::find($id);
    	return view('backend.Question.edit', compact('Question'));
    }
    public function postedit(QuestionEditRequest $request, $id)
    {
        
       
       
        $Questionid = QuestionModel::find($id);
        $Questionid ->nameQuestion= $request->nameQuestion;
        $Questionid ->replyA= $request->replyA;
        $Questionid ->replyB= $request->replyB;
        $Questionid ->replyC= $request->replyC;
        $Questionid ->replyD= $request->replyD;
        $Questionid ->chooseReply= $request->chooseReply;
        $Questionid ->status= $request->status;
        //dd($Question);
        $Questionid ->save();
        return redirect('admin/Question/list')->with('editsucess','Sửa thành công');

    	
    }
     public function getdelete($id)
    {
       $QuestionModelid = QuestionModel::find($id);
       $QuestionModelid->delete();
       return redirect('admin/Question/list')->with('deleteproductsuccess','Xóa câu hỏi thành công');

    }
    public function getChangeStatus($status,$idQues)
    {   //dd($status);
        DB::table('question')->where('id', $idQues)->update(['status' => $status]);
        $statusId = DB::table('question')->select('status')->where('id', $idQues)->first();
        return view('backend.Status.status', compact('statusId'));
    }

   

}
