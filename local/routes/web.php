<?php
// bắt đầu làm ngày 4/10/2017 phần backend;
Route::group(['namespace'=>'backend'], function()
{
		Route::get('loginql','member\logincontroller@getlogin')->middleware('guest');
		Route::post('loginql','member\logincontroller@postlogin');
		Route::get('logout','member\logincontroller@getlogout');
	Route::group(['prefix'=>'admin'/*'middleware'=>'auth'*/],function()
	{
		Route::get('index', 'home\homecontroller@getlist');
		Route::group(['prefix'=>'member'], function()
		{
			Route::get('list','member\membercontroller@getlist');
			Route::get('add','member\membercontroller@getadd');
			Route::post('add','member\membercontroller@postadd');
			Route::get('edit/{id}','member\membercontroller@getedit');
			Route::post('edit/{id}','member\membercontroller@postedit');
			Route::get('delete/{id}','member\membercontroller@getdelete');
		});
		Route::group(['prefix'=>'product'], function()
		{
			Route::group(['prefix'=>'cate'], function()
			{
				Route::get('list','product\cateController@getlist');
				Route::get('add','product\cateController@getadd');
				Route::post('add','product\cateController@postadd');
				Route::get('edit/{id}','product\cateController@getedit');
				Route::post('edit/{id}','product\cateController@postedit');
				Route::get('delete/{id}','product\cateController@getdelete');
				Route::get('search_catepro','product\cateController@getsearch');
			});
			Route::group(['prefix'=>'listpro'], function()
			{
				Route::get('list','product\productcontroller@getlist');
				Route::get('add','product\productcontroller@getadd');
				Route::post('add','product\productcontroller@postadd');
				Route::get('edit/{id}','product\productcontroller@getedit');
				Route::post('edit/{id}','product\productcontroller@postedit');
				Route::get('delete/{id}','product\productcontroller@getdelete');
				Route::get('search_pro','product\productcontroller@getsearch');
				Route::get('comment','product\productcontroller@getcomment');
			});
			Route::group(['prefix'=>'img_product'], function()
			{
				Route::get('list','product\img_pro_cotroller@getlist');
				Route::get('add','product\img_pro_cotroller@getadd');
				Route::post('add','product\img_pro_cotroller@postadd');
				Route::get('edit/{id}','product\img_pro_cotroller@getedit');
				Route::post('edit/{id}','product\img_pro_cotroller@postedit');
				Route::get('delete/{id}','product\img_pro_cotroller@getdelete');
			});
			Route::group(['prefix'=>'imgprodetail'], function()
			{
				Route::get('list','product\imgprodetailcontroller@getlist');
				Route::get('add','product\imgprodetailcontroller@getadd');
				Route::post('add','product\imgprodetailcontroller@postadd');
				Route::get('edit/{id}','product\imgprodetailcontroller@getedit');
				Route::post('edit/{id}','product\imgprodetailcontroller@postedit');
				Route::get('delete/{id}','product\imgprodetailcontroller@getdelete');
			});
			// chuc nang quan ly binh luan san pham
			Route::group(['prefix'=>'comment_pro'], function()
			{
				Route::get('list','product\comment_controller@getlist');
				Route::get('add','product\comment_controller@getadd');
				Route::post('add','product\comment_controller@postadd');
				Route::get('edit/{id}','product\comment_controller@getedit');
				Route::post('edit/{id}','product\comment_controller@postedit');
				Route::get('delete/{id}','product\comment_controller@getdelete');
			});
			// Bat dau chuc nang quan ly mau sach san pham lien ket n-n
			Route::group(['prefix'=>'mausac'], function()
			{
				Route::get('list','mausac\mausaccontroller@getlist');
				Route::get('add','mausac\mausaccontroller@getadd');
				Route::post('add','mausac\mausaccontroller@postadd');
				Route::get('edit/{id}','mausac\mausaccontroller@getedit');
				Route::post('edit/{id}','mausac\mausaccontroller@postedit');
				Route::get('delete/{id}','mausac\mausaccontroller@getdelete');
			});
		});////// KẾT THÚC GROUP PRODUCT//////
		/*  bắt đầu làm chức năng product tiếng anh 1/3/2017 tại safza*/
		Route::group(['prefix'=>'product_en'], function()
		{
			Route::group(['prefix'=>'cate_en'], function()
			{
				Route::get('list','product\cate_en@getlist');
				Route::get('add','product\cate_en@getadd');
				Route::post('add','product\cate_en@postadd');
				Route::get('edit/{id}','product\cate_en@getedit');
				Route::post('edit/{id}','product\cate_en@postedit');
				Route::get('delete/{id}','product\cate_en@getdelete');
				Route::get('search_catepro','product\cate_en@getsearch');
			});

		});
		/*  kết thúc chức năng product tiếng anh*/
		//// BẮT ĐẦU GROUP POST 1H44 2/11/2017 T5 TVQG ////
		Route::group(['prefix'=>'post'], function()
		{
			Route::group(['prefix'=>'cate'], function()
			{
				Route::get('list','post\catecontroller@getlist');
				Route::get('add','post\catecontroller@getadd');
				Route::post('add','post\catecontroller@postadd');
				Route::get('edit/{id}','post\catecontroller@getedit');
				Route::post('edit/{id}','post\catecontroller@postedit');
				Route::get('delete/{id}','post\catecontroller@getdelete');
				Route::get('search_cate_post','post\catecontroller@getsearch');
			});
			Route::group(['prefix'=>'listpost'], function()
			{
				Route::get('list','post\lispostcontroller@getlist');
				Route::get('add','post\lispostcontroller@getadd');
				Route::post('add','post\lispostcontroller@postadd');
				Route::get('edit/{id}','post\lispostcontroller@getedit');
				Route::post('edit/{id}','post\lispostcontroller@postedit');
				Route::get('delete/{id}','post\lispostcontroller@getdelete');
				Route::get('search_post','post\lispostcontroller@getsearch');
				Route::get('comment','post\lispostcontroller@getcomment');

			});
			// chức năng postimg
			Route::group(['prefix'=>'postimg'], function()
			{
				Route::get('list','post\post_imgcontroller@getlist');
				Route::get('add','post\post_imgcontroller@getadd');
				Route::post('add','post\post_imgcontroller@postadd');
				Route::get('edit/{id}','post\post_imgcontroller@getedit');
				Route::post('edit/{id}','post\post_imgcontroller@postedit');
				Route::get('delete/{id}','post\post_imgcontroller@getdelete');
			});
		});////// KẾT THÚC GROUP Post//////
		//// 6/11/2017// tvqg tang 4// lam chuc nang quan ly header-footer
		Route::group(['prefix'=>'header-footer'], function()
		{
				Route::get('list','head\head_footcontroller@getlist');
				Route::get('add','head\head_footcontroller@getadd');
				Route::post('add','head\head_footcontroller@postadd');
				Route::get('edit/{id}','head\head_footcontroller@getedit');
				Route::post('edit/{id}','head\head_footcontroller@postedit');
		});

		//// 9/10/2018// tvqg tang 4// lam chuc nang quan ly header-footer
		Route::group(['prefix'=>'background'], function()
		{
				Route::get('list','backgroundcontroller@getlist');
				Route::get('add','backgroundcontroller@getadd');
				Route::post('add','backgroundcontroller@postadd');
				Route::get('edit/{id}','backgroundcontroller@getedit');
				Route::post('edit/{id}','backgroundcontroller@postedit');
		});


		///// bắt đầu route slider_no;
		Route::group(['prefix'=>'slider'], function()
		{
			Route::get('list','slider\slider_nocontroller@getlist');
			Route::get('add','slider\slider_nocontroller@getadd');
			Route::post('add','slider\slider_nocontroller@postadd');
			Route::get('edit/{id}','slider\slider_nocontroller@getedit');
			Route::post('edit/{id}','slider\slider_nocontroller@postedit');
			Route::get('delete/{id}','slider\slider_nocontroller@getdelete');
		});
		////kết thúc phần slider//
		Route::group(['prefix'=>'block'], function()
		{
			Route::get('list','block\blockcontroller@getlist');
			Route::get('add','block\blockcontroller@getadd');
			Route::post('add','block\blockcontroller@postadd');
			Route::get('edit/{id}','block\blockcontroller@getedit');
			Route::post('edit/{id}','block\blockcontroller@postedit');
			Route::get('delete/{id}','block\blockcontroller@getdelete');
		});
		//// Bắt đầu phần quảng cáo 10/11/2017//
		Route::group(['prefix'=>'quangcao'], function()
		{
			Route::get('list','quangcao\quangcaocontroller@getlist');
			Route::get('add','quangcao\quangcaocontroller@getadd');
			Route::post('add','quangcao\quangcaocontroller@postadd');
			Route::get('edit/{id}','quangcao\quangcaocontroller@getedit');
			Route::post('edit/{id}','quangcao\quangcaocontroller@postedit');
			Route::get('delete/{id}','quangcao\quangcaocontroller@getdelete');
		});
		// bắt đầu chức kho giao diện
		Route::group(['prefix'=>'giaodien'], function()
		{
			Route::get('list','giaodien\giaodiencontroller@getlist');
			Route::get('add','giaodien\giaodiencontroller@getadd');
			Route::post('add','giaodien\giaodiencontroller@postadd');
			Route::get('edit/{id}','giaodien\giaodiencontroller@getedit');
			Route::post('edit/{id}','giaodien\giaodiencontroller@postedit');
			Route::get('delete/{id}','giaodien\giaodiencontroller@getdelete');
		});
		//kết thúc chức năng kho giao diện
		// bat dau chuc nang quan ly link lien ket dung de ql link dan dong do phai copy link nhieu lan. de thay doi
		Route::group(['prefix'=>'link'], function()
		{
			Route::get('list','link\linkcontroller@getlist');
			Route::get('add','link\linkcontroller@getadd');
			Route::post('add','link\linkcontroller@postadd');
			Route::get('edit/{id}','link\linkcontroller@getedit');
			Route::post('edit/{id}','link\linkcontroller@postedit');
			Route::get('delete/{id}','link\linkcontroller@getdelete');
		});
		// lam ngay 4/2/2018 tai TVQG tang 4.
		Route::group(['prefix'=>'khachhang'], function()
		{
			Route::get('list','khachhang\khachhangcontroller@getlist');
			Route::get('add','khachhang\khachhangcontroller@getadd');
			Route::post('add','khachhang\khachhangcontroller@postadd');
			Route::get('edit/{id}','khachhang\khachhangcontroller@getedit');
			Route::post('edit/{id}','khachhang\khachhangcontroller@postedit');
			Route::get('delete/{id}','khachhang\khachhangcontroller@getdelete');
		});
		// lam ngay 4/2/2018 tai TVQG tang 4.
		// bắt đầu chức năng tư khóa seo lam ngay 6/4/2018
		Route::group(['prefix'=>'seo'], function()
		{
			Route::get('list','seocontroller@getlist');
			Route::get('add','seocontroller@getadd');
			Route::post('add','seocontroller@postadd');
			Route::get('edit/{id}','seocontroller@getedit');
			Route::post('edit/{id}','seocontroller@postedit');
			Route::get('delete/{id}','seocontroller@getdelete');
		});
		// lam ngay 4/2/2018 tai TVQG tang 4.

		Route::group(['prefix'=>'Question'], function()
		{
			Route::get('list','QuestionController@getlist');
			Route::get('add','QuestionController@getadd');
			Route::post('add','QuestionController@postadd');
			Route::get('edit/{id}','QuestionController@getedit');
			Route::post('edit/{id}','QuestionController@postedit');
			Route::get('delete/{id}','QuestionController@getdelete');
			Route::get('ChangeStatus/{status}/{idQues}','QuestionController@getChangeStatus');

		});
		
		
		///kết thúc phần quảng cáo///
		Route::group(['prefix'=>'guimail'], function()
		{
			Route::get('mail','mail\mailcontroller@getmail');
			Route::post('mail','mail\mailcontroller@postmail');
		});
	});//// Kết thúc route admin
});
Route::group(['namespace'=>'fontend'], function()
{
	Route::get('/', 'homecontroller@getlist');
	Route::post('/','homecontroller@postlist');
	Route::get('lien-he.html', 'homepostcontroller@getlienhe');
	Route::get('tuyen-dung.html', 'homepostcontroller@gettuyendung');
	Route::get('registration.html', 'homecontroller@getLogin');
	Route::post('registration.html', 'homecontroller@postLogin');

	Route::get('mua-hang-thang-cong.html','cartcontroller@getcomplate');
	Route::get('tin-tuc.html','homepostcontroller@getcatepost');
	Route::get('tin-tuc/{slug}.html','homepostcontroller@getlistcatepost');
	
	Route::get('search_gia/{giasp}','homecontroller@search_gia');
	
	Route::get('chi-tiet-tin/{slug}.html','homepostcontroller@getdetailpost');
	
	Route::get('chi-tiet-san-pham/{slug}.html','homecontroller@detailproduct2');
	Route::get('danh-muc/{slug_cate_con}.html','homecontroller@getcateprocate_con');
	Route::get('{slug}.html','homecontroller@getcatepro');
	Route::get('{slugcate}/{slug}.html','homecontroller@detailproduct');
	
	
	
	
	Route::post('chi-tiet-san-pham/{slug}','homecontroller@postcomment');
	Route::get('chi-tiet-be-tong/{slug}.html','homecontroller@detail_betong');
	Route::get('chi-tiet-du-an/{slug}.html','homepostcontroller@detail_duan');
	// chuc nang dowload file san pham
	Route::get('dowload/{banve}','homecontroller@getdowload');
	// chucs nang gio hang
	// xử lý phần danh mục sản phẩm-tintuc
	Route::get('danh-sach-san-pham/{slug}.html','homecontroller@getlistcate_pro')->name('dssp');

	Route::get('danh-sach-vat-lieu/{slug}.html','homecontroller@getlistvatlieu');
    Route::get('danh-sach-du-an.html','homepostcontroller@dsduan');
    Route::get('be-tong.html','homecontroller@dsbetong');
	// xử lý chức năng tìm kiếm sản phẩm

    Route::get('search','homecontroller@getsearch');
    Route::get('search_post','homepostcontroller@getsearch_post' );
	Route::get('search_kichthuoc/{kichthuocsp}','homecontroller@search_kichthuoc');
	Route::get('search_mausac/{mausacsp}','homecontroller@search_mausacsp');
	// xu ly fontend phan tin tuc

	//Route::get('chi-tiet-bai-viet/{slug}.html','homepostcontroller@getdetailpost');
	Route::get('blogs/{slug}.html', 'homepostcontroller@getblog');
	// xử lý chi iết bài viết
	Route::get('chi-tiet-bai-viet/{slug}.html','homepostcontroller@getchitietbaiviet1');
	Route::post('chi-tiet-bai-viet2/{slug}.html','homepostcontroller@postbinhluan');
	Route::get('chi-tiet-bai-viet3','homepostcontroller@getdetai3');
	// xử lý phần kho giao diện 15/11/2017
	Route::get('showrow.html', 'homepostcontroller@getshowrow');

    //Route::get('tuyen-dung/{slug}.html', 'homepostcontroller@gettuyendung');

    // xu ly gio hang
    Route::group(['prefix'=>'cart'], function()
    {
    	Route::get('add/{id}', 'cartcontroller@getaddcart');
    	Route::get('show','cartcontroller@cartshow');
    	Route::post('show', 'cartcontroller@postmail');
		Route::get('delete/{rowid}','cartcontroller@cartdelete');
		Route::get('update','cartcontroller@cartupdate');

    });

    Route::group(['prefix' => 'api','middleware' => 'cors'], function() 
    {
			Route::get('sanphamnoibat','homecontroller@getjson');
			Route::get('cateproduct','homecontroller@getapicateproduct');
			Route::get('Question','homecontroller@getapi');
			
	});
    


});
Route::any('{all}', function () {
    return view('fontend.home.error');
});


