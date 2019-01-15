@extends('backend.master.index')
@section('content')
<div class="page-content">		
	<div class="page-header">
		<h1>
			Thêm thành viên
			<small>
				<i class="ace-icon fa fa-angle-double-right"></i>
				Thông tin thành viên
			</small>
		</h1>
	</div><!-- /.page-header -->
	<div class="row">
		<div class="col-xs-12">
			<!-- PAGE CONTENT BEGINS -->
			@foreach($users as $ls_user)
			<form class="form-horizontal" role="form" method="post">
				<div class="form-group">
					<label class="col-sm-3 control-label no-padding-right" for="form-field-1">Tên thành viên</label>
					<div class="col-sm-9">
						<input type="text" id="form-field-1" name="member_name" value="{{$ls_user->name}}" class="col-xs-10 col-sm-5" />
						<span style="color: red;">{{$errors->first('member_name')}}</span>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">Email</label>
						<div class="col-sm-9">
							<input type="text" name="member_mail" value="{{$ls_user->email}}">
							<span style="color: red;">{{$errors->first('member_mail')}}</span>
						</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">Pass word</label>
					<div class="col-sm-9">
						<input type="text" name="member_pass" value="{{$ls_user->password}}">
						<span style="color: red;">{{$errors->first('member_pass')}}</span>
					</div>
				</div>
				<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1"> Quyền truy cập</label>
					<div class="col-sm-9">
						<select name="member_level" id="">
							<option value="">Lựa chọn quyền truy cập</option>
								<option value="1">Admin</option>
								<option value="0">User</option>
						</select>
						<span style="color: red;">{{$errors->first('member_level')}}</span>
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
			@endforeach
		</div><!-- /.col --
	</div><!-- /.row -->
</div><!-- /.page-content -->
@endsection('content')

	