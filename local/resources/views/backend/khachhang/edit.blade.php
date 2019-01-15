@extends('backend.master.index')
@section('content')
<div class="page-content">		
	<div class="page-header">
		<h1>
			Sửa khách hàng
			<small>
				<i class="ace-icon fa fa-angle-double-right"></i>
				Sửa Thông tin khách hàng
			</small>
		</h1>
	</div><!-- /.page-header -->
	<div class="row">
		<div class="col-xs-12">
			<!-- PAGE CONTENT BEGINS -->
			<form class="form-horizontal" role="form" method="post">
				<div class="form-group">
					<label class="col-sm-3 control-label no-padding-right" for="form-field-1">Tên khách hàng</label>
					<div class="col-sm-9">
						<input type="text" id="form-field-1"  name="name"  value="{{$khachhangid->name}}" class="col-xs-10 col-sm-5" />
						
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">Email</label>
						<div class="col-sm-9">
								<input type="text" id="form-field-1"  name="email" value="{{$khachhangid->email}}" class="col-xs-10 col-sm-5" />
						</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">Facebook</label>
						<div class="col-sm-9">
								<input type="text" id="form-field-1"  name="facebook" value="{{$khachhangid->facebook}}" class="col-xs-10 col-sm-5" />
						</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">Điện thoại</label>
						<div class="col-sm-9">
								<input type="text" id="form-field-1"  name="dienthoai" value="{{$khachhangid->dienthoai}}" class="col-xs-10 col-sm-5" />
						</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">Ngày sinh</label>
						<div class="col-sm-9">
								<input type="date" id="form-field-1" value="{{$khachhangid->ngaysinh}}"  name="ngaysinh"  class="col-xs-10 col-sm-5" />
						</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">Địa chỉ</label>
						<div class="col-sm-9">
								<input type="text" id="form-field-1"  name="diachi" value="{{$khachhangid->diachi}}" class="col-xs-10 col-sm-5" />
						</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">Ghi chú</label>
						<div class="col-sm-9">
								<textarea name="ghichu" id="" cols="70" rows="10">
									{{$khachhangid->ghichu}}
								</textarea>
						</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">Loại khách hàng</label>
						<div class="col-sm-9">
							<select name="loaikh" id="">
								<option value="{{$khachhangid->loaikh}}">
									@if($khachhangid->loaikh==1)
									{{' Lấy hàng Thường xuyên'}}
								@elseif($khachhangid->loaikh==2)
									{{'Lấy hàng Thỉnh thoảng'}}
								@elseif($khachhangid->loaikh==3)
									{{'Chưa lấy hàng-tiềm năng'}}
								
								@endif
								</option>
								<option value="1">Lấy hàng thường xuyên</option>
								<option value="2">Lấy hàng thỉnh thoảng</option>
								<option value="3">Chưa lấy hàng-tiềm năng</option>
							</select>
							
						</div>
				</div>
				
				<div class="space-4"></div>
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

	