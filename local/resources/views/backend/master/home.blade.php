@extends('backend.master.index')
@section('content')
<!--<div class="page-content">
<div class="page-header">
<h2 align="center" style="color: red">Chào mừng các bạn đã đến với trang quản trị</h2>
</div><!-- /.page-header -->
<!--</div><!-- /.page-content -->
<!--<div class="container">
	<div class="row">
		
		<div class="col-md-6">
			<ul>
				<li class="li_dm">
					<h3 class="text_dm"> <i class="fa fa-product-hunt" aria-hidden="true"></i> <span class="col_red">DANH MỤC</span> SẢN PHẨM</h3>
					<p class="number_dm"> <a href="{{url('admin/product/cate/list')}}">{{$cateproduct}} Danh mục</a></p>
				</li>
				<li class=" li_dm li_dm_list">
					<h3 class="text_dm"> <i class="fa fa-bars" aria-hidden="true"></i> <span class="col_red">DANH SÁCH</span> SẢN PHẨM</h3>
					<p class="number_dm"> <a href="{{url('admin/product/listpro/list')}}">{{$listproduct}} sản phẩm</a></p>
				</li>
			</ul>
			<ul>
				
				<li class=" li_dm li_dm_list">
					<h3 class="text_dm"> <i class="fa fa-bars" aria-hidden="true"></i> <span class="col_red">DANH SÁCH</span> SẢN PHẨM</h3>
					<p class="number_dm"> <a href="{{url('admin/product/listpro/list')}}">{{$listproduct}} sản phẩm</a></p>
				</li>
				<li class="li_dm">
					<h3 class="text_dm"> <i class="fa fa-heart" aria-hidden="true"></i><span class="col_red"> QUẢN LÝ</span> TIÊU ĐỀ</h3>
					<p class="number_dm"> <a href="{{url('admin/product/cate/list')}}">{{$cateproduct}} Danh mục</a></p>
				</li>
			</ul>
		</div>
		<div class="col-md-6">
			<ul>
				<li class="li_dm">
					<h3 class="text_dm"><i class="fa fa-newspaper-o" aria-hidden="true"></i> <span class="col_red">DANH MỤC</span> TIN TỨC</h3>
					<p class="number_dm"> <a href="{{url('admin/post/cate/list')}}">{{$catepost}} danh mục</a></p>
				</li>
				<li class="li_dm li_dm_list">
					<h3 class="text_dm"> <i class="fa fa-bars" aria-hidden="true"></i> <span class="col_red">DANH SÁCH</span> TIN TỨC</h3>
					<p class="number_dm"> <a href="">10 Danh mục</a></p>
				</li>
			</ul>
			<ul>
				
				<li class="li_dm li_dm_list">
					<h3 class="text_dm"> <i class="fa fa-bars" aria-hidden="true"></i> <span class="col_red">DANH SÁCH</span> TIN TỨC</h3>
					<p class="number_dm"> <a href="">10 Danh mục</a></p>
				</li>
				<li class="li_dm">
					<h3 class="text_dm"><i class="fa fa-newspaper-o" aria-hidden="true"></i> <span class="col_red">DANH MỤC</span> TIN TỨC</h3>
					<p class="number_dm"> <a href="{{url('admin/post/cate/list')}}">{{$catepost}} danh mục</a></p>
				</li>
			</ul>
		</div>
	</div>
</div>-->

			<div class="main-content">
				<div class="main-content-inner">
					<div class="breadcrumbs ace-save-state" id="breadcrumbs">
						<ul class="breadcrumb">
							<li>
								<i class="ace-icon fa fa-home home-icon"></i>
								<a href="#">Home</a>
							</li>
							<li class="active">Trang quản trị</li>
						</ul><!-- /.breadcrumb -->
					</div>

					<div class="page-content">
						<div class="ace-settings-container" id="ace-settings-container">
							<div class="btn btn-app btn-xs btn-warning ace-settings-btn" id="ace-settings-btn">
								<i class="ace-icon fa fa-cog bigger-130"></i>
							</div>

							<div class="ace-settings-box clearfix" id="ace-settings-box">
								<div class="pull-left width-50">
									<div class="ace-settings-item">
										<div class="pull-left">
											<select id="skin-colorpicker" class="hide">
												<option data-skin="no-skin" value="#438EB9">#438EB9</option>
												<option data-skin="skin-1" value="#222A2D">#222A2D</option>
												<option data-skin="skin-2" value="#C6487E">#C6487E</option>
												<option data-skin="skin-3" value="#D0D0D0">#D0D0D0</option>
											</select>
										</div>
										<span>&nbsp; Choose Skin</span>
									</div>

									<div class="ace-settings-item">
										<input type="checkbox" class="ace ace-checkbox-2 ace-save-state" id="ace-settings-navbar" autocomplete="off" />
										<label class="lbl" for="ace-settings-navbar"> Fixed Navbar</label>
									</div>

									<div class="ace-settings-item">
										<input type="checkbox" class="ace ace-checkbox-2 ace-save-state" id="ace-settings-sidebar" autocomplete="off" />
										<label class="lbl" for="ace-settings-sidebar"> Fixed Sidebar</label>
									</div>

									<div class="ace-settings-item">
										<input type="checkbox" class="ace ace-checkbox-2 ace-save-state" id="ace-settings-breadcrumbs" autocomplete="off" />
										<label class="lbl" for="ace-settings-breadcrumbs"> Fixed Breadcrumbs</label>
									</div>

									<div class="ace-settings-item">
										<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-rtl" autocomplete="off" />
										<label class="lbl" for="ace-settings-rtl"> Right To Left (rtl)</label>
									</div>

									<div class="ace-settings-item">
										<input type="checkbox" class="ace ace-checkbox-2 ace-save-state" id="ace-settings-add-container" autocomplete="off" />
										<label class="lbl" for="ace-settings-add-container">
											Inside
											<b>.container</b>
										</label>
									</div>
								</div><!-- /.pull-left -->

								<div class="pull-left width-50">
									<div class="ace-settings-item">
										<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-hover" autocomplete="off" />
										<label class="lbl" for="ace-settings-hover"> Submenu on Hover</label>
									</div>

									<div class="ace-settings-item">
										<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-compact" autocomplete="off" />
										<label class="lbl" for="ace-settings-compact"> Compact Sidebar</label>
									</div>

									<div class="ace-settings-item">
										<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-highlight" autocomplete="off" />
										<label class="lbl" for="ace-settings-highlight"> Alt. Active Item</label>
									</div>
								</div><!-- /.pull-left -->
							</div><!-- /.ace-settings-box -->
						</div><!-- /.ace-settings-container -->

						<div class="page-header">
							<h1>
								Trang quản trị
								<small>
									<i class="ace-icon fa fa-angle-double-right"></i>
									Thống kê thông tin website
								</small>
								<small>
									<i class="ace-icon fa fa-angle-double-right"></i>
									
									<a target="_blank" href="{{url('')}}">Quay sang trang hiển thị</a>
								</small>

								


							</h1>
							
						</div><!-- /.page-header -->

						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->
								<div class="alert alert-block alert-success">
									<button type="button" class="close" data-dismiss="alert">
										<i class="ace-icon fa fa-times"></i>
									</button>

									<i class="ace-icon fa fa-check green"></i>

									Welcome to
									<strong class="green">
										Chào mừng bạn đã đên với trang quản trị
									</strong>
								</div>

								<div class="row">
									<div class="space-6"></div>

									<div class="col-sm-7 infobox-container">
										<div class="infobox infobox-green">
											<div class="infobox-icon">
												<i class="fa fa-list" aria-hidden="true"></i>
											</div>

											<div class="infobox-data">
												<span class="infobox-data-number">
													@if(isset($cateproduct))
														{{$cateproduct}}
													@endif
												</span>
												<div class="infobox-content">Danh mục sản phẩm</div>
											</div>

											
										</div>
										<div class="infobox infobox-green">
											<div class="infobox-icon">
												<i class="fa fa-list" aria-hidden="true"></i>
											</div>

											<div class="infobox-data">
												<span class="infobox-data-number">
													@if(isset($product))
														{{$product}}
													@endif
												</span>
												<div class="infobox-content">Tất cả sản phẩm</div>
											</div>

											
										</div>
										<div class="infobox infobox-green">
											<div class="infobox-icon">
												<i class="ace-icon fa fa-comments"></i>
											</div>

											<div class="infobox-data">
												<span class="infobox-data-number">32</span>
												<div class="infobox-content">Bình luận sản phẩm</div>
											</div>

											<div class="stat stat-success">8%</div>
										</div>

										<div class="infobox infobox-blue">
											<div class="infobox-icon">
												<i class="ace-icon fa fa-twitter"></i>
											</div>

											<div class="infobox-data">
												<span class="infobox-data-number">
													@if(isset($catepostmodel))
														{{$catepostmodel}}
													@endif
												</span>
												<div class="infobox-content">Danh mục bài viết</div>
											</div>

										
										</div>
										<div class="infobox infobox-blue">
											<div class="infobox-icon">
												<i class="ace-icon fa fa-twitter"></i>
											</div>

											<div class="infobox-data">
												<span class="infobox-data-number">
													@if(isset($post))
														{{$post}}
													@endif
												</span>
												<div class="infobox-content">Tất cả bài viết</div>
											</div>

											
										</div>
										<div class="infobox infobox-blue">
											<div class="infobox-icon">
												<i class="ace-icon fa fa-twitter"></i>
											</div>

											<div class="infobox-data">
												<span class="infobox-data-number">11</span>
												<div class="infobox-content">Bình luận bài viết</div>
											</div>

											<div class="badge badge-success">
												+32%
												<i class="ace-icon fa fa-arrow-up"></i>
											</div>
										</div>

										


									

										<div class="space-6"></div>

										<div class="infobox infobox-green infobox-small infobox-dark">
											<div class="infobox-progress">
												<div class="easy-pie-chart percentage" data-percent="61" data-size="39">
													<span class="percent">61</span>%
												</div>
											</div>

											<div class="infobox-data">
												<div class="infobox-content">Task</div>
												<div class="infobox-content">Completion</div>
											</div>
										</div>

										<div class="infobox infobox-blue infobox-small infobox-dark">
											<div class="infobox-chart">
												<span class="sparkline" data-values="3,4,2,3,4,4,2,2"></span>
											</div>

											<div class="infobox-data">
												<div class="infobox-content">Earnings</div>
												<div class="infobox-content">$32,000</div>
											</div>
										</div>

										<div class="infobox infobox-grey infobox-small infobox-dark">
											<div class="infobox-icon">
												<i class="ace-icon fa fa-download"></i>
											</div>

											<div class="infobox-data">
												<div class="infobox-content">Downloads</div>
												<div class="infobox-content">1,205</div>
											</div>
										</div>
									</div>

									<div class="vspace-12-sm"></div>

									<div class="col-sm-5">
										<div class="widget-box">
											<div class="widget-header widget-header-flat widget-header-small">
												<h5 class="widget-title">
													<i class="ace-icon fa fa-signal"></i>
													Thống kê truy cập Website
												</h5>

												<div class="widget-toolbar no-border">
													<div class="inline dropdown-hover">
														<button class="btn btn-minier btn-primary">
															This Week
															<i class="ace-icon fa fa-angle-down icon-on-right bigger-110"></i>
														</button>

														<ul class="dropdown-menu dropdown-menu-right dropdown-125 dropdown-lighter dropdown-close dropdown-caret">
															<li class="active">
																<a href="#" class="blue">
																	<i class="ace-icon fa fa-caret-right bigger-110">&nbsp;</i>
																	This Week
																</a>
															</li>

															<li>
																<a href="#">
																	<i class="ace-icon fa fa-caret-right bigger-110 invisible">&nbsp;</i>
																	Last Week
																</a>
															</li>

															<li>
																<a href="#">
																	<i class="ace-icon fa fa-caret-right bigger-110 invisible">&nbsp;</i>
																	This Month
																</a>
															</li>

															<li>
																<a href="#">
																	<i class="ace-icon fa fa-caret-right bigger-110 invisible">&nbsp;</i>
																	Last Month
																</a>
															</li>
														</ul>
													</div>
												</div>
											</div>

											<div class="widget-body">
												<div class="widget-main">
													<div id="piechart-placeholder"></div>

													<div class="hr hr8 hr-double"></div>

													<div class="clearfix">
														<div class="grid3">
															<span class="grey">
																<i class="ace-icon fa fa-facebook-square fa-2x blue"></i>
																&nbsp; likes
															</span>
															<h4 class="bigger pull-right">1,255</h4>
														</div>

														<div class="grid3">
															<span class="grey">
																<i class="ace-icon fa fa-twitter-square fa-2x purple"></i>
																&nbsp; tweets
															</span>
															<h4 class="bigger pull-right">941</h4>
														</div>

														<div class="grid3">
															<span class="grey">
																<i class="ace-icon fa fa-pinterest-square fa-2x red"></i>
																&nbsp; pins
															</span>
															<h4 class="bigger pull-right">1,050</h4>
														</div>
													</div>
												</div><!-- /.widget-main -->
											</div><!-- /.widget-body -->
										</div><!-- /.widget-box -->
									</div><!-- /.col -->
								</div><!-- /.row -->

								
								<!-- PAGE CONTENT ENDS -->
							</div><!-- /.col -->
						</div><!-- /.row -->
					</div><!-- /.page-content -->
				</div>
			</div><!-- /.main-content -->
@endsection('content')