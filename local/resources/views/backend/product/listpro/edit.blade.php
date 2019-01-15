@extends('backend.master.index')
@section('content')
@include('errors.functions')
<script type="text/javascript" src="assets/ckeditor/ckeditor.js"></script>
<script type="text/javascript" src="assets/ckeditor/ckfinder/ckfinder.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script><!--  co cai nay moi chay duoc upload image 21/6/2018 Egroup-->
<div class="page-content">		
	<div class="page-header">
		<h1>
			Sửa sản phẩm
			<small>
				<i class="ace-icon fa fa-angle-double-right"></i>
				Sửa thông tin sản phẩm
			</small>
		</h1>
	</div><!-- /.page-header -->
	<div class="row">
		<div class="col-xs-12">
			<!-- PAGE CONTENT BEGINS -->
			<form class="form-horizontal" role="form" method="post" enctype="multipart/form-data">
				<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1"> Danh mục sản phẩm</label>
					<div class="col-sm-3">
	                    <select required name="cat_id" class="select_lap">
										<option value="">Danh mục</option>
										@foreach ($cat as $val)
											@if($productId->cat_id == $val->id)
										<option selected value="{{$val->id}}.{{$val->cat_slug}}">{{$val->cat_name}}</option>
											@else
											<option value="{{ $val->id }}.{{$val->cat_slug}}">{{$val->cat_name}}</option>
											@endif
										@endforeach
				         </select>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Tên sản phẩm </label>
					<div class="col-sm-9">
						<input type="text" required="" id="form-field-1" name="pro_name"  value="{{$productId->pro_name}}" class="col-xs-10 col-sm-5" />
					</div>
				</div>

				<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">Ảnh sản phẩm1</label>
					<div class="col-sm-9"> 
						<div id="div_1">
							<!--<div class="div_border">
								<div class="box-preview-img"></div>	
							</div>
					       <input type="file" name="pro_newimg" multiple="true" onchange="previewImg(event);" id="img_file" value="{{$productId->pro_img}}" accept="image/*">
							<button type="reset" class="btn-reset btn_reset_lap">Làm mới</button>-->
							<div class="div_border">
								<img class="anhedit_lap" id="blah2" src="{{url('public/backend/product')}}/{{$productId->pro_img}}" alt="your image" />
							</div>
					         <input type='file' id="imgInp2" name="pro_newimg" value=""  />
							<button type="reset" class="btn-reset btn_reset_lap">Làm mới</button>
						</div>
					</div>
				</div>

				<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">Ảnh sản phẩm 2</label>
					<div class="col-sm-9">
						<div id="div_2">	
						 <!--<div class="div_border">
						 	<div class="box-preview-img" id="box_preview2"></div>
						 </div>
							<input type="file"  name="pro_newimg2" multiple="true" onchange="previewImg2(event);" id="img_file2" accept="image/*" value="{{$productId->pro_img2}}">
							<button type="reset" class="btn-reset2 btn_reset_lap">Làm mới</button>-->
							<div class="div_border">
						 	<img class="anhedit_lap" id="output" src="{{url('public/backend/product')}}/{{$productId->pro_img2}}" alt="your image" />
						 </div>
							<input type="file" accept="image/*" onchange="loadFile(event)" name="pro_newimg2" value="">
							<button type="reset" class="btn-reset2 btn_reset_lap">Làm mới</button>
						</div>
					</div>
				</div>

				<div class="form-group">
					<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Giá sản phẩm </label>
					<div class="col-sm-3">
						<input value="{{$productId->pro_price}}" type="number" name="pro_price" class="form-control">
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Mã sản phẩm </label>
					<div class="col-sm-3">
						<input type="text" value="{{$productId->pro_masp}}" name="pro_masp" class="form-control">
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label no-padding-right" for="form-field-1">Màu sắc</label>
					<div class="col-sm-3">
						<input type="text" value="{{$productId->mausac}}" name="mausac" class="form-control">
					</div>
				</div>

				<div class="form-group">
					<label class="col-sm-3 control-label no-padding-right" for="form-field-1">Kích cỡ sản phẩm</label>
					<div class="col-sm-3">
						<textarea type="text" name="kichthuoc"  cols="50" rows="6" placeholder="<li> <span>S</span></li> <li> <span>M</span> </li> <li> <span>XL</span> </li>" >
							{{$productId->kichthuoc}}
						</textarea>
					</div>
				</div>

				<div class="form-group">
					<label class="col-sm-3 control-label no-padding-right" for="form-field-1">Trạng thái</label>
					<div class="col-sm-3">
						<select name="pro_trangthai" id="">
							@if($productId->pro_trangthai==0)
								<option value="0">{{'Hết hàng'}}</option>
								@elseif($productId->pro_trangthai==1)
									<option value="1">{{'Còn hàng'}}</option>
								@endif
							<option value="1">Còn hàng</option>
							<option value="0">Hết hàng</option>
						</select>
					</div>
				</div>
				<!--<div class="form-group">
					<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Giá sản phẩm </label>
					<div class="col-sm-3">
						<input required value="{{$productId->pro_price}}" type="number" name="pro_price" class="form-control">
					</div>
				</div>-->
				<!--<div class="form-group">
					<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Giá cũ </label>
					<div class="col-sm-3">
						<input required value="{{$productId->pro_oldprice}}" type="number" name="pro_oldprice" class="form-control">
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Giá mới</label>
					<div class="col-sm-3">
						<input required value="{{$productId->pro_newprice}}" type="number" name="pro_newprice" class="form-control">
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Giảm Giá </label>
					<div class="col-sm-3">
						<input  type="number" name="pro_sale" class="form-control" value="{{$productId->pro_sale}}">
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Mã sản phẩm </label>
					<div class="col-sm-3">
						<input type="text" name="pro_masp" class="form-control" value="{{$productId->pro_masp}}">
					</div>
				</div>
				<div class="space-4"></div>
				<div class="form-group">
					<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Phụ kiện </label>
					<div class="col-sm-3">
						<input type="text" name="pro_phukien" class="form-control" value="{{$productId->pro_phukien}}">
					</div>
				</div>-->
				<!--<div class="form-group">
					<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Bảo hành </label>
					<div class="col-sm-3">
						<input type="text" name="pro_baohanh" class="form-control" value="pro_baohanh">
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Trạng thái </label>
					<div class="col-sm-3">
						<select name="pro_trangthai" id="">
							<option value="1">Mới</option>
							<option value="0">Cũ</option>
						</select>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Tình trạng </label>
					<div class="col-sm-3">
						<select name="pro_tinhtrang" id="">
							<option value="1">Còn hàng</option>
							<option value="0">Hết hàng</option>
						</select>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Khuyến mãi </label>
					<div class="col-sm-3">
						<input type="text" name="pro_khuyenmai" class="form-control" value="pro_khuyenmai">
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Xuất xứ </label>
					<div class="col-sm-3">
						<input type="text" name="pro_xuatxu" class="form-control" value="pro_xuatxu">
					</div>
				</div>-->
				<div class="form-group">
					<label class="col-sm-3 control-label no-padding-right" for="form-field-1">Loại sản phẩm </label>
					<div class="col-sm-3">
						<select name="pro_noibat" id="">
						<option value="0">Sản phẩm giảm giá</option>
							<option value="1">Sản phẩm Nổi bật</option>
							<option value="2">Sản phẩm Mới</option>
						</select>
					</div>
				</div>

				<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">MÔ TẢ SẢN PHẨM</label>
					<div class="col-sm-9">
						<textarea class="ckeditor"  name="description3" id="a" cols="70" rows="10" >
							{{$productId->description3}}
						</textarea>
						<script type="text/javascript">
				      		CKEDITOR.replace('description3');
				      </script>﻿			
					</div>
				</div>

				<!--<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">Tiêu điểm</label>
					<div class="col-sm-9">
						<textarea class="ckeditor" required name="description1" id="" cols="30" rows="10" >
							{{$productId->pro_gtngan}}
						</textarea>
						<script type="text/javascript">
				      var editor = CKEDITOR.replace('description1',{
				       language:'vi',
				       filebrowserImageBrowseUrl: '../../ckeditor/ckfinder/ckfinder.html?Type=Images/',
				       filebrowserImageBrowseUrl: '../../ckeditor/ckfinder/ckfinder.html?Type=Flash/',
				       filebrowserImageBrowseUrl: '../../ckeditor/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images',
				       filebrowserImageBrowseUrl: '../../ckeditor/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash',
			
				       });
				      </script>﻿			
					</div>
				</div>
				<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">Thông số kỹ thuật</label>
				<div class="col-sm-9">
					<textarea class="ckeditor" required name="description2" id="" cols="30" rows="10" >
						{{$productId->pro_gtchitiet}}
					</textarea>
					<script type="text/javascript">
				      var editor = CKEDITOR.replace('description2',{
				       language:'vi',
				       filebrowserImageBrowseUrl: '../../ckeditor/ckfinder/ckfinder.html?Type=Images/',
				       filebrowserImageBrowseUrl: '../../ckeditor/ckfinder/ckfinder.html?Type=Flash/',
				       filebrowserImageBrowseUrl: '../../ckeditor/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images',
				       filebrowserImageBrowseUrl: '../../ckeditor/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash',
			
				       });
				      </script>﻿					
				</div>
				</div>

				<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">Hồ sơ dự án</label>
				<div class="col-sm-9">
					<textarea class="ckeditor" required name="description4" id="" cols="30" rows="10" >
						{{$productId->description4}}
					</textarea>
					<script type="text/javascript">
				      var editor = CKEDITOR.replace('description4',{
				       language:'vi',
				       filebrowserImageBrowseUrl: '../../ckeditor/ckfinder/ckfinder.html?Type=Images/',
				       filebrowserImageBrowseUrl: '../../ckeditor/ckfinder/ckfinder.html?Type=Flash/',
				       filebrowserImageBrowseUrl: '../../ckeditor/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images',
				       filebrowserImageBrowseUrl: '../../ckeditor/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash',
			
				       });
				      </script>﻿					
				</div>
				</div>-->
				<div class="form-group">
					<label class="col-sm-3 control-label no-padding-right" for="form-field-1">Danh mục cha tổng</label>
					<div class="col-sm-3">
						<select name="catcha" id="" required="">
							<option value="">Chọn danh mục cha tổng</option>
							@foreach($catcha as $val)
							<option value="{{$val->id}}">{{$val->cat_name}}</option>
							@endforeach
							
						</select>
					</div>
				</div>

				<div class="form-group">
					<label class="col-sm-3 control-label no-padding-right" for="form-field-1">Title</label>
					<div class="col-sm-3">
						<textarea type="text" name="title"  cols="50" rows="2" >
							{{$productId->title}}
						</textarea>
					</div>
				</div>

			     <div class="form-group">
					<label class="col-sm-3 control-label no-padding-right" for="form-field-1">Link liên  kết</label>
					<div class="col-sm-3">
						<textarea type="text" name="link" id="a" cols="50" rows="2" >
							{{$productId->link}}
						</textarea>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label no-padding-right" for="form-field-1">Meta tab</label>
					<div class="col-sm-3">
					<textarea type="text" name="metatab"  cols="50" rows="2" placeholder="Bạn vui lòng nhập thẻ Metatab" >
							{{$productId->metatab}}
					</textarea>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label no-padding-right" for="form-field-1">Meta description - từ khóa</label>
					<div class="col-sm-3">
						<textarea type="text" name="metadescription"  cols="50" rows="2" placeholder="Bạn vui lòng nhập mô tả ngắn" >
							{{$productId->metadescription}}
						</textarea>
					</div>
				</div>


				<div class="form-group" >
				
					<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Trạng thái hiển thị</label>
					<div class="col-sm-3">
						<select name="online" id="">
							<option value="1">Hiển thị</option>
							<option value="0">Không hiển thị</option>
						</select>
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
		</div>
	</div>
</div><!-- /.page-content -->
 <script>
	function readURL(input) {
  if (input.files && input.files[0]) {
    var reader = new FileReader();
    reader.onload = function(e) {
      $('#blah2').attr('src', e.target.result);
    }
    reader.readAsDataURL(input.files[0]);
  }
}
$("#imgInp2").change(function() {
  readURL(this);
});
</script>
<script>
  var loadFile = function(event) {
    var reader = new FileReader();
    reader.onload = function(){
      var output = document.getElementById('output');
      output.src = reader.result;
    };
    reader.readAsDataURL(event.target.files[0]);
  };
</script>
 
@endsection('content')

