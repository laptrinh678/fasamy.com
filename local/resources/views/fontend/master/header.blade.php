
@section('header_style')
<script src="{{url('public/fontend')}}/bootstrap/bootstrap3.4.0.min.js"></script>
@endsection('header_style')
@include('errors.sanpham')
 
<header>
    <div class="container-fluid animated fadeInRight">
     <div class="row">
      <div class="menu-top"> <!-- top menu top -->
            <div id="hotline-top" class="col-xs-12 col-md-6 col-lg-6">
                        <a href="#" title="Phí vận chuyển">Miễn phí vận chuyển nội thành Hà Nội hoặc từ 499.000Đ</a>
              </div>
            <ul class="col-xs-12 col-md-6 col-lg-6">
              <li class="cua-hang"><a href="http://fasamy.com/bai-viet/he-thong-cua-hang/">Cửa hàng</a></li>
              <li class="gioi-thieu"><a href="http://fasamy.com/bai-viet/gioi-thieu/gioi-thieu-ve-fasamy.html">Giới thiệu</a></li>
              <li class="tuyen-dung"><a href="{{url('registration.html')}}" >Đăng ký</a></li>
              <li class="ho-tro"><a href="{{url('logincustomer.html')}}">Đăng nhập</a></li>
            </ul>
          </div>
          <div id="banner"><!-- banner -->
          
            <!-- header logo and search box -->
            <div class="row">
              <div class="logo col-md-2 col-sm-4 col-xs-12">
                <h1>
                  <a href="{{url('')}}" id="logo"><img src="{{url('public/backend/header')}}/{{$header_footer->logo1}}" alt=""></a>
                </h1>
              </div>
              <div class="search col-md-6 col-sm-4 col-xs-12">
                <form action="{{url('search')}}" method="get" class="tkheader">
                <input type="text" placeholder="Tìm sản phẩm"  id="inputsearch" name="giatrisearch">
                <button type="submit" id="btsearch" class="btn search_item_header_dt"><i class="fa fa-search" aria-hidden="true"></i></button>
                {{csrf_field()}}
              </form>
                
              </div>
              <div class="right_header col-md-4 col-sm-4 col-xs-12 text-right">
                <div class="row">
                  <div class="item col-md-4 col-sm-4 col-xs-12">
                    <p class="text-center hotline-header">
                      <i class="fa fa-whatsapp" aria-hidden="true"></i>
                      <a href="tel:{{$header_footer->hotline}}" class="text-bottom">{{$header_footer->hotline}}</a>
                    </p>
                  </div>
                  
                  <div class="item col-md-4 col-sm-4 col-xs-12">
                    <p class="text-center checkout-cart">
                      <a href="{{url('cart/show')}}" class="text-bottom"> 
                        <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                        <span id="CartCount">
                        {{Cart::count()}}</span>
                        Giỏ hàng
                      </a>
                    </p>
                  </div>
                
                  <div class="item col-md-4 col-sm-4 col-xs-12">
                    <p class="text-center my-account">
                      
                        <i class="fa fa-user" aria-hidden="true"></i>
                       @include('errors.note')
                     
                    </p>
                  </div>
                </div>
              </div>
              <div class="clearfix"></div>
            </div>
            
          </div>

     

     </div>
      </div>
      
    </div>
  </header>
 
  <script type="text/javascript">
    $(document).ready(function()
    {
        $('#btsearch').click( function()
        {
            if($('#inputsearch').val()=='')
            {
                alert('Bạn vui lòng nhập giá trị tìm kiếm');
                return false;
            }
            else
            {
                return true;
            }

        });

      

    });
</script>