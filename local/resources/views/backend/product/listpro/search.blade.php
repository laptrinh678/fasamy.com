@extends('backend.master.index')
@section('content')
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<div class="page-content">
	<div class="page-header">
	<h1>
		Kết quả tìm kiếm
		<small>
			<i class="ace-icon fa fa-angle-double-right"></i>
			<a href="{{url('admin/product/listpro/add')}}"> Thêm sản phẩm mới</a>
		</small>
			@include('errors.note')
	</h1>
	</div><!-- /.page-header -->
	<br>
	<div class="row">
		<div class="col-xs-12">
			<!-- PAGE CONTENT BEGINS -->
			<div class="row">
				<div class="col-xs-12">
					<table id="simple-table" class="table  table-bordered table-hover">
						<thead>
							<tr>
								
								<th class="detail-col">Id</th>
								<th>Tên sản phẩm</th>
								<th>Danh mục</th>
								<th class="hidden-480">Ảnh</th>
								<th class="hidden-480">Ảnh 2</th>

								<!--<th class="hidden-480">Giá</th>-->
							
								
								<!--<th class="hidden-480">Trạng thái</th>-->
								<!--<th class="hidden-480">Tình trạng</th>-->
								<th class="hidden-480">Hiển thị</th>
								<th class="hidden-480">Nổi bật</th>
								<th>Hành động</th>
							</tr>
						</thead>
						<tbody>
							@foreach($product as $list)
							<tr>
								
								<td class="center">
									{{$list->id}}
								</td>
								<td >
									{{$list->pro_name}}
								</td>
								<td class="hidden-480">
									@if(!empty($list->cateproductmodel->cat_name))
												{{$list->cateproductmodel->cat_name}}
											@else
												{{'None'}}
											@endif
								</td>
								<td >
									<img width="80" src="{{asset('public/backend/product/'.$list->pro_img)}}" class="thumbnail">
								</td>
								<td>
								
									<img width="80" src="{{asset('public/backend/product/'.$list->pro_img2)}}" class="thumbnail">
								</td>
								<!--<td class="hidden-480">
									{{number_format($list->pro_price,2)}}
								</td>-->
								
								<!--<td class="hidden-480">
									@if($list->pro_trangthai==1)
									{{'còn hàng'}}
								@else
									{{'hết hàng'}}
								@endif
								</td>
								<td class="hidden-480">
								@if($list->pro_tinhtrang==1)
									{{'Mới'}}
								@else
									{{'Cũ'}}
								@endif
								</td>-->
								<td class="hidden-480">
								@if($list->online==1)
									{{'Hiển thị'}}
								@else
									{{'Ẩn'}}
								@endif
								</td>
								<td class="hidden-480">
								@if($list->pro_noibat==0)
									{{'Bình thường'}}
								@elseif($list->pro_noibat==1)
									{{'Nổi bật'}}
								@elseif($list->pro_noibat==2)
									{{'Mới'}}
								@elseif($list->pro_noibat==3)
									{{'Nhóm A'}}
								@elseif($list->pro_noibat==5)
								{{'Nhóm B'}}
									@elseif($list->pro_noibat==6)
								{{'Nhóm C'}}
									@elseif($list->pro_noibat==7)
								{{'Nhóm D'}}
								@elseif($list->pro_noibat==8)
								{{'Nhóm E'}}
								@endif
								</td>
								<td>
									<div class="hidden-sm hidden-xs btn-group">
										<button class="btn btn-xs btn-success">
											<a href="{{url('admin/product/listpro/add')}}"><i class="fa fa-plus-circle" aria-hidden="true"></i></a>
										</button>

										<button class="btn btn-xs btn-info">
											<a href="{{url('admin/product/listpro/edit')}}/{{$list->id}}"><i class="ace-icon fa fa-pencil bigger-120"></i></a>
										</button>

										<button class="btn btn-xs btn-danger">
											<a onclick="return confirm('Bạn có muốn xóa không ?');"  href="{{url('admin/product/listpro/delete')}}/{{$list->id}}">
											<i class="ace-icon fa fa-trash-o bigger-120"></i>
											</a>
										</button>
									</div>
								</td>
							</tr>
							@endforeach()
						</tbody>
					</table>
				</div><!-- /.span -->
			
				
			</div><!-- /.row -->
		</div><!-- /.col -->
	</div><!-- /.row -->
</div><!-- /.page-content -->

@endsection('content')

