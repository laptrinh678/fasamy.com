@extends('backend.master.index')
@section('content')
<div class="page-content">
	<div class="page-header">
		<h1>
			Danh sách thành viên
			<small>
				<i class="ace-icon fa fa-angle-double-right"></i>
				<a href="{{url('admin/member/add')}}"> Thêm thành viên</a>
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
								<th class="center">
									<label class="pos-rel">
										<input type="checkbox" class="ace" />
										<span class="lbl"></span>
									</label>
								</th>
								<th class="detail-col">Id</th>
								<th>Tên thành viên</th>
								<th>Quyền truy cập</th>
								<th>Email</th>
								<th>Hành động</th>
							</tr>
						</thead>
						<tbody>
							@foreach($users as $ls_user)
							<tr>
								<td class="center">
									<label class="pos-rel">
										<input type="checkbox" class="ace" />
										<span class="lbl"></span>
									</label>
								</td>
								<td class="center">
									{{$ls_user->id}}
								</td>
								<td>
									{{$ls_user->name}}
								</td>
								<td>
									@if($ls_user->level==1)
										{{'admin'}}
									@else
										{{'user'}}
									@endif
									
								</td>
								<td>
									{{$ls_user->email}}
								</td>
								<td>
									<div class="hidden-sm hidden-xs btn-group">
										<button class="btn btn-xs btn-info">
										<a href="{{url('admin/member/edit')}}/{{$ls_user->id}}">	<i class="ace-icon fa fa-pencil bigger-120"></i></a>
										</button>
										<button class="btn btn-xs btn-danger">
											<a href="{{url('admin/member/delete')}}/{{$ls_user->id}}"><i class="ace-icon fa fa-trash-o bigger-120"></i></a>
										</button>
									</div>
								</td>
							</tr>
							@endforeach
						</tbody>
					</table>
				</div><!-- /.span -->
			</div><!-- /.row -->
		</div><!-- /.col -->
	</div><!-- /.row -->
</div><!-- /.page-content -->
@endsection('content')

