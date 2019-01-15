@extends('backend.master.index')
@section('content')
<div class="page-content">
	<div class="page-header">
		<h1>
			Danh sách khách hàng
			<small>
				<i class="ace-icon fa fa-angle-double-right"></i>
				<a href="{{url('admin/member/add')}}"> Thêm khách hàng</a>
			</small>
		</h1>
		@include('errors.note')
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
								<th>Tên khách hàng</th>
								<th>Email</th>
								<th>Điện thoại</th>
								<th>Địa chỉ</th>
								<th>Ngày sinh</th>
								<th>Facebook</th>
								<th>Loại khách hàng</th>
								
								<th>Hành động</th>
							</tr>
						</thead>
						<tbody>
							@foreach($khachhang as $val)
							<tr>
								
								<td class="center">
									{{$val->id}}
									
								</td>
								<td>
								{{$val->name}}
								</td>
								<td>
									{{$val->email}}
									
								</td>
								<td>
									{{$val->dienthoai}}
									
								</td>
								<td>
									{{$val->ngaysinh}}
									
								</td>
								<td>
									{{$val->facebook}}
									
								</td>
								<td>
									{{$val->diachi}}
									
								</td>
								<td>
									@if($val->loaikh==1)
									{{'Thường xuyên'}}
								@elseif($val->loaikh==2)
									{{'Thỉnh thoảng'}}
								@elseif($val->loaikh==3)
									{{'Tiềm năng'}}
								
								@endif
								</td>
								<td>
									<div class="hidden-sm hidden-xs btn-group">
										<button class="btn btn-xs btn-info">
										<a href="{{url('admin/khachhang/edit')}}/{{$val->id}}">	<i class="ace-icon fa fa-pencil bigger-120"></i></a>
										</button>
										<button class="btn btn-xs btn-danger">
											<a onclick="return confirm('Bạn có muốn xóa không ?');"  href="{{url('admin/khachhang/delete')}}/{{$val->id}}"><i class="ace-icon fa fa-trash-o bigger-120"></i></a>
										</button>
									</div>
								</td>
							</tr>
							@endforeach()
						</tbody>
					</table>
				</div><!-- /.span -->
			</div><!-- /.row -->
			<div>
				{{$khachhang->links()}}
			</div>
			
			
		</div><!-- /.col -->
	</div><!-- /.row -->
</div><!-- /.page-content -->
@endsection('content')

