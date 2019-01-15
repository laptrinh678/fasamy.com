<!DOCTYPE html>
<html lang="en">
<head>
 <meta charset="UTF-8">
 <title>@yield('title')</title> 
 @yield('meta')
  <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
  <link rel="stylesheet" href="{{url('public/fontend')}}/font-awesome-4.7.0/css/font-awesome.min.css">
 
  <!-- css owlcarosel-->
  <link rel="stylesheet" href="{{url('public/fontend')}}/owl/owl.carousel.min.css">
  <link rel="stylesheet" href="{{url('public/fontend')}}/owl/owl.theme.default.min.css">
   <link rel="stylesheet" href="{{url('public/fontend')}}/bootstrap/bootstrap.css">
  <!-- end css owl carosel -->
  <!--landing -->
  <!-- -->
  <link rel="stylesheet" href="{{url('public/fontend')}}/css/stylesfasamy.css">

  <link rel="stylesheet" href="{{url('public/fontend')}}/css/toantrang.css">
  <link rel="stylesheet" href="{{url('public/fontend')}}/css/home.css">
  
  <link rel="stylesheet" href="{{url('public/fontend')}}/css/hover-min.css">
  <link rel="stylesheet" href="{{url('public/fontend')}}/css/animate.css">
  <link rel="stylesheet" href="{{url('public/fontend')}}/css/reponsive.css">

<script src="{{url('public/fontend')}}/bootstrap/bootstrap3.3.7.min.js"></script>
<script src="{{url('public/fontend')}}/js/jquery3.3.1.min.js"></script>
<script src="{{url('public/fontend')}}/owl/jquery.min.js"></script>
<script src="{{url('public/fontend')}}/owl/owl.carousel.js"></script>
<script src="{{url('public/fontend')}}/wow/wow.js"></script>


    @yield('header_style')
</head>
<body>
  <script>
  (function(s, u, b, i, z){
    u[i]=u[i]||function(){
      u[i].t=+new Date();
      (u[i].q=u[i].q||[]).push(arguments);
    };
    z=s.createElement('script');
    var zz=s.getElementsByTagName('script')[0];
    z.async=1; z.src=b; z.id='subiz-script';
    zz.parentNode.insertBefore(z,zz);
  })(document, window, 'https://widgetv4.subiz.com/static/js/app.js', 'subiz');
  subiz('setAccount', 'acpxfeuzgqcanpg0c897');
</script>

<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = 'https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v3.2&appId=137818360239180&autoLogAppEvents=1';
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
<div class="wrapper">
<!-- slider -->

<!-- end sldier -->
<!-- header -->
@include('fontend.master.header')
@include('fontend.master.menu')
<!-- end header -->
<div style="clear: both;"></div>
<!-- content -->

 @yield('content')
<!-- end logo -->
<!-- footer -->
 @include('fontend.master.footer')
<!-- end footer -->
</div>


<script>
    wow = new WOW(
      {
        animateClass: 'animated',
        offset:       30, /* chinh thoi gian an hien cua hieu ung wow*/
        callback:     function(box) {
          console.log("WOW: animating <" + box.tagName.toLowerCase() + ">")
        }
      }
    );
    wow.init();
    document.getElementById('moar').onclick = function() {
      var section = document.createElement('section');
      section.className = 'section--purple wow fadeInDown';
      this.parentNode.insertBefore(section, this);
    };
  </script>
  <script> 
$(document).ready(function()
{
  $('.item_nha').hover(function()
  {
    $(this).find('.shopingcart:first').toggle();

  });

});

</script>
</body>
@yield('script')
</html>