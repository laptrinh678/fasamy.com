@extends('fontend.master.index')
 @section('title')
 	{{$detailproductId->pro_name}}
 @endsection
 @section('header_style')
  <script src="{{url('public/fontend/bootstrap')}}/bootstrap3.4.0.min.js"></script>
<script type="text/javascript" src="{{url('public/fontend/fancybox')}}/js/vendor/xzoom.min.js"></script>
<link rel="stylesheet" type="text/css" href="{{url('public/fontend/fancybox')}}/css/xzoom.css" media="all" /> 
<!-- hammer plugin here -->
<script type="text/javascript" src="{{url('public/fontend/fancybox')}}/hammer.js/1.0.5/jquery.hammer.min.js"></script>  
<!--[if lt IE 9]><script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
<link type="text/css" rel="stylesheet" media="all" href="{{url('public/fontend/fancybox')}}/fancybox/source/jquery.fancybox.css" />
<link type="text/css" rel="stylesheet" media="all" href="{{url('public/fontend/fancybox')}}/magnific-popup/css/magnific-popup.css" />
<script type="text/javascript" src="{{url('public/fontend/fancybox')}}/fancybox/source/jquery.fancybox.js"></script>
<script type="text/javascript" src="{{url('public/fontend/fancybox')}}/magnific-popup/js/magnific-popup.js"></script>

<link rel="stylesheet" href="{{url('public/fontend/css')}}/detailproduct.css" />    
 @endsection('header_style')

@section('content')

 
 <section class="detail_pro">
	<div class="container">
		<div class="row">
			<div class="col-md-8">
				<div class="mottram detail_pro_left">
					
				
				<h1 class="titel_detail_pro"><span>Trang chủ</span> <i class="fa fa-angle-double-right" aria-hidden="true"></i> <span>Sản phẩm</span> <i class="fa fa-angle-double-right" aria-hidden="true"></i> <span>{{$detailproductId->cateproductmodel->cat_name}}</span></h1>

				<div class="img_detail_pro">
					<!--<img id="img_small" src="{{url('public/backend/product')}}/{{$detailproductId->pro_img}}" alt="" width="640" height="360" />-->
				<div class="large-5 column">
			        <div class="xzoom-container">
			        	<div class="x_zoom_right">
			        		<div class="baymuoi">
			        			 <img class="xzoom" id="xzoom-default" src="{{url('public/backend/product')}}/{{$detailproductId->pro_img}}" xoriginal="{{url('public/backend/product')}}/{{$detailproductId->pro_img}}" />
			        		</div>
			        		
			        		 <div class="bamuoi">
			                 	<p class="chiase" align="center">Chia sẻ </p>
			                 	<p><span><div class="fb-share-button" data-href="http://nhamoipro.xyz/ao-thu-dong/ao-len-nu-canh-doi-thu-dong.html" data-layout="button_count" data-size="large" data-mobile-iframe="true"><a target="_blank" href="https://www.facebook.com/sharer/sharer.php?u=http%3A%2F%2Fnhamoipro.xyz%2Fao-thu-dong%2Fao-len-nu-canh-doi-thu-dong.html&amp;src=sdkpreparse" class="fb-xfbml-parse-ignore">Chia sẻ</a></div></span></p>
			                 	<!--<p align="center">
			                 		<a href="{{url("dowload/$detailproductId->pro_img")}}">
			                 			<img class="img_dowload" src="{{url('public/fontend/images')}}/download.png" alt="">
			                 		</a>
			                 	</p>-->
			                 </div>
			        	</div>
			        
			          <div class="xzoom-thumbs">
			          @if(count($value_img_decode)>0)
			          @foreach($value_img_decode as $val)
			            <a href="{{url('public/backend/imgdetail')}}/{{$val}}">
			              <img class="xzoom-gallery" width="80" src="{{url('public/backend/imgdetail')}}/{{$val}}"  xpreview="{{url('public/backend/imgdetail')}}/{{$val}}" title="The description goes here">
			          </a>
			          @endforeach
			         @endif
			            
			            
			          </div>
			        </div>        
			      </div>

			      
				</div>
				</div>
				
			</div>



			<div class="col-md-4 thongtinchitietsp col-xs-12 col-sm-12">
				<div class="mottram">
				<h1 class="title_detail">{{$detailproductId->pro_name}}</h1>
				<div class="item_tt_sp">
					<p class="gia">Giá: <span>{{number_format($detailproductId->pro_price) }} VNĐ</span></p>
				</div>
				
				<div class="masp item_tt_sp">
					<p>Mã sản phẩm: <span>{{$detailproductId->pro_masp}}</span></p>
				</div>
				<div class="trangthai item_tt_sp">
					<p>Trạng thái: <span> @if($detailproductId->pro_trangthai==0)
									{{'Hết hàng'}}
								@elseif($detailproductId->pro_trangthai==1)
									{{'Còn hàng'}}
								@elseif($detailproductId->pro_trangthai=='')
									{{'None'}}
									@endif</span>
					</p>
				</div>
				<div class="mausac item_tt_sp">
					<p>Màu sắc</p>
					<ul>
						<?php
						$mausac = $detailproductId->mausac;
						$mausac_decode = json_decode($mausac, true);
						if(isset($mausac_decode))
						{
							foreach ($mausac_decode as $value) 
							{
								echo '<li> '.$value. ' </li>';
							}
						}
							

						 ?>
					
					</ul>
				</div>
				<div class="kichthuoc item_tt_sp">
					<p>Size</p>
					<ul>
						<?php
							$kichthuoc = $detailproductId->kichthuoc;
							$kichthuoc_decode = json_decode($kichthuoc, true);
							if(isset($kichthuoc_decode))
						{
							foreach ($kichthuoc_decode as $value) 
							{
								echo '<li> '.$value. ' </li>';
							}
						}
							

						 ?>
					
					</ul>
				</div>
				
				<div class="soluong item_tt_sp">
				</div>
				<div class="huongdanmuahang item_tt_sp">
					<p><a class="" href="{{url('cart/add')}}/{{$detailproductId->id}}">HƯỚNG DẪN MUA HÀNG</a></p>
				</div>
				
			</div>
			</div>
		</div>
		<div class="row content_detail_pro">
			<div class="col-md-8 col-xs-12 col-sm-12 ">
				 <ul class="nav nav-tabs">
		    <li class="active"><a data-toggle="tab" href="#home">CHI TIẾT SẢN PHẨM</a></li>
		    <li><a data-toggle="tab" href="#menu1">BÌNH LUẬN</a></li>
		    <li><a data-toggle="tab" href="#menu2">Menu 2</a></li>
		    <li><a data-toggle="tab" href="#menu3">Menu 3</a></li>
		  </ul>

		  <div class="tab-content">
		    <div id="home" class="tab-pane fade in active">
		    
		     {!!$detailproductId->description3!!}
		     
		    </div>
		    <div id="menu1" class="tab-pane fade">
		      <h3>Menu 1</h3>
		      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
		    </div>
		    <div id="menu2" class="tab-pane fade">
		      <h3>Menu 2</h3>
		      <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
		    </div>
		    <div id="menu3" class="tab-pane fade">
		      <h3>Menu 3</h3>
		      <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
		    </div>
		  </div>
					
			</div>
			<div class="col-md-4 splienquan col-xs-12 col-sm-12">
				<h5>SẢN PHẨM LIÊN QUAN</h5>
				@foreach($product_lienquan as $val)
				<div class="content">
					<div class="left_30">
						<a href="{{url("$slugcate/$val->pro_slug.html")}}" class="">
                <img src="{{url('public/backend/product')}}/{{$val->pro_img }}" alt="{{$val->pro_name}}">
              </a>
					</div>
					<div class="right_70">
						<p> <a href="{{url("$slugcate/$val->pro_slug.html")}}"> {{$val->pro_name}}</a></p>
						<p>{{number_format($val->pro_price)}}VNĐ</p>
					</div>
				</div>
				@endforeach
			</div>
		</div>
		
			

			
			
			
	</div>	

	
 	
 </section>
@endsection
@section('script')
    <script src="{{url('public/fontend/fancybox')}}/js/foundation.min.js"></script>
    <script src="{{url('public/fontend/fancybox')}}/js/setup.js"></script>
@endsection('script')