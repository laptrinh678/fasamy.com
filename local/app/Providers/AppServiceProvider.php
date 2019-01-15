<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\cateproductmodel;
use App\catepostmodel;
use App\postmodel;
use App\productmodel;
use DB;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()

    {
        $data['cateproduct']=cateproductmodel::count();
        $data['product']=productmodel::count();
        $data['catepostmodel']=catepostmodel::count();
        $data['post']=postmodel::count();

        $data['gioithieu'] = cateproductmodel::where('id','=',42)->first();
        //$data['ao'] = cateproductmodel::where('parent_id','=',42)->get();

        $data['thudong'] = cateproductmodel::where('id','=',38)->first();
        $data['thudong_con'] = cateproductmodel::where('parent_id','=',38)->get();

        $data['ao'] = cateproductmodel::where('id','=',71)->first();
        $data['ao_con'] = cateproductmodel::where('parent_id','=',71)->get();


        $data['quan'] = cateproductmodel::where('id','=',79)->first();
        $data['quan_con'] = cateproductmodel::where('parent_id','=',79)->get();

         $data['vaynu'] = cateproductmodel::where('id','=',89)->first();
         $data['vaynu_con'] = cateproductmodel::where('parent_id','=',89)->get();
        
         $data['bodonucha'] = cateproductmodel::where('id','=',93)->first();
         $data['bodonu_con'] = cateproductmodel::where('parent_id','=',93)->get();
         
         $data['doboidotam'] = cateproductmodel::where('id','=',97)->first();
         $data['doboidotam_con'] = cateproductmodel::where('parent_id','=',97)->get();

         $data['combo'] = cateproductmodel::where('id','=',57)->first();
         $data['combo_con'] = cateproductmodel::where('parent_id','=',57)->get();

         $data['phukien'] = cateproductmodel::where('id','=',59)->first();
         $data['phukien_con'] = cateproductmodel::where('parent_id','=',59)->get();

         $data['gioithieu'] = catepostmodel::where('id','=',31)->first();
         $data['post_gioithieu'] = postmodel::where('cat_id','=',15)->get();

         $data['dichvu'] = catepostmodel::where('id','=',16)->first();
         $data['post_dichvu'] = postmodel::where('cat_id','=',16)->get();

         $data['baogia'] = catepostmodel::where('id','=',17)->first();
         $data['post_baogia'] = postmodel::where('cat_id','=',17)->get();

         $data['batdongsan'] = catepostmodel::where('id','=',18)->first();
         $data['tintuc'] = catepostmodel::where('id','=',28)->first();
         $data['post_tintuc']=postmodel::orderBy('id','asc')->take(4)->get();
         
        $data['post_tintuc2']=postmodel::orderBy('id','asc')->take(3)->get();
        $data['post_tintuc3']=postmodel::orderBy('id','desc')->take(3)->get();
        $data['post_tintuc4']=postmodel::where('loaibaiviet',3)->take(2)->get();

      
         $data['lienhe'] = catepostmodel::where('id','=',29)->first();
         $data['tuyendung'] = catepostmodel::where('id','=',30)->first();
         //dd( $data['gioithieu']);

         $data['categories'] = cateproductmodel::where('parent_id',0)->get();
         //dd($data['categories']);



        
        $data['cat_pleft'] = catepostmodel:: where('id','>',0)->orderBy('id','asc')->take(2)->get();
        $data['link']=DB::table('wp_links')->where('id',1)->first();
        //dd($data['link']); die();
        


        $data['slider'] = DB::table('slider')->get();
        //dd($data['slider']);
        $data['quangcao']= DB::table('quangcao')->select('img')->get();
        //dd($data['quangcao']);
        $data['header_footer']=DB::table('head_foot')->first();
        view()->share($data);
    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}
