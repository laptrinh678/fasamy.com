@extends('backend.master.index')
@section('content')
<script type="text/javascript" src="assets/ckeditor/ckeditor.js"></script>
<script type="text/javascript" src="assets/ckeditor/ckfinder/ckfinder.js"></script>
<div class="page-content">		
	<div class="page-header">
		<h1>
			Gửi Mai cho khách hàng
			<small>
				<i class="ace-icon fa fa-angle-double-right"></i>
				Thông tin gửi mail
			</small>
		</h1>
	</div><!-- /.page-header -->
	<div class="row">
		<div class="col-xs-12">
			<!-- PAGE CONTENT BEGINS -->
			<form class="form-horizontal" role="form" method="post">
			<div class="form-group">
					@include('errors.note')
					<label class="col-sm-3 control-label no-padding-right" for="form-field-1">Email gửi đến</label>
					<div class="col-sm-9">
						<input type="email" required="" id="form-field-1" name="email" placeholder="Nhập tên" class="col-xs-10 col-sm-5" />
						<span style="color: red;">{{$errors->first('member_name')}}</span>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label no-padding-right" for="form-field-1">Tiêu đề mail</label>
					<div class="col-sm-9">
						<input type="text" required="" id="form-field-1" name="name" placeholder="Nhập Email" class="col-xs-10 col-sm-5" />
						<span style="color: red;">{{$errors->first('member_name')}}</span>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">Nội dung mail</label>
						<div class="col-sm-9">
						  <!--<textarea id="" cols="30" rows="10" name="content"></textarea>-->
						  <textarea class="ckeditor" name="description1" id="" cols="30" rows="10"></textarea>
						</div>
				</div>
				<div class="clearfix form-actions">
					<div class="col-md-offset-3 col-md-9">
							<input type="submit" value="Submit">
						&nbsp; &nbsp; &nbsp;
							<input type="reset" value="Reset">
					</div>
				</div>
				{{csrf_field()}}
			</form>
		</div><!-- /.col --
	</div><!-- /.row -->
</div><!-- /.page-content -->
@endsection('content')

	