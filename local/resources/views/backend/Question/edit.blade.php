@extends('backend.master.index')
@section('content')
<div class="page-content">		
	<div class="page-header">
		<h1>
			Sửa câu hỏi
			<small>
				<i class="ace-icon fa fa-angle-double-right"></i>
				Thông tin câu hỏi
			</small>
		</h1>
	</div><!-- /.page-header -->
	<div class="row">
		<div class="col-xs-12">
			<!-- PAGE CONTENT BEGINS -->
			<form class="form-horizontal" role="form" method="post" enctype="multipart/form-data">
				
				<div class="form-group">
					<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Tên câu hỏi </label>
					<div class="col-sm-9">
						<input type="text" name="nameQuestion" id="" required=" placeholder="Nhập tên câu hỏi" value="{{$Question->nameQuestion}}" class="col-xs-12 col-sm-6 inputQuestion">
						
						 <div class="alertQuestion"><span style="color:red">{{$errors->first('nameQuestion')}}</span></div>
						
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label no-padding-right" for="form-field-1">Đáp án A </label>
					<div class="col-sm-9">
						<input type="text" required="" value="{{$Question->replyA}}" required="" id="form-field-1" name="replyA" placeholder="Nhập tên đáp án A" class="col-xs-10 col-sm-5" />
						<label class="col-xs-2 control-label no-padding-right chooseReply">
							<input name="chooseReply" type="radio" class="ace " value="A">
							<span class="lbl">Đáp án đúng</span>
						</label>
						 <div class="alertQuestion"><span style="color:red">{{$errors->first('replyA')}}</span></div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label no-padding-right" for="form-field-1">Đáp án B </label>
					<div class="col-sm-9">
						<input type="text" value="{{$Question->replyB}}" required="" id="form-field-1" name="replyB" placeholder="Nhập tên đáp án B" class="col-xs-10 col-sm-5" />
						<label class="col-xs-2 control-label no-padding-right chooseReply">
							<input name="chooseReply" type="radio" class="ace "  value="B">
							<span class="lbl">Đáp án đúng</span>
						</label>
						 <div class="alertQuestion"><span style="color:red">{{$errors->first('replyB')}}</span></div>
					</div>
					
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label no-padding-right" for="form-field-1">Đáp án C </label>
					<div class="col-sm-9">
						<input type="text" value="{{$Question->replyC}}" required="" id="form-field-1" name="replyC" placeholder="Nhập tên đáp án C" class="col-xs-10 col-sm-5" />
						<label class="col-xs-2 control-label no-padding-right chooseReply">
							<input name="chooseReply" type="radio" class="ace " value="C">
							<span class="lbl">Đáp án đúng</span>
						</label>
						 <div class="alertQuestion"><span style="color:red">{{$errors->first('replyC')}}</span></div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label no-padding-right" for="form-field-1">Đáp án D </label>
					<div class="col-sm-9">
						<input type="text" value="{{$Question->replyD}}" required="" id="form-field-1" name="replyD" placeholder="Nhập tên đáp án D" class="col-xs-10 col-sm-5" />
						<label class="col-xs-2 control-label no-padding-right chooseReply">
							<input name="chooseReply" type="radio" class="ace " value="D">
							<span class="lbl">Đáp án đúng</span>
						</label>
						 <div class="alertQuestion"><span style="color:red">{{$errors->first('replyD')}}</span></div>
					</div>
				</div>
					
				<div class="form-group">
					<label class="col-sm-3 control-label no-padding-right" for="form-field-1">Trạng thái</label>
					<div class="col-sm-3">
						<select name="status" id="">
							<option value="ON">Hiến thị</option>
							<option value="OFF">Ẩn</option>
						</select>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-3"></div>
					<div class="col-sm-9">
						<div class="alertQuestion"><span style="color:red">{{$errors->first('chooseReply')}}</span></div>
					</div>
					
				</div>

				
				
				

				<div class="clearfix form-actions">
					<div class="col-md-offset-3 col-md-9">
							<input type="submit" class="sub_mit_l" value="Lưu và quay vể trang list">
						&nbsp; &nbsp; &nbsp;
							<input type="reset" class="reset_l" value="Làm mới">
					</div>
				</div>
				{{csrf_field()}}
			</form>
		</div><!-- /.col -->
	</div>
</div>
<script src="assets/js/jquery-2.1.4.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>

<!-- page specific plugin scripts -->
<script src="assets/js/jquery.bootstrap-duallistbox.min.js"></script>
<script src="assets/js/jquery.raty.min.js"></script>
<script src="assets/js/bootstrap-multiselect.min.js"></script>
<script src="assets/js/select2.min.js"></script>
<script src="assets/js/jquery-typeahead.js"></script>

@endsection('content')

	