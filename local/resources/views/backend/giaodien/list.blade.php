@extends('backend.master.index')
@section('content')
<div class="page-content">
	<div class="page-header">
	<h1>
		Danh mục Kho giao diện
		<small>
			<i class="ace-icon fa fa-angle-double-right"></i>
			<a href="{{url('admin/giaodien/add')}}"> Thêm giao diện</a>
		</small>
			@include('errors.note')
	</h1>
	</div><!-- /.page-header -->
	<div class="row">
		<div class="col-xs-12">
			<!-- PAGE CONTENT BEGINS -->
			<div class="row">
				<div class="col-xs-12">
					<table id="simple-table" class="table  table-bordered table-hover">
						<thead>
							<tr>
								
								<th class="detail-col">Id</th>
								<th>Giao diện</th>
								<th>Link liên kết</th>
								<th>Id_dm</th>
								<th>Id_dm</th>
								<th>Ảnh 1</th>
								<th>
									Ảnh 2
								</th>
								
								<th>Hành động</th>
							</tr>
						</thead>
						<tbody>
							@foreach($giaodien as $val)
							<tr>
								<td class="center">
									{{$val->id}}
								</td>
								<td>
									{{$val->ten_gd}}
								</td>
								<td>{{$val->link}}</td>
								<td>
									@if(!empty($val->catepostmodel->cat_name))
												{{$val->catepostmodel->cat_name}}
											@else
												{{'None'}}
									@endif
								</td>
								<td class="hidden-480">
									@if(!empty($val->catepostmodel->id))
												{{$val->catepostmodel->id}}
											@else
												{{'None'}}
									@endif
								</td>
								
								<td class="hidden-480">
									<img width="50" height="80" src="{{url('public/backend/khogiaodien/')}}/{{$val->img1}}" class="thumbnail">
								</td>
								<td>
									<img width="50" height="80" src="{{url('public/backend/khogiaodien/')}}/{{$val->img2}}" class="thumbnail">
								</td>
								
								<td>
									<div class="hidden-sm hidden-xs btn-group">
										<button class="btn btn-xs btn-info">
											<a href="{{url('admin/giaodien/edit')}}/{{$val->id}}"><i class="ace-icon fa fa-pencil bigger-120"></i></a>
										</button>

										<button class="btn btn-xs btn-danger">
											<a onclick="return confirm('Bạn có muốn xóa không ?');"  href="{{url('admin/giaodien/delete')}}/{{$val->id}}">
											<i class="ace-icon fa fa-trash-o bigger-120"></i>
											</a>
										</button>
									</div>
								</td>
							</tr>
							@endforeach()
							

						</tbody>
					</table>
					<p class="pagination">
								{{$giaodien->links()}}
					</p>
				</div><!-- /.span -->
			</div><!-- /.row -->
		</div><!-- /.col -->
	</div><!-- /.row -->
</div><!-- /.page-content -->
@endsection('content')

