<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>暴走银行 | 定活互转</title>
		<meta
			content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no'
			name='viewport'>
		<!-- bootstrap 3.0.2 -->
		<link rel="shortcut icon" href="../images/logofa.png" />
		<link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet">
		 <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
         
		<link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css" />
		<!-- font Awesome -->
		<link href="../css/font-awesome.min.css" rel="stylesheet"
			type="text/css" />
		<!-- Ionicons -->
		<link href="../css/ionicons.min.css" rel="stylesheet" type="text/css" />
		<!-- Theme style -->
		<link href="../css/AdminLTE.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" href="../css/only.css" type="text/css"></link>
         



		<link href="../css/daterangepicker/daterangepicker-bs3.css"
			rel="stylesheet" type="text/css" />
		<!-- iCheck for checkboxes and radio inputs -->
		<link href="../css/iCheck/all.css" rel="stylesheet" type="text/css" />
		<!-- Bootstrap Color Picker -->
		<link href="../css/colorpicker/bootstrap-colorpicker.min.css"
			rel="stylesheet" />
		<!-- Bootstrap time Picker -->
		<link href="../css/timepicker/bootstrap-timepicker.min.css"
			rel="stylesheet" />
		<link href="../css/datatables/dataTables.bootstrap.css"
			rel="stylesheet" type="text/css" />



		<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
	</head>




	<body class="skin-blue">
		<!-- header logo: style can be found in header.less -->
		<%@ include file="../common/head.jsp"%>
		<div class="wrapper row-offcanvas row-offcanvas-left">
			<!-- Left side column. contains the logo and sidebar -->
			<%@ include file="../common/beside.jsp"%>
			<!-- Right side column. Contains the navbar and content of the page -->
			<aside class="right-side">
			<!-- Content Header (Page header) -->
			<section class="content-header">
			<h1>
				定活互转
			</h1>
			<ol class="breadcrumb">
				<li><a href="#"><i class="fa fa-dashboard"></i> 首页</a></li>
				<li><a href="#"><i class="fa fa-link"></i> 行内理财</a></li>
                <li class="active">定活互转</li>
			</ol>
			</section>

			<!-- Main content -->
			<section class="content">
            
			<div class="row">
				<div class="col-md-11">

					<div class="box box-danger">
						<div class="box-header">
						
						<div class="box-body" ><label style="display:inline;">卡号选择:</label>
                                    <select class="form-control" style="width: 210px;display:inline; ">
										<option>
											44456887788954221223
										</option>
										<option>
											45456422134996665212
										</option>
										<option>
											54521223555554888763
										</option>
										<option>
											88765226996466226466
										</option>
					
									</select>
									
							<button class="btn btn-primary btn-sm" onClick="show1();">
								帐户资金详细情况
							</button>
							
						</div>
						<div class="box" id="div1" style="display:none" >
									<div class="box-header">
										<h3 class="box-title">
											理财信息与投资 | financial information and deposit
										</h3>
										<span style="margin-left: 200px;" id="KName_info"></span> 
										<button style="float:right; padding-left:30px; padding-right:30px;" class="btn btn-primary btn-sm" onClick="hiddenk();">
								         上拉
							            </button>
									</div>
									<!-- /.box-header -->
									<span style="margin-left: 20px;" id="KName_info"></span> <laber><span class="onlyfont1 ">活期金额：</a></laber>1112.00元
									<span style="margin-left: 20px;" id="KName_info"></span> <laber><span class="onlyfont1 ">定期金额：</a></laber>1112.00元
									<span style="margin-left: 20px;" id="KName_info"></span> <laber><span class="onlyfont1 ">金融投资：</a></laber>1112.00元
									<div class="box-body table-responsive">
										<table id="example1"
											class="table table-bordered table-striped">
											<thead>
												<tr>
													<th>
														性质
													</th>
													<th>
														本金（元）
													</th>
													<th>
														投资时间
													</th>
													<th>
														结算时间
													</th>
													<th>
														操作
													</th>
												</tr>
											</thead>
											<tbody>

												<tr>
													<td>
														股票
													</td>
													<td>
														1，0000
													</td>
													<td>
														2008/08/09
													</td>
													<td>
														持有
													</td>
													<td>
														详情
													</td>
												</tr>
												<tr>
													<td>
														期货
													</td>
													<td>
														2，0000
													</td>
													<td>
														2009/08/02
													</td>
													<td>
														2010/08/10
													</td>
													<td>
														详情
													</td>
												</tr>
												<tr>
													<td>
														期货
													</td>
													<td>
														1，0000
													</td>
													<td>
														2008/08/09
													</td>
													<td>
														持有
													</td>
													<td>
														详情
													</td>
												</tr>
												<tr>
													<td>
														股票
													</td>
													<td>
														1，0000
													</td>
													<td>
														2008/08/09
													</td>
													<td>
														持有
													</td>
													<td>
														详情
													</td>
												</tr>
												<tr>
													<td>
														期货
													</td>
													<td>
														1，0000
													</td>
													<td>
														2008/08/09
													</td>
													<td>
														持有
													</td>
													<td>
														详情
													</td>
												</tr>
												<tr>
													<td>
														期货
													</td>
													<td>
														1，0000
													</td>
													<td>
														2008/08/09
													</td>
													<td>
														持有
													</td>
													<td>
														详情
													</td>
												</tr>
												<tr>
													<td>
														股票
													</td>
													<td>
														1，0000
													</td>
													<td>
														2008/08/09
													</td>
													<td>
														持有
													</td>
													<td>
														详情
													</td>
												</tr>
												<tr>
													<td>
														期货
													</td>
													<td>
														1，0000
													</td>
													<td>
														2008/08/09
													</td>
													<td>
														2011/02/08
													</td>
													<td>
														详情
													</td>
												</tr>
												<tr>
													<td>
														股票
													</td>
													<td>
														1，0000
													</td>
													<td>
														2008/08/09
													</td>
													<td>
														持有
													</td>
													<td>
														详情
													</td>
												</tr>
												<tr>
													<td>
														定期
													</td>
													<td>
														1，0000
													</td>
													<td>
														2008/08/09
													</td>
													<td>
														持有
													</td>
													<td>
														详情
													</td>
												</tr>
												<tr>
													<td>
														股票
													</td>
													<td>
														1，0000
													</td>
													<td>
														2008/08/09
													</td>
													<td>
														持有
													</td>
													<td>
														详情
													</td>
												</tr>
												<tr>
													<td>
														股票
													</td>
													<td>
														1，0000
													</td>
													<td>
														2008/08/09
													</td>
													<td>
														持有
													</td>
													<td>
														详情
													</td>
												</tr>
												<tr>
													<td>
														通知存款
													</td>
													<td>
														1，0000
													</td>
													<td>
														2008/08/09
													</td>
													<td>
														持有
													</td>
													<td>
														详情
													</td>
												</tr>
											</tbody>
											<tfoot>
												<tr>
													<th>
														Rendering engine
													</th>
													<th>
														Browser
													</th>
													<th>
														Platform(s)
													</th>
													<th>
														Engine version
													</th>
													<th>
														CSS grade
													</th>
												</tr>
											</tfoot>
										</table>
									</div>
									<!-- /.box-body -->
								</div>
							</p>
							
							</td>
						
							</td>
							
							</td>


						</div>
						<div class="box-body">
							<!-- Date dd/mm/yyyy -->
							<div class="form-group">
							
							 <div class="row">
							
							</div>
							
							

								
							</div>
							<div class="box-body no-padding">
						 <div class="nav-tabs-custom">
                                <ul class="nav nav-tabs pull-right">
                                    <li class="active">                             
                                    <a href="#tab_1-1" data-toggle="tab">存款业务</a>                     
                                    </li>
                                  
                                   
                                    <li class="pull-left header"><i class="fa fa-th"></i> 通知存款业务类型</li>
                                </ul>
                                 <div class="tab-content">
                                    <div class="tab-pane active" id="tab_1-1">
                                    
                                    
                                    
                                    <!--
                                    *********************
                                    *********************
                                                                                                插入tab
                                   -->
                        <div class="box box-danger">
						<div class="box-header">
							</p>
							<h3>
								&nbsp;
								<small></small>
							</h3>
							</p>
                            </td>
                            <span style="margin-left: 10px;" id="KName_info"></span> 
							<button class="btn btn-default " style="width:125px">
								账户活期金额
							</button>
							<span style="margin-left: 20px;" id="KName_info"></span> 
							<text id="textamount"  >12345.00元</text>
							</td>
							<p></p>
							<p>
							   <span style="margin-left: 10px;" id="KName_info"></span> 
							<button class="btn btn-default " style="width:125px">
								利息
							</button>
							<span style="margin-left: 20px;" id="KName_info"></span>一天存款利息
							<text id="textamount"  >2.6% |</text>
							<span style="margin-left: 0px;" id="KName_info"></span>七天存款利息
							<text id="textamount"  >3.6%</text>
							<span style="margin-left: 100px;" id="KName_info"></span> 
							</td>
							<button class="btn btn-primary btn-sm" style="float:right; margin-right:20px;" data-toggle="modal" data-backdrop="static"  data-target="#compose-modal">
								购买存款金融产品
							</button>
							
							<!--
							*******************************-->
						<div class="modal fade" id="compose-modal"  tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title"><i class="fa fa-pencil"></i> 购买产品</h4>
                    </div>
                    
                        <div class="modal-body">
						
							 <div class="row">
									<div class="col-lg-11">
										  <form action="#" method="post">
                        <div class="modal-body">
                            <div class="form-group">
                                <div class="input-group">
                                    <span class="input-group-addon">金额:</span>
                                    <div class="input-group">
                                        <input type="text" class="form-control" placeholder="需要投资多少定期">
                                        <span class="input-group-addon">.00</span>
                                    </div>
                                     
                                </div>
                            </div>
                           					
							 <div class="form-group">
							 	 <div class="input-group">
                                           <span class="input-group-addon">利息</span>
										   <div class="row">
										   		<div class="col-lg-4">
                                            <select class="form-control">                                              
                                                <option>2.6%</option>
                                            </select>
												</div>
												
											
											</div>
									</div>
                                        </div>
                          
                        </div>
                        <div class="modal-footer clearfix">

                            <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="fa fa-times"></i> 取消</button>

                            <button type="submit" class="btn btn-primary pull-left"><i class="fa fa-check"></i> 提交</button>
                        </div>
                    </form>
									</div>
								
							</div> <!-- row -->
                            
                        </div>
                       
              
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->
						
						
						
						
						
	
	
	
	
	
	
	
					
						
						</div>
						<div class="box-body">
						
						
							<!-- Date dd/mm/yyyy -->
							<div class="form-group">
							<div class="box">
                             	<table class="table table-striped">
											<thead>
												<th><input type="checkbox"></th>
												<th>存款类型</th>
												<th>存款金额</th>
												<th>利息（%）</th>
												<th>开始存款时间</th>												
												<th>操作</th>
											<thead>
											<tbody>
											<tr>
											    <td><input type="checkbox"></td>
												<td>一天存款</td>
												<td>10000.00</td>
												<td>3.0</td>
												<td>2015/03/22</td>
												<td>12560.00</td>
												<td><button class="btn btn-primary btn-sm"  data-toggle="modal" data-backdrop="static"  data-target="#compose-modal1">
								                                               取款</button></td>
												<tr>
												 <td><input type="checkbox"></td>
												<td>一天存款</td>
												<td>10000.00</td>
												<td>3.0</td>
												<td>2015/03/22</td>
												<td>12560.00</td>
												<td><button class="btn btn-primary btn-sm"  data-toggle="modal" data-backdrop="static"  data-target="#compose-modal1">
								                                              取款</button></td>
												<tr>
												<td><input type="checkbox"></td>
												<td>一天存款</td>
												<td>10000.00</td>
												<td>3.0</td>
												<td>2015/03/22</td>
												<td>12560.00</td>
												<td><button class="btn btn-primary btn-sm"  data-toggle="modal" data-backdrop="static"  data-target="#compose-modal1">
								                                              取款</button></td>
												
											<tr>
											     <td><input type="checkbox"></td>
												<td>七天存款</td>
												<td>10000.00</td>
												<td>3.0</td>
												<td>2015/03/22</td>
												<td>12560.00</td>
												<td><button class="btn btn-primary btn-sm"  data-toggle="modal" data-backdrop="static"  data-target="#compose-modal1">
								                                               取款</button></td>
												<tr>
											</tr>
  									　　　</tbody>
										</table>
									</div>	
									
									
									
									
									
									
									
											
								<div class="input-group">
									<div class="input-group-addon">
										<label style="width: 100px;">
											存款金額:
										</label>
									</div>
									<input type="text" style="width: 150px;" class="form-control"data-mask/ >
									元
								</div>
								<!-- /.input group -->
							</div>
							<!-- /.form group -->

							<div class="form-group">

								<div class="input-group">
								


								  <div class="bootstrap-timepicker">
                                        <div class="form-group">
                                          
                                            <div class="input-group">
                                                  <div class="input-group-addon"><i class="fa fa-clock-o"></i></div>  <input type="text" class="form-control timepicker" style="width: 150px;display:inline;"/>             <input type="text" class="form-control" style="width: 150px;display:inline;" data-inputmask="'alias': 'dd/mm/yyyy'" data-mask/>
                                            </div><!-- /.input group -->
                                        </div><!-- /.form group -->
                                    </div>
									


								</div>
								
								<!-- /.input group -->
							</div>
							 <div class="box-footer clearfix">
									
									 <button style="padding-left:30px; padding-right:30px;" class="btn btn-primary btn-sm" onClick="showcalculator();">
								             计算
							         </button>
								     <button style="padding-left:30px; padding-right:30px;" class="btn btn-primary btn-sm" onClick="hiddenc();">
								         重置
							            </button>
								      
									 
                                    
                                </div>
                                <div class="box" id="div2" style="display:none" >
									<div class="box-header">
										<h3 class="box-title">
											理财信息与投资 | financial information and deposit
										</h3>
										<span style="margin-left: 140px;" id="KName_info"></span> 
										<button style="float:right; padding-left:30px; padding-right:30px;" class="btn btn-primary btn-sm" onClick="hiddenc();">
								         上拉
							            </button>
									</div>
									<!-- /.box-header -->
									<span style="margin-left: 20px;" id="KName_info"></span> <laber><span class="onlyfont1 ">投资金额：</a></laber>1112.00元
									<span style="margin-left: 20px;" id="KName_info"></span> <laber><span class="onlyfont1 ">总利息金额：</a></laber>112.00元
									<span style="margin-left: 20px;" id="KName_info"></span> <laber><span class="onlyfont1 ">总回报：</a></laber>1312.00元
									<span style="margin-left: 20px;" id="KName_info"></span> <laber><span class="onlyfont1 ">共32期</span>
									<div class="box-body table-responsive">
										<table id="example1"
											class="table table-bordered table-striped">
											<thead>
												<tr>
													<th>
														时间
													</th>
													<th>
														本金（元）
													</th>
													<th>
														利率（%）
													</th>
													<th>
														利息
													</th>
													<th>
														回报
													</th>
												</tr>
											</thead>
											<tbody>

												<tr>
													<td>
														1期
													</td>
													<td>
														1，000
													</td>
													<td>
														2.60
													</td>
													<td>
														235.00
													</td>
													<td>
														1，452
													</td>
												</tr>
												<tr>
													<td>
														1期
													</td>
													<td>
														1，000
													</td>
													<td>
														2.60
													</td>
													<td>
														235.00
													</td>
													<td>
														1，452
													</td>
												</tr>
							
											<tr>
													<td>
														1期
													</td>
													<td>
														1，000
													</td>
													<td>
														2.60
													</td>
													<td>
														235.00
													</td>
													<td>
														1，452
													</td>
												</tr>
												<tr>
													<td>
														1期
													</td>
													<td>
														1，000
													</td>
													<td>
														2.60
													</td>
													<td>
														235.00
													</td>
													<td>
														1，452
													</td>
												</tr>
												<tr>
													<td>
														1期
													</td>
													<td>
														1，000
													</td>
													<td>
														2.60
													</td>
													<td>
														235.00
													</td>
													<td>
														1，452
													</td>
												</tr>
												<tr>
													<td>
														1期
													</td>
													<td>
														1，000
													</td>
													<td>
														2.60
													</td>
													<td>
														235.00
													</td>
													<td>
														1，452
													</td>
												</tr>
												<tr>
													<td>
														1期
													</td>
													<td>
														1，000
													</td>
													<td>
														2.60
													</td>
													<td>
														235.00
													</td>
													<td>
														1，452
													</td>
												</tr>
												<tr>
													<td>
														1期
													</td>
													<td>
														1，000
													</td>
													<td>
														2.60
													</td>
													<td>
														235.00
													</td>
													<td>
														1，452
													</td>
												</tr>
												<tr>
													<td>
														1期
													</td>
													<td>
														1，000
													</td>
													<td>
														2.60
													</td>
													<td>
														235.00
													</td>
													<td>
														1，452
													</td>
												</tr>
												<tr>
													<td>
														1期
													</td>
													<td>
														1，000
													</td>
													<td>
														2.60
													</td>
													<td>
														235.00
													</td>
													<td>
														1，452
													</td>
												</tr>
												<tr>
													<td>
														1期
													</td>
													<td>
														1，000
													</td>
													<td>
														2.60
													</td>
													<td>
														235.00
													</td>
													<td>
														1，452
													</td>
												</tr>
												<tr>
													<td>
														1期
													</td>
													<td>
														1，000
													</td>
													<td>
														2.60
													</td>
													<td>
														235.00
													</td>
													<td>
														1，452
													</td>
												</tr>
											</tbody>
											<tfoot>
												<tr>
													<th>
														Rendering engine
													</th>
													<th>
														Browser
													</th>
													<th>
														Platform(s)
													</th>
													<th>
														Engine version
													</th>
													<th>
														CSS grade
													</th>
												</tr>
											</tfoot>
										</table>
									</div>
									</div>
							</div>
							</div>
							
                                   
                                   
                                   
                                   
                                   
                                   
                                   
                                   </div><!-- /.tab-pane -->
                                   
                                   
                                   
            <div class="modal fade" id="compose-modal1"  tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title"><i class="fa fa-pencil"></i> 定期转活期</h4>
                    </div>
                    
                        <div class="modal-body">
						
							 <div class="row">
									<div class="col-lg-11">
										  <form action="#" method="post">
                        <div class="modal-body">
                            <div class="form-group">
                                  <span class="input-group-addon"> 总定期金额是 ：     14523.00元</span></P></br>
                                <div class="input-group">
                                   
                                    <span class="input-group-addon">转换金额:</span>
                                    <div class="input-group">
                                        <input type="text" class="form-control" placeholder="需要定期转活期的金额">
                                        <span class="input-group-addon">.00</span>
                                    </div>
                                     
                                </div>
                            </div>
                           					
							
                          
                        </div>
                        <div class="modal-footer clearfix">

                            <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="fa fa-times"></i> 取消</button>

                            <button type="submit" class="btn btn-primary pull-left"><i class="fa fa-check"></i> 提交</button>
                        </div>
                    </form>
									</div>
								
							</div> <!-- row -->
                            
                        </div>
                       
              
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->
							    <div class="tab-pane" id="tab_2-2">
									
										<table class="table table-striped">
											<thead>
												<th><input type="checkbox"></th>
												<th>定期类型</th>
												<th>定期金额</th>
												<th>利息（%）</th>
												<th>到期时间</th>
												<th>目前回报</th>
												<th>操作</th>
											<thead>
											<tbody>
											<tr>
											    <td><input type="checkbox"></td>
												<td>三个月定期</td>
												<td>10000.00</td>
												<td>3.0</td>
												<td>2015/03/22</td>
												<td>12560.00</td>
												<td><button class="btn btn-primary btn-sm"  data-toggle="modal" data-backdrop="static"  data-target="#compose-modal1">
								                                               转</button></td>
												<tr>
												 <td><input type="checkbox"></td>
												<td>三个月定期</td>
												<td>10000.00</td>
												<td>3.0</td>
												<td>2015/03/22</td>
												<td>12560.00</td>
												<td><button class="btn btn-primary btn-sm"  data-toggle="modal" data-backdrop="static"  data-target="#compose-modal1">
								                                               转</button></td>
												<tr>
												<td><input type="checkbox"></td>
												<td>三个月定期</td>
												<td>10000.00</td>
												<td>3.0</td>
												<td>2015/03/22</td>
												<td>12560.00</td>
												<td><button class="btn btn-primary btn-sm"  data-toggle="modal" data-backdrop="static"  data-target="#compose-modal1">
								                                               转</button></td>
												
											<tr>
											     <td><input type="checkbox"></td>
												<td>三个月定期</td>
												<td>10000.00</td>
												<td>3.0</td>
												<td>2015/03/22</td>
												<td>12560.00</td>
												<td><button class="btn btn-primary btn-sm"  data-toggle="modal" data-backdrop="static"  data-target="#compose-modal1">
								                                               转</button></td>
												<tr>
											</tr>
  									　　　</tbody>
										</table>
                                    	 <div class="box-footer clearfix">
									
									 <button class="btn btn-primary btn-sm" onClick="showcalculator();">
								       查询所有交易情况
							         </button>
								   
								      
									 
                                    
                                </div>
								
                                    </div><!-- /.tab-pane -->
                                    
                                    
                                     <div class="tab-pane" id="tab_3-3">
									
									 <div class="box box-danger">
						<div class="box-header">
							</p>
							<h3>
								專業
								<small>约定定期</small>
							</h3>
							</p>
                            </td>
                            <span style="margin-left: 10px;" id="KName_info"></span> 
							<button class="btn btn-default " style="width:125px">
								账户活期金额
							</button>
							<span style="margin-left: 20px;" id="KName_info"></span> 
							<text id="textamount"  >12345.00元</text>
							</td>
							<span style="margin-left: 220px;" id="KName_info"></span> 
							</td>
							<button class="btn btn-primary btn-sm"  data-toggle="modal" data-backdrop="static"  data-target="#compose-modal2">
								设置约定存款业务
							</button>
							</p>
							</td>
							
							</td>
							<span style="margin-left: 10px;" id="KName_info"></span> 
							<button class="btn btn-default " style="width:125px">
								目前利率
							</button>
							<span style="margin-left: 20px;" id="KName_info"></span> 
							<text id="textamount"  >2.7%</text>
							<!--
							*******************************-->
						<div class="modal fade" id="compose-modal2"  tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title"><i class="fa fa-pencil"></i> 购买产品</h4>
                    </div>
                    
                        <div class="modal-body">
						
							 <div class="row">
									<div class="col-lg-11">
										  <form action="#" method="post">
                        <div class="modal-body">
                            <div class="form-group">
                                <div class="input-group">
                                    <span class="input-group-addon">设定上限金额:</span>
                                    <div class="input-group">
                                        <input type="text" class="form-control" placeholder="界限多少钱">
                                        <span class="input-group-addon">.00</span>
                                    </div>
                                     
                                </div>
                            </div>
                           					
							 <div class="form-group">
							 	 <div class="input-group">
                                           <span class="input-group-addon">定期时间</span>
										   <div class="row">
										   		<div class="col-lg-4">
                                            <select class="form-control">
                                                <option>option 1</option>
                                                <option>option 2</option>
                                                <option>option 3</option>
                                                <option>option 4</option>
                                                <option>option 5</option>
                                            </select>
												</div>
												
											
											</div>
									</div>
                                        </div>
                          
                        </div>
                        <div class="modal-footer clearfix">

                            <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="fa fa-times"></i> 取消</button>

                            <button type="submit" class="btn btn-primary pull-left"><i class="fa fa-check"></i> 提交</button>
                        </div>
                    </form>
									</div>
								
							</div> <!-- row -->
                            
                        </div>
                       
              
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->
						
						
						
						
						
	
	
	
	
	
	
	
					
						
						</div>
						<div class="box-body">
						
						    </p>
							<!-- Date dd/mm/yyyy -->
							<div class="form-group">
							<div class="box">
                                	<table class="table table-striped">
							<thead>
								<tr>
									
									<th style="width: 100px">
										约定定期期间
									</th>
									<th style="width: 100px">
										三个月
									</th>
									<th style="width: 100px">
										6个月
									</th>
									<th style="width: 100px">
										12个月
									</th>
									<th style="width: 100px">
										24个月
									</th>
								</tr>
							</thead>
								<tbody>
								<tr>
									
									<td>
										
											最新利息（%）
											
									</td>
									<td>
										
											2.60
											
									</td>
									<td>
										
											2.80
											
									</td>
									<td>
										
											3.00
											
									</td>
									<td>
										
											3.75
											
									</td>
									</tr>
									</tbody>
									</table>	    
									</div>	
						
								<!-- /.input group -->
							</div>
							<!-- /.form group -->

						
							 <div class="box-footer clearfix">
									
									 <button class="btn btn-primary btn-sm" onClick="showc();">
								            查看账单 
							         </button>
								 
								      
									 
                                    
                                </div>
                                <div class="box" id="div3" style="display:none" >
									<div class="box-header">
										<h3 class="box-title">
											理财信息与投资 | financial information and deposit
										</h3>
										<span style="margin-left: 140px;" id="KName_info"></span> 
										<button class="btn btn-primary btn-sm" onClick="hiddencc();">
								         上拉
							            </button>
									</div>
									<!-- /.box-header -->
									<span style="margin-left: 20px;" id="KName_info"></span> <laber><span class="onlyfont1 ">投资金额：</a></laber>1112.00元
									<span style="margin-left: 20px;" id="KName_info"></span> <laber><span class="onlyfont1 ">总利息金额：</a></laber>112.00元
									<span style="margin-left: 20px;" id="KName_info"></span> <laber><span class="onlyfont1 ">总回报：</a></laber>1312.00元
									<span style="margin-left: 20px;" id="KName_info"></span> <laber><span class="onlyfont1 ">共32期</span>
									<div class="box-body table-responsive">
										<table id="example1"
											class="table table-bordered table-striped">
											<thead>
												<tr>
													<th>
														类型
													</th>
													<th>
														本金（元）
													</th>
													<th>
														利率（%）
													</th>
													<th>
														时间
													</th>
													<th>
														回报
													</th>
													<th>
														状态
													</th>
												</tr>
											</thead>
											<tbody>

												<tr>
													<td>
														三个月定期
													</td>
													<td>
														1，000
													</td>
													<td>
														2.60
													</td>
													<td>
														2013/01/01~2013/03/03
													</td>
													<td>
														1，452
													</td>
													<td>
														已结算
													</td>
												</tr>
												<tr>
													<td>
														三个月定期
													</td>
													<td>
														1，000
													</td>
													<td>
														2.60
													</td>
													<td>
														2013/01/03~2013/03/04
													</td>
													<td>
														1，452
													</td>
													<td>
														已结算
													</td>
												</tr>
											<tr>
													<td>
														三个月定期
													</td>
													<td>
														1，000
													</td>
													<td>
														2.60
													</td>
													<td>
														2013/01/01~2013/03/03
													</td>
													<td>
														1，452
													</td>
													<td>
														已结算
													</td>
												</tr>
												<tr>
													<td>
														三个月定期
													</td>
													<td>
														1，000
													</td>
													<td>
														2.60
													</td>
													<td>
														2013/01/01~2013/03/03
													</td>
													<td>
														1，452
													</td>
													<td>
														已结算
													</td>
												</tr>
												<tr>
													<td>
														三个月定期
													</td>
													<td>
														1，000
													</td>
													<td>
														2.60
													</td>
													<td>
														2013/01/01~2013/03/03
													</td>
													<td>
														1，452
													</td>
													<td>
														已结算
													</td>
												</tr>
												<tr>
													<td>
														三个月定期
													</td>
													<td>
														1，000
													</td>
													<td>
														2.60
													</td>
													<td>
														2013/01/01~2013/03/03
													</td>
													<td>
														1，452
													</td>
													<td>
														已结算
													</td>
												</tr>
												<tr>
													<td>
														三个月定期
													</td>
													<td>
														1，000
													</td>
													<td>
														2.60
													</td>
													<td>
														2013/01/01~2013/03/03
													</td>
													<td>
														1，452
													</td>
													<td>
														已结算
													</td>
												</tr>
											<tr>
													<td>
														三个月定期
													</td>
													<td>
														1，000
													</td>
													<td>
														2.60
													</td>
													<td>
														2013/01/01~2013/03/03
													</td>
													<td>
														1，452
													</td>
													<td>
														已结算
													</td>
												</tr>
												<tr>
													<td>
														三个月定期
													</td>
													<td>
														1，000
													</td>
													<td>
														2.60
													</td>
													<td>
														2013/01/01~2013/03/03
													</td>
													<td>
														1，452
													</td>
													<td>
														已结算
													</td>
												</tr>
												<tr>
													<td>
														三个月定期
													</td>
													<td>
														1，000
													</td>
													<td>
														2.60
													</td>
													<td>
														2013/01/01~2013/03/03
													</td>
													<td>
														1，452
													</td>
													<td>
														已结算
													</td>
												</tr>
												<tr>
													<td>
														三个月定期
													</td>
													<td>
														1，000
													</td>
													<td>
														2.60
													</td>
													<td>
														2013/01/01~2013/03/03
													</td>
													<td>
														1，452
													</td>
													<td>
														已结算
													</td>
												</tr>
											<tr>
													<td>
														三个月定期
													</td>
													<td>
														1，000
													</td>
													<td>
														2.60
													</td>
													<td>
														2013/01/01~2013/03/03
													</td>
													<td>
														1，452
													</td>
													<td>
														已结算
													</td>
												</tr>
											</tbody>
											<tfoot>
												<tr>
													<th>
														Rendering engine
													</th>
													<th>
														Browser
													</th>
													<th>
														Platform(s)
													</th>
													<th>
														Engine version
													</th>
													<th>
														CSS grade
													</th>
												</tr>
											</tfoot>
										</table>
									</div>
									</div>
							</div>
						
                                   </div><!-- /.tab-pane -->
                                </div>
                                    
                                    
                                     <div class="tab-pane" id="tab_4-4">
									
											 <div class="box box-danger">
						<div class="box-header">
							</p>
							<h3>
								專業
								<small>约定零存整取</small>
							</h3>
							</p>
                            </td>
                            <span style="margin-left: 10px;" id="KName_info"></span> 
							<button class="btn btn-default " style="width:125px">
								账户活期金额
							</button>
							<span style="margin-left: 20px;" id="KName_info"></span> 
							<text id="textamount"  >12345.00元</text>
							</td>
							<span style="margin-left: 220px;" id="KName_info"></span> 
							</td>
							<button class="btn btn-primary btn-sm"  data-toggle="modal" data-backdrop="static"  data-target="#compose-modal3">
								添加存款业务
							</button>
							</p>
							</td>
							
							</td>
							<span style="margin-left: 10px;" id="KName_info"></span> 
							<button class="btn btn-default " style="width:125px">
								目前利率
							</button>
							<span style="margin-left: 20px;" id="KName_info"></span> 
							<text id="textamount"  >2.7%</text>
							<!--
							*******************************-->
						<div class="modal fade" id="compose-modal3"  tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title"><i class="fa fa-pencil"></i> 购买产品</h4>
                    </div>
                    
                        <div class="modal-body">
						
							 <div class="row">
									<div class="col-lg-11">
										  <form action="#" method="post">
                        <div class="modal-body">
                            <div class="form-group">
                                <div class="input-group">
                                    <span class="input-group-addon">设定每月存金额:</span>
                                    <div class="input-group">
                                        <input type="text" class="form-control" placeholder="存多少钱">
                                        <span class="input-group-addon">.00</span>
                                    </div>
                                     
                                </div>
                            </div>
                           					
							 <div class="form-group">
							 	 <div class="input-group">
                                           <span class="input-group-addon">定期时间</span>
										   <div class="row">
										   		<div class="col-lg-4">
                                            <select class="form-control">
                                                <option>一年</option>
                                                <option>二年</option>
                                                <option>三年</option>
                    
                                            </select>
												</div>
												
											
											</div>
									</div>
                                        </div>
                          
                        </div>
                        <div class="modal-footer clearfix">

                            <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="fa fa-times"></i> 取消</button>

                            <button type="submit" class="btn btn-primary pull-left"><i class="fa fa-check"></i> 提交</button>
                        </div>
                    </form>
									</div>
								
							</div> <!-- row -->
                            
                        </div>
                       
              
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->
						
						
						
						
						
	
	
	
	
	
	
	
					
						
						</div>
						<div class="box-body">
						
						    </p>
							<!-- Date dd/mm/yyyy -->
							<div class="form-group">
							<div class="box">
                                	<table class="table table-striped">
							<thead>
								<tr>
									
									<th style="width: 100px">
										约定零存整取
									</th>
									<th style="width: 100px">
										12个月
									</th>
									<th style="width: 100px">
										24个月
									</th>
									<th style="width: 100px">
										32个月
									</th>
									
								</tr>
							</thead>
								<tbody>
								<tr>
									
									<td>
										
											最新利息（%）
											
									</td>
									<td>
										
											2.60
											
									</td>
									<td>
										
											2.80
											
									</td>
									<td>
										
											3.00
											
									</td>
									
									</tr>
									</tbody>
									</table>	    
									</div>	
						
								<!-- /.input group -->
							</div>
							<!-- /.form group -->

						
							 <div class="box-footer clearfix">
									
									 <button class="btn btn-primary btn-sm" onClick="showl();">
								            账单列表
							         </button>
								 
								      
									 
                                    
                                </div>
                                <div class="box" id="div4" style="display:none" >
									<div class="box-header">
										<h3 class="box-title">
											理财信息与投资 | financial information and deposit
										</h3>
										<span style="margin-left: 140px;" id="KName_info"></span> 
										<button class="btn btn-primary btn-sm" onClick="hiddenl();">
								         上拉
							            </button>
									</div>
									<!-- /.box-header -->
									<span style="margin-left: 20px;" id="KName_info"></span> <laber><span class="onlyfont1 ">投资金额：</a></laber>1112.00元
									<span style="margin-left: 20px;" id="KName_info"></span> <laber><span class="onlyfont1 ">总利息金额：</a></laber>112.00元
									<span style="margin-left: 20px;" id="KName_info"></span> <laber><span class="onlyfont1 ">总回报：</a></laber>1312.00元
									<span style="margin-left: 20px;" id="KName_info"></span> <laber><span class="onlyfont1 ">共32期</span>
									<div class="box-body table-responsive">
										<table id="example1"
											class="table table-bordered table-striped">
											<thead>
												<tr>
													<th>
														类型
													</th>
													<th>
														本金（元）
													</th>
													<th>
														利率（%）
													</th>
													<th>
														时间
													</th>
													<th>
														回报
													</th>
													<th>
														状态
													</th>
													<th>
														操作
													</th>
												</tr>
											</thead>
											<tbody>

												<tr>
													<td>
														三个月定期
													</td>
													<td>
														1，000
													</td>
													<td>
														2.60
													</td>
													<td>
														2013/01/01~2013/03/03
													</td>
													<td>
														1，452
													</td>
													<td>
														已结算
													</td>
													<td>
														<a>终结</a>
													</td>
												</tr>
												<tr>
													<td>
														三个月定期
													</td>
													<td>
														1，000
													</td>
													<td>
														2.60
													</td>
													<td>
														2013/01/03~2013/03/04
													</td>
													<td>
														1，452
													</td>
													<td>
														已结算
													</td>
													<td>
														<a>终结</a>
													</td>
												</tr>
											<tr>
													<td>
														三个月定期
													</td>
													<td>
														1，000
													</td>
													<td>
														2.60
													</td>
													<td>
														2013/01/01~2013/03/03
													</td>
													<td>
														1，452
													</td>
													<td>
														已结算
													</td>
													<td>
														<a>终结</a>
													</td>
												</tr>
												<tr>
													<td>
														三个月定期
													</td>
													<td>
														1，000
													</td>
													<td>
														2.60
													</td>
													<td>
														2013/01/01~2013/03/03
													</td>
													<td>
														1，452
													</td>
													<td>
														已结算
													</td>
													<td>
														<a>终结</a>
													</td>
												</tr>
												<tr>
													<td>
														三个月定期
													</td>
													<td>
														1，000
													</td>
													<td>
														2.60
													</td>
													<td>
														2013/01/01~2013/03/03
													</td>
													<td>
														1，452
													</td>
													<td>
														已结算
													</td>
													<td>
														<a>终结</a>
													</td>
												</tr>
												<tr>
													<td>
														三个月定期
													</td>
													<td>
														1，000
													</td>
													<td>
														2.60
													</td>
													<td>
														2013/01/01~2013/03/03
													</td>
													<td>
														1，452
													</td>
													<td>
														已结算
													</td>
													<td>
														<a>终结</a>
													</td>
												</tr>
												<tr>
													<td>
														三个月定期
													</td>
													<td>
														1，000
													</td>
													<td>
														2.60
													</td>
													<td>
														2013/01/01~2013/03/03
													</td>
													<td>
														1，452
													</td>
													<td>
														已结算
													</td>
													<td>
														<a>终结</a>
													</td>
												</tr>
											<tr>
													<td>
														三个月定期
													</td>
													<td>
														1，000
													</td>
													<td>
														2.60
													</td>
													<td>
														2013/01/01~2013/03/03
													</td>
													<td>
														1，452
													</td>
													<td>
														已结算
													</td>
													<td>
														<a>终结</a>
													</td>
												</tr>
												<tr>
													<td>
														三个月定期
													</td>
													<td>
														1，000
													</td>
													<td>
														2.60
													</td>
													<td>
														2013/01/01~2013/03/03
													</td>
													<td>
														1，452
													</td>
													<td>
														已结算
													</td>
													<td>
														<a>终结</a>
													</td>
												</tr>
												<tr>
													<td>
														三个月定期
													</td>
													<td>
														1，000
													</td>
													<td>
														2.60
													</td>
													<td>
														2013/01/01~2013/03/03
													</td>
													<td>
														1，452
													</td>
													<td>
														已结算
													</td>
													<td>
														<a>终结</a>
													</td>
												</tr>
												<tr>
													<td>
														三个月定期
													</td>
													<td>
														1，000
													</td>
													<td>
														2.60
													</td>
													<td>
														2013/01/01~2013/03/03
													</td>
													<td>
														1，452
													</td>
													<td>
														已结算
													</td>
													<td>
														<a>终结</a>
													</td>
												</tr>
											<tr>
													<td>
														三个月定期
													</td>
													<td>
														1，000
													</td>
													<td>
														2.60
													</td>
													<td>
														2013/01/01~2013/03/03
													</td>
													<td>
														1，452
													</td>
													<td>
														已结算
													</td>
													<td>
														<a>终结</a>
													</td>
												</tr>
											</tbody>
											<tfoot>
												<tr>
													<th>
														Rendering engine
													</th>
													<th>
														Browser
													</th>
													<th>
														Platform(s)
													</th>
													<th>
														Engine version
													</th>
													<th>
														CSS grade
													</th>
												</tr>
											</tfoot>
										</table>
									</div>
									</div>
							</div>
						
                                   </div><!-- /.tab-pane -->
                                    
                                    
                                </div><!-- /.tab-content -->
                            </div><!-- nav-tabs-custom -->
							
						</div>
					</div>

								<!-- /.box -->
							</div>
						</div>


					</div>
					<!-- /.row -->
					
					</section>
					<!-- /.content -->
					</aside>
					<!-- /.right-side -->
				</div>
				<!-- ./wrapper -->


				<!-- jQuery 2.0.2 -->
				
				
				<script src="../js/jquery.min.js"></script>
       
                <script src="../js/jquery-ui-1.10.3.min.js" type="text/javascript"></script>
				
				<!-- Bootstrap -->
				<script src="../js/bootstrap.min.js" type="text/javascript"></script>
				
				<!-- InputMask -->
				<script src="../js/plugins/input-mask/jquery.inputmask.js"
					type="text/javascript"></script>
				<script
					src="../js/plugins/input-mask/jquery.inputmask.date.extensions.js"
					type="text/javascript"></script>
				<script
					src="../js/plugins/input-mask/jquery.inputmask.extensions.js"
					type="text/javascript"></script>
				<!-- date-range-picker -->
				<script src="../js/plugins/daterangepicker/daterangepicker.js"
					type="text/javascript"></script>
				<!-- bootstrap color picker -->
				<script src="../js/plugins/colorpicker/bootstrap-colorpicker.min.js"
					type="text/javascript"></script>
				<!-- bootstrap time picker -->
				<script src="../js/plugins/timepicker/bootstrap-timepicker.min.js"
					type="text/javascript"></script>
				<!-- AdminLTE App -->
				<script src="../js/AdminLTE/app.js" type="text/javascript"></script>
				<!-- AdminLTE for demo purposes -->
				<script src="../js/AdminLTE/demo.js" type="text/javascript"></script>
				<script src="../js/plugins/datatables/jquery.dataTables.js"
					type="text/javascript"></script>
				<script src="../js/plugins/datatables/dataTables.bootstrap.js"
					type="text/javascript"></script>
                


				<!-- Page script -->
				<script type="text/javascript">				
				$(function() {		
				$("#nav_hnlc").addClass("active");
				$("#nav_hnlc").trigger("click");
        		$("#nav_hnlc_dhhz").addClass("active");
			});
	$(function() {
		//Datemask dd/mm/yyyy
		$("#datemask").inputmask("dd/mm/yyyy", {
			"placeholder" : "dd/mm/yyyy"
		});
		//Datemask2 mm/dd/yyyy
		$("#datemask2").inputmask("mm/dd/yyyy", {
			"placeholder" : "mm/dd/yyyy"
		});
		//Money Euro
		$("[data-mask]").inputmask();

		//Date range picker
		$('#reservation').daterangepicker();
		//Date range picker with time picker
		$('#reservationtime').daterangepicker( {
			timePicker : true,
			timePickerIncrement : 30,
			format : 'MM/DD/YYYY h:mm A'
		});
		//Date range as a button
		$('#daterange-btn').daterangepicker(
				{
					ranges : {
						'Today' : [ moment(), moment() ],
						'Yesterday' : [ moment().subtract('days', 1),
								moment().subtract('days', 1) ],
						'Last 7 Days' : [ moment().subtract('days', 6),
								moment() ],
						'Last 30 Days' : [ moment().subtract('days', 29),
								moment() ],
						'This Month' : [ moment().startOf('month'),
								moment().endOf('month') ],
						'Last Month' : [
								moment().subtract('month', 1).startOf('month'),
								moment().subtract('month', 1).endOf('month') ]
					},
					startDate : moment().subtract('days', 29),
					endDate : moment()
				},
				function(start, end) {
					$('#reportrange span').html(
							start.format('MMMM D, YYYY') + ' - '
									+ end.format('MMMM D, YYYY'));
				});

		//iCheck for checkbox and radio inputs
		$('input[type="checkbox"].minimal, input[type="radio"].minimal')
				.iCheck( {
					checkboxClass : 'icheckbox_minimal',
					radioClass : 'iradio_minimal'
				});
		//Red color scheme for iCheck
		$('input[type="checkbox"].minimal-red, input[type="radio"].minimal-red')
				.iCheck( {
					checkboxClass : 'icheckbox_minimal-red',
					radioClass : 'iradio_minimal-red'
				});
		//Flat red color scheme for iCheck
		$('input[type="checkbox"].flat-red, input[type="radio"].flat-red')
				.iCheck( {
					checkboxClass : 'icheckbox_flat-red',
					radioClass : 'iradio_flat-red'
				});

		//Colorpicker
		$(".my-colorpicker1").colorpicker();
		//color picker with addon
		$(".my-colorpicker2").colorpicker();

		//Timepicker
		$(".timepicker").timepicker( {
			showInputs : false
		});
	});
	$(function() {
		$("#example1").dataTable();
		$('#example2').dataTable( {
			"bPaginate" : true,
			"bLengthChange" : false,
			"bFilter" : false,
			"bSort" : true,
			"bInfo" : true,
			"bAutoWidth" : false
		});
	});
	
	 $(function () { $('.popover-show').popover('show');});
      $(function () { $('.popover-hide').popover('hide');});
      $(function () { $('.popover-destroy').popover('destroy');});
      $(function () { $('.popover-toggle').popover('toggle');});
     $(function () { $(".popover-options a").popover({html : true });});
     
function show(){
document.getElementById("div").style.display="";
//alert(document.getElementById("div").style.display)
}
function show1(){
//alert(document.getElementById("div1").style.display);
document.getElementById("div1").style.display="";

}
function hiddenk(){
document.getElementById("div1").style.display="none";
}
function hiddenc(){
document.getElementById("div2").style.display="none";
}
function hiddencc(){
document.getElementById("div3").style.display="none";
}
function hiddenl(){
document.getElementById("div4").style.display="none";
}
function showcalculator(){
document.getElementById("div2").style.display="";
}
function showc(){
document.getElementById("div3").style.display="";
}
function showl(){
document.getElementById("div4").style.display="";
}
</script>
	</body>
</html>
