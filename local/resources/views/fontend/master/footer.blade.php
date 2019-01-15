<!-- THƯƠNG HIỆU ĐỒNG HÀNH CÙNG CHÚNG TÔI-->
<div class="container-fluid duantieubieu wow animated zoomIn">
    <div class="row">
       <div class="category_full">
            <div class="tab">
                <span class="dcm">
                THƯƠNG HIỆU ĐỒNG HÀNH CÙNG CHÚNG TÔI
                   <i class="fa fa-caret-right" aria-hidden="true"></i>
                   </span>
                <p class="arrow_cate"></p> 
            </div>
        </div>
      
    </div>
    <div class="row">
        <!--congtrinhdangthuchien_carosel -->
          <div class="owl-carousel owl-theme danhgiackhachhang_carosel">
            @foreach($quangcao as $val)
           <div class="item">
                <a href=""><img class="hvr-wobble-skew" src="{{url('public/backend/block')}}/{{$val->img}}" alt=""></a>
          </div>
          @endforeach
        

          </div>
           
    </div>
</div>
<!-- THƯƠNG HIỆU ĐỒNG HÀNH CÙNG CHÚNG TÔI-->
<!-- bat dau dang ky email -->
<div class="container-fluid  wow animated zoomIn dangkynhanemail">
    <div class="row">
      <div class="col-md-6 wow slideInRight">
          <div class="left_15"><p align="right"><i class="fa fa-envelope-o" aria-hidden="true"></i></p></div>
          <div class="right_85">
            <p>ĐỂ KHÔNG BỎ LỠ THÔNG TIN HỮU ÍCH TỪ CHÚNG TÔI</p>
            <h3 class="roboto_bold">HÃY ĐĂNG KÝ NHẬN EMAIL</h3>
          </div>
      </div>
      <div class="col-md-6 formemail wow slideInLeft">
        <form action="" method="post">
          <input type="email" required="" placeholder="Nhập địa chỉ e-mail" class="input_text">
          <input type="submit" value="ĐĂNG KÝ" class="inputsubmit">
          {{csrf_field()}}
        </form>
      </div>
    </div>
</div>
<!-- start footer-->
<footer class="wow animated zoomIn thongtinfooter">
      <div class="row">
        <div class="col-md-4 wow slideInRight">
           <h4 class="title_f">DANH MỤC</h4>
           <ul class="ulfooter">
            @foreach($categories as $val)
             <li><a href="{{url("$val->cat_slug.html")}}">{{$val->cat_name}}</a></li>
             @endforeach
            
           </ul>
        </div>
        <div class="col-md-4 thongtinhuuich">
           <h4 class="title_f">THÔNG TIN HỮU ÍCH</h4>
           <ul class="ulfooter">
            @foreach($post_tintuc as $val)
             <li><a href="{{url("chi-tiet-tin/$val->post_slug.html")}}">{{$val->post_name}}</a></li>
            @endforeach()
          
           </ul>
        </div>
         <div class="col-md-4 wow slideInLeft">
          
          <h4 class="title_f">LIÊN HỆ</h4>
            <p class="title_f_2">{{$header_footer->name}}<p>
           <ul class="ulfooter">
             <li><p><i class="fa fa-home" aria-hidden="true"></i> {{$header_footer->adress}}</p></li>
            <li><p> <i class="fa fa-mobile" aria-hidden="true"></i> Hotline:{{$header_footer->hotline}}</p></li>
            <li><p> <i class="fa fa-envelope-o" aria-hidden="true"></i> Email:{{$header_footer->email}}</p></li>
           </ul>

        </div>
    </div>
  <!--<div class="call-mobile">

      <a id="callnowbutton" href="tel:0988.293.366">0988.392.366</a><i class="fa fa-phone"></i>
</div>-->
<div class="hotline">
<div id="phonering-alo-phoneIcon" class="phonering-alo-phone phonering-alo-green phonering-alo-show">
<div class="phonenumber"><span>{{$header_footer->didong}}</span></div>
<div class="phonering-alo-ph-circle"></div>
<div class="phonering-alo-ph-circle-fill"></div>
<div class="phonering-alo-ph-img-circle">
<a class="pps-btn-img " title="Liên hệ" href="tel:{{$header_footer->didong}}"> <img src="{{url('public/fontend/images')}}/v8TniL3.png" alt="Liên hệ" width="50" class="img-responsive"> </a>
</div>
</div>
</div>
   
</footer>
<!-- footer-->
<script>
   $(document).ready(function() {
              var owl = $('.danhgiackhachhang_carosel');
              owl.owlCarousel({
                margin: 30,
                nav: true,
                loop: true,
                autoplay: false,
                autoplayTimeout: 1000,
                responsive: {
                  0: {
                    items: 3
                  },
                  600: {
                    items: 8
                  },
                  1000: {
                    items: 8
                  }
                }
              })
            });
</script>