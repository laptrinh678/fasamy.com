<?php

namespace App\Http\Controllers\fontend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\postmodel;
use App\productmodel;
use App\cateproductmodel;
use App\catepostmodel;
use App\productimgdetail;
use Validator;
use DB,Session;
use Response;
use App\blockmodel;
use App\khachhangmodel;
use App\customer;
use App\QuestionModel;
class homecontroller extends Controller
{
    public function getlist(Request $request)
    {
        
      

        $aothudong = cateproductmodel::where('id',72)->first();
        $quan = cateproductmodel::where('id',79)->first();
        $pro_aothudong = productmodel::where('cat_id',72)->orderBy('id','desc')->take(4)->get();
        $pro_aothudongAsc = productmodel::where('cat_id',72)->orderBy('id','asc')->take(8)->get();
        $pro_spmoi = productmodel::where('pro_noibat',2)->orderBy('id','desc')->take(8)->get();

        $banner_khuyenmai = blockmodel::where('id',1)->first();
        $banner_khuyenmai2 = blockmodel::where('id',4)->first();
        $banner_khuyenmai3 = blockmodel::where('id',5)->first();

        $quanpro = productmodel::where('catcha',79)->orderBy('id','asc')->take(8)->get();
        $quanpro2 = productmodel::where('catcha',79)->orderBy('id','desc')->take(8)->get();


        $bodonucate = cateproductmodel::where('id',93)->first();
        //dd($bodonucate);
        $bodonu = productmodel::where('catcha',93)->orderBy('id','asc')->take(8)->get();
        $bodonu2 = productmodel::where('catcha',93)->orderBy('id','desc')->take(8)->get();


        $post_tintucDesc = postmodel:: where('cat_id',28)->orderBy('id','desc')->take(3)->get();
        $post_tintucAsc = postmodel:: where('cat_id',28)->orderBy('id','asc')->take(3)->get();


        //dd($post_nhapho);
        $ctdangthuchien = catepostmodel::where('id',23)->first();
        $kiemdinh_gs_tk = catepostmodel::where('id',24)->first();
        $caotang_nm = catepostmodel::where('id',25)->first();
        $da_tk = catepostmodel::where('id',26)->first();
        $giaiphap_xaynha = catepostmodel::where('id',27)->first();

        $cat_aothundaitay = cateproductmodel::where('id',48)->first();
        $cat_bosuit = cateproductmodel::where('id',58)->first();
        $cat_aosomi = cateproductmodel::where('id',47)->first();

        $pro_sale = productmodel:: where('pro_noibat',0)->get();
        $pro_noibat = productmodel:: where('pro_noibat',1)->get();
        $pro_sale_size = DB::table('img_prodetail')
              ->join('product', 'img_prodetail.product_id', '=', 'product.id')->select('kichco')->where('pro_noibat',0);

      
    	return view('fontend.master.home', compact('aothudong','pro_aothudong','pro_aothudongAsc',

            'quanpro','quanpro2','quan','giaiphap_xaynha','post_tintucDesc','post_tintucAsc','ctdangthuchien','pro_spmoi','banner_khuyenmai','banner_khuyenmai2','banner_khuyenmai3','bodonu','bodonu2','bodonucate'));
    }
   
    public function getjson()
    {
         $pro_sale = productmodel::all();
         //$data = response()->json($pro_sale);
         $datajson = [
            'errCode'=>1,
            'errMsg'=>'Success', 
            'data'=>$pro_sale 

         ];
        
        return $datajson;
    }

    public function getapicateproduct()
    {
        $cateproduct = cateproductmodel::all();

        return response()->json($cateproduct);

    }

     public function getapi()
    {
         $Question = QuestionModel::all();
         //$data = response()->json($pro_sale);
         $datajson = [
            'errCode'=>1,
            'errMsg'=>'Success', 
            'data'=>$Question 

         ];
        
        return $datajson;

    }
    /*
    public function postkhachhang(Request $request)
    {
        $khachhang= new khachhangmodel;
        $khachhang->email = $request->email;
        $khachhang->save();
        echo "<script type='text/javascript'>
        alert('Cảm ơn bạn đã gửi Email. Fasamy sẽ liên lạc với bạn trong thời gian sớm nhất');
        window.location = '".url('/')."'
        </script>";
      
    }*/
    public function detailproduct($slugcate,$slug)
    {
        //dd($id);
        $detailproductId = productmodel:: where('pro_slug',$slug)->first();
        $id_pro = $detailproductId->id;
	    $detailpro_img_a = productimgdetail::where('product_id',$id_pro)->select('img')->get();

       $image = array();
        foreach($detailpro_img_a as $val)
        {
            $img = $val['img'];
            $image[]=$img;
        }
        
        $value_img ='';
        foreach ($image as $value) {
           $val = $value;
           $value_img  = $val;
        }
        $value_img_decode = json_decode($value_img);
        
        $str_a= str_limit($slug, $limit = 10, $end = '');
        //dd($str_a);

        $str = str_replace('','%',$str_a);
        //dd($str);
        $product_lienquan = DB::table('product')->where('pro_slug','like','%'.$str.'%')->get(); 
        //dd($product_lienquan);
    	
    return view('fontend.home.detail_pro', compact('detailproductId','value_img_decode','detailpro_mausac','liscate','product_lienquan','slugcate'));
    }

     public function detailproduct2($slug)
    {
        //dd($id);
        $detailproductId = productmodel:: where('pro_slug',$slug)->first();
        $id_pro = $detailproductId->id;
        $detailpro_img_a = productimgdetail::where('product_id',$id_pro)->select('img')->get();

        $image = array();
        foreach($detailpro_img_a as $val)
        {
            $img = $val['img'];
            $image[]=$img;
        }
        
        $value_img ='';
        foreach ($image as $value) {
           $val = $value;
           $value_img  = $val;
        }
        $value_img_decode = json_decode($value_img);

        $str_a= str_limit($slug, $limit = 10, $end = '');
        //dd($str_a);

        $str = str_replace('','%',$str_a);
        //dd($str);
        $product_lienquan = DB::table('product')->where('pro_slug','like','%'.$str.'%')->get(); 
        //dd($product_lienquan);
        
    return view('fontend.home.detail_pro2', compact('detailproductId','value_img_decode','detailpro_mausac','liscate','product_lienquan'));
    }



     public function postcomment(Request $request, $id)
    {
         $comment = new comment_pro_model;
         $comment->product_id= $id;
         $comment->name= $request->name;
         $comment->email= $request->email;
         $comment->comment   = $request->comment;
         $comment->save();
         return back();

    }
    public function getcatepro(Request $request,$slug)
    {
        $cate = cateproductmodel::where('cat_slug',$slug)->first();
        $cate_id = $cate->id;
        $list_cate_pro= productmodel::where('catcha', $cate_id)->get();
    return view('fontend.home.cateproduct', compact('list_cate_pro','cate','product'));
    }


    public function getcateprocate_con(Request $request,$slug)
    {
       
        $cate = cateproductmodel::where('cat_slug',$slug)->first();
        $cate_id = $cate->id;
        $list_cate_pro= productmodel::where('cat_id', $cate_id)->get();
             return view('fontend.home.cateproduct_con', compact('list_cate_pro','cate','product'));
    }


    public function getcateprocate_loaisp(Request $request,$slug)
    {
      
    }






    public function getsearch( Request $request)
    {
        if(isset($request->total)){
            $total = $request->total;
        }else{
            $total = 0;
        }
        $value = $request->giatrisearch;
        $data['value'] = $value;
        $str = str_replace('','%',$value);
        $data['product'] = DB::table('product')->where('pro_name','like','%'.$str.'%')->offset($total)->limit(4)->get();
                // kiem tra ajax trong controller cua laravel
                if($request->ajax())
                {
                    return view('fontend.paginate.product',$data)->render();
                }
                //dd($data['product']);
                return view('fontend.home.search',$data);
    }


    public function search_gia($giasp)
    {
        $cate_pro_gia = productmodel::where('pro_price','<',$giasp)->get();
        //dd($cate_pro_gia);
        return view('fontend.paginate.list_cate_gia', compact('cate_pro_gia'));
       
       
    } 
    public function search_kichthuoc($search_kichthuoc)
    {
        //$cate_pro_gia = productmodel::where('pro_price','<',$giasp)->get();
        $data_kichthuoc = DB::table('product')->where('kichthuoc','like','%'.$search_kichthuoc.'%')->get();
        //dd($data_kichthuoc);
        return view('fontend.paginate.search_kichthuoc', compact('data_kichthuoc'));
       
    }

   public function search_mausacsp($mausacsp)
    {
        //$cate_pro_gia = productmodel::where('pro_price','<',$giasp)->get();
        $data_mausacsp = DB::table('product')->where('mausac','like','%'.$mausacsp.'%')->get();
        //dd($data_mausacsp);
        return view('fontend.paginate.search_mausac', compact('data_mausacsp'));
       
    }


    public function detail_betong($slug)
    {
    $detailproductId = productmodel:: where('pro_slug',$slug)->first();
    $chitiet_sp = DB::table('img_prodetail')->join('product', 'img_prodetail.product_id', '=', 'product.id')->where('pro_slug',$slug)->get();
    //dd($chitiet_sp);



        return view('fontend.home.detail_betong', compact('detailproductId','chitiet_sp'));
    }
    public function getlistvatlieu($slug)
    {
         $catvl = cateproductmodel::where('cat_slug',$slug)->first();
         //dd($catvl); die();
        $productvl_theonhom = productmodel::where('cat_slug',$slug)->get();
        //dd($productvatlieu );
        return view('fontend.home.nhomvatlieu', compact('productvl_theonhom','catvl'));

    }
    public function dsbetong()
    {
         $productvl_betong = productmodel::where('cat_id',30)->get();
         return view('fontend.home.nhombetong', compact('productvl_betong','catvl'));
    }
    // xu ly chuc nang dowload 
    public function getdowload($banve)
    {
       $file_path = 'public/backend/product/'.$banve;
       return response()->download($file_path);
    }

    public function getLogin()
    {
        return view('fontend.home.loginRegistry');
    }
    public function postLogin(Request $request)
    {
        $validate = Validator::make(
            $request->all(),
            [
                'name' => 'required',
                'pass' => 'required',
                'passConfirm' => 'required|same:pass',
                'email' => 'required|email',
            ],

            [
                'required' => 'Không được để trống',
                'same' => 'Nhập lại PassWord không giống PassWord ',
                'email' => 'Vui lòng nhập lại Email',
            ]

        );

        if ($validate->fails()) {
            return View('fontend.home.loginRegistry')->withErrors($validate);
        }




        $customer = new customer;
        $customer->name = $request->name;
        $customer->pass = $request->pass;
       
        $customer->passConfirm = $request->passConfirm;
         //dd( $customer->pass,'k', $customer->passConfirm);
        $customer->email = $request->email;
        $customer->save();
         return back()->with('addsucess','Đăng ký thành công');
    }

        
    
}