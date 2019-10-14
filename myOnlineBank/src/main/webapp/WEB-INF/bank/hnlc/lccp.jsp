<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>暴走银行 | 理财产品</title>
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
		<link href="../css/Productdex.css" rel="stylesheet" type="text/css" />
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
		
			<style type="text/css">
              .scrollspy-example {
              height: 400px;
                overflow: auto;
               position: relative;
              }
             </style>
         <style type="text/css">
		   .loading{
		 	
		 	display:none;
		   
		   }
		   .overlay {
		    z-index: 1010;
		    background: none repeat scroll 0% 0% rgba(255, 255, 255, 0.7);
		    }
			.loading-img {
		    z-index: 1020;
		    background: url('../img/ajax-loader1.gif') no-repeat scroll 50% 50% transparent;
		   }
		   
		  .overlay,.loading-img {
		    position: absolute;
		    top: 0px;
		    left: 0px;
		    width: 100%;
		    height: 100%;
		}
	</style>   

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
				理财产品
			</h1>
			<ol class="breadcrumb">
				<li><a href="#"><i class="fa fa-dashboard"></i> 首页</a></li>
				<li><a href="#"><i class="fa fa-link"></i> 行内理财</a></li>
                <li class="active">理财产品</li>
			</ol>
			</section>

			<!-- Main content -->
			<section class="content">
            
			<div class="row">
				<div class="col-md-12">

					<div class="box box-danger">
						<div class="box-header">
						
						<div class="box-body" ><label style="display:inline;">卡号选择:</label>
                                    <select id="cardid" name="cardid" class="form-control" style="width: 350px;display:inline; ">
									<option value="-1">请选择</option>
									</select>
							
							<button id="search" type="button" class="btn btn-primary btn-sm" >
								帐户资金详细情况
							</button>
							
						</div>
						<div class="box" id="div1" style="display:none" >
									<div class="box-header">
										<h3 class="box-title">
											理财信息与投资 | 
										</h3>
										<span style="margin-left: 200px;" id="KName_info"></span> 
										<button style="float:right; padding-left:30px; padding-right:30px;" class="btn btn-primary btn-sm" onClick="hiddenk();">
								         收起
							            </button>
									</div>
									<!-- /.box-header -->
									<span style="margin-left: 20px;" id="KName_info"></span> <laber><span class="onlyfont1 ">活期金额：</a></laber>11112.00元
									<span style="margin-left: 20px;" id="KName_info"></span> <laber><span class="onlyfont1 ">定期金额：</a></laber>21212.00元
									<span style="margin-left: 20px;" id="KName_info"></span> <laber><span class="onlyfont1 ">金融投资：</a></laber>3112.00元
									<div class="box-body table-responsive">
										<table id="table_id"
											class="table table-bordered table-striped">
											
											
										</table>
									</div>
									<!-- /.box-body -->
								</div>
							


						</div>
						<div class="box-body">
							<!-- Date dd/mm/yyyy -->
							<div class="form-group">
							
							 <div class="row">
							
							</div>
							
							

								
							</div>
							<div class="box-body no-padding" style="border:0px solid red;">
						 <div class="nav-tabs-custom">
                                <ul class="nav nav-tabs pull-right">
                                   
                                  
                                   
                                    <li class="pull-left header"><i class="fa fa-th"></i> 理财产品</li>
                                </ul>
                                 <div style="border:1px solid white;" class="tab-content" >
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
								
								<small> &nbsp </small>
							</h3>
							</p>
                            </td>
                            <span style="margin-left: 10px;" id="KName_info"></span> 
							<button class="btn btn-default " style="width:125px">
								账户活期金额
							</button>
							<span style="margin-left: 20px;" id="remain_money">
						
							</td>
							</span> 
							<span style="margin-left: 200px;" id="displace"></span> 
							</td>
							<button style="float:right; margin-right:10px;" class="btn btn-primary btn-sm"  data-toggle="modal" data-backdrop="static"  data-target="#compose-modal">
								查询已经购买金融产品
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
									<div class="col-lg-12">
										  <form action="#" method="post">
                        <div class="modal-body">
                        
                            <div class="form-group">
                                <div class="input-group">
                                      <span class="input-group-addon"> 总定期金额是 ：     14523.00元</span></P></br>
                                    
                                     
                                </div>
                            </div>
                           					
						<div class="box">
                             	<table class="table table-striped">
											<thead>
												<th><input type="checkbox"></th>
												<th>编号</th>
												<th>投资金额</th>
												<th>预期利息（%）</th>
												<th>时间</th>												
												<th>操作</th>
											<thead>
											<tbody>
											<tr>
											    <td><input type="checkbox"></td>
												<td>0923</td>
												<td>10000.00</td>
												<td>3.0%</td>
												<td>2015/03/22（30天）</td>
												
												<td><button class="btn btn-primary btn-sm"  data-toggle="modal" data-backdrop="static"  data-target="#compose-modal1">
								                                               查</button></td>
												<tr>
											    <td><input type="checkbox"></td>
												<td>0923</td>
												<td>10000.00</td>
												<td>3.0%</td>
												<td>2015/03/22（30天）</td>
												
												<td><button class="btn btn-primary btn-sm"  data-toggle="modal" data-backdrop="static"  data-target="#compose-modal1">
								                                               查</button></td>
												<tr>
											    <td><input type="checkbox"></td>
												<td>0923</td>
												<td>10000.00</td>
												<td>3.0%</td>
												<td>2015/03/22（30天）</td>
												
												<td><button class="btn btn-primary btn-sm"  data-toggle="modal" data-backdrop="static"  data-target="#compose-modal1">
								                                               查</button></td>
												
											<tr>
											    <td><input type="checkbox"></td>
												<td>0923</td>
												<td>10000.00</td>
												<td>3.0%</td>
												<td>2015/03/22（30天）</td>
												
												<td><button class="btn btn-primary btn-sm"  data-toggle="modal" data-backdrop="static"  data-target="#compose-modal1">
								                                               查</button></td>
												<tr>
											</tr>
  									　　　</tbody>
										</table>
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
						<div class="box-body" style="border:0px solid red;">
						
						
							<!-- Date dd/mm/yyyy -->
							<div class="form-group">
							<div class="box-body table-responsive">
										<table id="table_product"
											class="table table-bordered table-striped">
											
											
										</table>
							</div>
											
								<!-- /.input group -->
							</div>
							<!-- /.form group -->

						
						
                               
							</div>
							</div>
							
                                   
                                   
                                   
                                   
                                   
                                   
                                   
                                   </div><!-- /.tab-pane -->
                                   
                                   
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title" id="myModalLabel"><center></center></h4>
      </div>
      <div class="modal-body">
        <span id="mySpan"></span>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
       
      </div>
    </div>
  </div>
</div>  
 <div class="loading">
		 <div class="overlay"></div>
	     <div class="loading-img"></div>
 </div>                    
            <div class="modal fade" id="compose-product"  tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title"><i class="fa fa-pencil"></i> 购买理财产品</h4>
                    </div>
                    
                        <div class="modal-body">
						
							 <div class="row">
									<div class="col-lg-11">
		              <form id="buy_product">
                        <div class="modal-body">
                            <div class="form-group1">
                                  <span id="edit_name" class="input-group-addon" style="border: 1px solid #ccc;"></span></br>
                                
                                    
                                   	<table class="table table-striped">
										
											<tbody>
											    <tr>											   
												<td>产品类型</td><td><span id="edit_type"></span></td><td></td><td></td>												
												</tr>
												
												<tr>
											   
												
												<td>投资币种</td>
												<td><span id="edit_currency">人民币</span></td>
												</tr>
												<tr>
												<td>起息日</td>	
												<td><span id="edit_dateb"></span></td>
												<td>到期日</td>
												<td>2<span id="edit_datee"></span></td>
												</tr>
												<tr>
											   
												<td>风险评级</td>
												<td>较低风险(<span id="edit_risk"></span>)</td>
												
												</tr>
											    
											   
											    
  									　　　</tbody>
										</table>
										 <div class="form-group">
							 							 <div class="input-group">
                                           					<span class="input-group-addon">购买金额：</span>
                                           					<input name="buy_productid" id ="buy_productid" type="text" class="form-control"  style="display:none;">
                                           					<input id="most_money" name="most_money" style="display:none;">
                                           					<input id="min_money" name="min_money" style="display:none;">
                                           					<input id="buy_cardid" name="buy_cardid" style="display:none;">
															<input name="buy_money" id ="buy_money" type="text" class="form-control"  style="width: 300px;"> .00元
                                           						 
														</div><!-- input-group -->
										</div> <!--  form-group -->
                                         <div class="modal-footer clearfix">

                            <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="fa fa-times"></i> 取消</button>

                            <button id="btn_buy" type="button" class="btn btn-primary pull-left"><i class="fa fa-check"></i> 提交</button>
                        
                                   
                                </div>
                            </div>
                           					
							
                          
                        </div>
                       
                   
									</div>
								
							</div> <!-- row -->
                            
                        </div>
                       
              
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->
         </form>
        
          <div class="modal fade" id="compose-product_detail"  tabindex="-1" role="dialog" aria-hidden="true">
        
             <div class="modal-dialog modal-lg" style="width:900px">
              <div class="modal-content">
               <div class="modal-header">
        		<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        		<h4 class="modal-title" id="myModalLabel">金融产品介绍</h4>
     			 </div>
             <body>     
        <div class="span9 columns">
         <center><h2>日日聚金（1401期）人民币理财产品A18008</h2></center> 
          <center> <p>持有期限1~7在天含天的收益率为10% 持有期限在天含天的收益率为5%</p></center>
          
          <div id="navbarExample" class="navbar navbar-static">
            <div class="navbar-inner">
              <div class="container" style="width: auto;">
                <a class="brand" href="#"><h3>w3cschool</h3></a>
                <ul class="nav">
                  <li class="active" style="float:left;" ><a href="#php" ><h3> 基本信息</h3> </a></li>
                  <li class="" style="float:left;" ><a href="#js"><h3>收益说明</h3></a></li>
                  <li class="" style="float:left;"><a href="#jss" ><h3>投资范围</h3></a>  </li>            
		         </ul>
                 
              
              </div>
            </div>
          </div>
      
          <div data-spy="scroll" data-target="#navbarExample" data-offset="50" class="scrollspy-example">
            <h4 id="php" style="font-weight:bold;">&nbsp;&nbsp;基本信息</h4>
            <div class="box-body table-responsive">
					<table id="example1" class="table table-bordered table-striped">
											<thead><tr><th>性质</th>
													<th>最低投资（元）
													</th>
													<th>收益起始日期
													</th>
													<th>
														收益结束日期
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
														任何时间
													</td>
													<td>
														任何时间
													</td>
													
												</tr>
												</tbody>
												
												
				
												<thead>
												<tr>
												    <td>
														递增金额
													</td>
													<td>
														银行是否有提前终止权
													</td>													
													<td>
														投资者是否有赎回权
													</td>
													<td>
														账单查询方式
													</td>
													
												</tr>
												</thead>
												
												<tbody>
												<tr>
												   
													<th>1，000（元）
													</th>
													<th>是
													</th>
													<th>
														否
													</th>
													<th>
														银行或网银
													</th>
												</tr>
												
												
												</tbody>
												</table>										
			</div>
            
            <div class="modal-body">
            <div class="form-group">
            </P>
            <h4 id="js" style="font-weight:bold;">&nbsp;&nbsp;收益说明</h4>
            </p>
            &nbsp; &nbsp;&nbsp; &nbsp;  持有期限在天含1-7天的收益率为3% ; 持有期限在天含7-14天的收益率为3.2% ; 持有期限在天含14-28天的收益率为3.5% ; 持有期限在28天以上的收益率为4.0%;
            <h4 id="mysql" style="font-weight:bold;">&nbsp;&nbsp;投资范围</h4>
            </p>
            &nbsp; &nbsp;&nbsp; &nbsp;   本理财产品投资对象为银行间债券市场国债，央行票据，金融债，私募债，以及信用等级不低于AA3级的企业债和中期票据信用评级不低于A-1级的短期融资券，同业存款，货币市场，基金以及回购拆借，等货币市场，金融工具。
           
          
            </p>
          </div>
          <hr>
          </div>
          </div>
           </body>
               </div>
              
             </div>
         </div>
         
         
         
          <div class="modal fade" id="c"  tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title"><i class="fa fa-pencil"></i> 理财产品详情</h4>
                    </div>
                     
                        <div class="modal-body">
						
							 <div class="row">
									<div class="col-lg-11">
		              <form id="buy_product">
                        <div class="modal-body">
                            <div class="form-group1">
                                  <span id="edit_name" class="input-group-addon" style="border: 1px solid #ccc;"></span></br>
                                
                                    
                                   	<table class="table table-striped">
										
											<tbody>
											    <tr>											   
												<td>产品类型</td><td><span id="edit_type"></span></td><td></td><td></td>												
												</tr>
												
												<tr>
											   
												
												<td>投资币种</td>
												<td><span id="edit_currency">人民币</span></td>
												</tr>
												<tr>
												<td>起息日</td>	
												<td><span id="edit_dateb"></span></td>
												<td>到期日</td>
												<td>2<span id="edit_datee"></span></td>
												</tr>
												<tr>
											   
												<td>风险评级</td>
												<td>较低风险(<span id="edit_risk"></span>)</td>
												
												</tr>
											    
											   
											    
  									　　　</tbody>
										</table>
										 <div class="form-group">
							 							 <div class="input-group">
                                           					<span class="input-group-addon">购买金额：</span>
                                           					<input name="buy_productid" id ="buy_productid" type="text" class="form-control"  style="display:none;">
                                           					<input id="most_money" name="most_money" style="display:none;">
                                           					<input id="min_money" name="min_money" style="display:none;">
                                           					<input id="buy_cardid" name="buy_cardid" style="display:none;">
															<input name="buy_money" id ="buy_money" type="text" class="form-control"  style="width: 300px;"> .00元
                                           						 
														</div><!-- input-group -->
										</div> <!--  form-group -->
                                         <div class="modal-footer clearfix">

                            <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="fa fa-times"></i> 取消</button>

                            <button id="btn_buy" type="button" class="btn btn-primary pull-left"><i class="fa fa-check"></i> 提交</button>
                        
                                   
                                </div>
                            </div>
                           					
							
                          
                        </div>
                       
                   
									</div>
								
							</div> <!-- row -->
                            
                        </div>
                       
              
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div>
       
        
							  
                                    
                                    
                                 
							<!--
							*******************************-->
						
						
						
						
						
						
	
	
	
	
	
	
	
					
						
					
							<!--
							*******************************-->
					
						
						
						
						
	
	
	
	
	
	
	
					
						
					
					
						
                                   </div><!-- /.tab-pane -->
                                    
                                    
                                </div><!-- /.tab-content -->
                            </div><!-- nav-tabs-custom -->
							
						</div>
					
								<!-- /.box -->						
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
				<script type="text/javascript" src="../js/jquery.validate.js"></script>
				<script type="text/javascript" src="../js/bootstrap-scrollspy.js"></script>
				<script type="text/javascript" src="../js/bootstrap-dropdown.js"></script>
                 <script src="../js/lccp.js"
					type="text/javascript"></script>                              


				<!-- Page script -->
			<script type="text/javascript">					
				$(function() {		
				$("#nav_hnlc").addClass("active");
				$("#nav_hnlc").trigger("click");
        		$("#nav_hnlc_lccp").addClass("active");
			});
	
	$(function() {
		//Datemask dd/mm/yyyy
		$("#datemask").inputmask("dd/mm/yyyy", {
			"placeholder" : "dd/mm/yyyy"
		});
		//Datemask2 mm/dd/yyyycompose-modal2
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
	
</script>
	</body>
</html>
