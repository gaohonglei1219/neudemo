<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="UTF-8">
<title>暴走银行 | 首页</title>
<meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
<!-- bootstrap 3.0.2 -->
<link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<!-- font Awesome -->
<link href="../css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<!-- Ionicons -->
<link href="../css/ionicons.min.css" rel="stylesheet" type="text/css" />
<!-- Theme style -->
<link href="../css/AdminLTE.css" rel="stylesheet" type="text/css" />
<link href="../css/index.css" rel="stylesheet" type="text/css" />
<link href="../css/daterangepicker/daterangepicker-bs3.css" rel="stylesheet" type="text/css" />

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
<body class="skin-black">
 	<%@ include file="../common/head.jsp"%>
<div class="wrapper row-offcanvas row-offcanvas-left"> 
 
  <%@ include file="../common/beside.jsp"%> 
  
  <!-- Right side column. Contains the navbar and content of the page -->
  <aside class="right-side"> 
    <!-- Content Header (Page header) -->
    <section class="content-header">
                    <h1>
                        网点列表
                        <small></small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> 首页</a></li>
						<li><a href="#"><i class="fa fa-sitemap"></i> 网点管理</a></li>
                        <li class="active">网点列表</li>
                    </ol>
     </section>
    <!-- /.content --> 
	
	            <!-- Main content -->
                <section class="content">
						
					 <div class="row">
                        <div class="col-md-11">
                           
                           
							  <div class="panel panel-default">
							  
									<div class="panel-heading">
										<h4 class="panel-title">
											<a data-toggle="collapse"  href="#collapseFour">
											
												网点搜索
											</a>
										</h4>
										
										
									</div><!-- head -->
									
									<div id="collapseFour" class="panel-collapse collapse">
										<div class="panel-body">
											
									
									
						   
						    			<div class="row">
									  		<div class="col-lg-11">
												 <div class="form-group">
							 							 <div class="input-group">
                                           					<span class="input-group-addon">网点城市：</span>
															
																<div class="row">
																   		<div class="col-lg-6">
								                                            <select id="province" class="form-control">
								                                                <option value="">---省份---</option>
								                                            
								                                            </select>
																		</div>
																			<div  class="col-lg-6">
																			 <select id="city" class="form-control" name="obCity.cityid">
								                                                <option value="">---城市---</option>
								                                            </select>
																		 </div>
																</div> 
														</div><!-- input-group -->
											</div> <!--  form-group -->
									  </div> <!--  col -->
									</div> <!--  row -->
							
							
														
										<div class="row">
									  		<div class="col-lg-11">
												 <div class="form-group">
							 							 <div class="input-group">
                                           					<span class="input-group-addon">网点名称：</span>
															<input id="name" type="text" class="form-control" placeholder="请输入网点名称">
                                           						 
														</div><!-- input-group -->
											</div> <!--  form-group -->
									  </div> <!--  col -->
									</div> <!--  row -->
																	
							
			                           
			                            
			            <div class="modal-footer clearfix">
							<button type="submit" id="btn" style="padding-left: 30px; padding-right: 30px;" class="btn btn-primary pull-left"><i class="fa fa-search"></i> 搜索</button>
						</div>
			                            
					 </div> <!-- panel-body -->
				</div><!-- panel-body-pre -->			
			  </div><!-- panel -->
                           
             </div><!-- /.col -->
           </div> <!-- row -->  
           
           
            <div class="row">
                 <div class="col-md-11">
                 	
                 	 <table id="table_id" class="table table-bordered table-striped">
					
					</table>
                        
                 </div><!-- /.col -->
           </div> <!-- row -->  
                      
                      
                   
											
					

				<%@ include file="../common/foot.jsp"%> 
                </section><!-- /.content -->
            </aside><!-- /.right-side -->
</div>
<!-- ./wrapper --> 

<!-- COMPOSE MESSAGE MODAL -->


		 <div class="modal fade" id="myModal"  tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title"><i class="fa fa-edit"></i> 网点编辑</h4>
                    </div>
                    
                        <div class="modal-body">
						
							<div>
								<h4 id="msg" style="color:red"></h4>
							</div>
                        
								
								
								<form id="editNetwork" method="POST">
									
									<input type="hidden" name="networkid" />
								
								 <div class="row">
									  		<div class="col-lg-11">
												 <div class="form-group">
							 							 <div class="input-group">
                                           					<span class="input-group-addon">网点名称：</span>
															<input name="networkname" type="text" class="form-control" placeholder="请输入网点名称">
                                           						 
														</div><!-- input-group -->
											</div> <!--  form-group -->
									  </div> <!--  col -->
									</div> <!--  row -->
									
								
									
									<div class="row">
									  		<div class="col-lg-11">
												 <div class="form-group">
							 							 <div class="input-group">
                                           					<span class="input-group-addon">网点城市：</span>
															
																<div class="row">
																   		<div class="col-lg-6">
								                                            <select id="province2" class="form-control">
								                                                <option>---省份---</option>
								                                            
								                                            </select>
																		</div>
																			<div  class="col-lg-6">
																			 <select id="city2" class="form-control" name="obCity.cityid">
								                                                <option value="0">---城市---</option>
								                                            </select>
																		 </div>
																</div> 
														</div><!-- input-group -->
											</div> <!--  form-group -->
									  </div> <!--  col -->
									</div> <!--  row -->
									
									
									 <div class="row">
									  		<div class="col-lg-11">
												 <div class="form-group">
							 							 <div class="input-group">
                                           					<span class="input-group-addon">详细地址：</span>
															<input name="address" type="text" class="form-control" placeholder="请输入详细地址">
                                           						 
														</div><!-- input-group -->
											</div> <!--  form-group -->
									  </div> <!--  col -->
									</div> <!--  row -->
									
									
									<div class="row">
									  		<div class="col-lg-11">
												 <div class="form-group">
							 							 <div class="input-group">
                                           					<span class="input-group-addon">联系电话：</span>
															<input name="phone" type="text" class="form-control" placeholder="请输入联系电话">
                                           						 
														</div><!-- input-group -->
											</div> <!--  form-group -->
									  </div> <!--  col -->
									</div> <!-- row -->
									
									
									<div class="row">
									  		<div class="col-lg-11">
												 <div class="form-group">
							 							 <div class="input-group">
                                           					<span class="input-group-addon">周边环境：</span>
															<input name="around" type="text" class="form-control" placeholder="请输入周边环境">
                                           						 
														</div><!-- input-group -->
											</div> <!--  form-group -->
									  </div> <!--  col -->
									</div> <!--  row -->
									
                          
                        </div>
                        <div class="modal-footer clearfix">

                        
                            <button id="updateBtn" type="button" style="padding-left: 30px; padding-right: 30px;" class="btn btn-primary pull-left"><i class="fa fa-check"></i> 确定</button>
                        </div>
               </form>
				
			<div class="loading">
				 <div class="overlay"></div>
			     <div class="loading-img"></div>
		     </div>		
                     
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->

					
		 <div class="modal fade" id="myModal2">
  <div class="modal-dialog">
    <div class="modal-content">
       <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title"><i class="fa fa-delete"></i> 网点删除</h4>
                    </div>
      <div class="modal-body">
        <p id="msg2"></p>
      </div>
      <div class="modal-footer">
       
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
	

		
		<!-- jQuery 2.0.2 --> 

				<script src="../js/jquery.min.js"></script>
       
                <script src="../js/jquery-ui-1.10.3.min.js" type="text/javascript"></script>
				
				<!-- Bootstrap -->
				<script src="../js/bootstrap.min.js" type="text/javascript"></script>
				
				<!-- InputMask -->
				<script src="../js/plugins/input-mask/jquery.inputmask.js" type="text/javascript"></script>
				<script src="../js/plugins/input-mask/jquery.inputmask.date.extensions.js" type="text/javascript"></script>
				<script src="../js/plugins/input-mask/jquery.inputmask.extensions.js" type="text/javascript"></script>
				<!-- date-range-picker -->
				<script src="../js/plugins/daterangepicker/daterangepicker.js" type="text/javascript"></script>
				<!-- bootstrap color picker -->
				<script src="../js/plugins/colorpicker/bootstrap-colorpicker.min.js" type="text/javascript"></script>
				<!-- bootstrap time picker -->
				<script src="../js/plugins/timepicker/bootstrap-timepicker.min.js" type="text/javascript"></script>
				<!-- AdminLTE App -->
				<script src="../js/AdminLTE/app.js" type="text/javascript"></script>
				<!-- AdminLTE for demo purposes -->
				<script src="../js/AdminLTE/demo.js" type="text/javascript"></script>
				<script src="../js/plugins/datatables/jquery.dataTables.js" type="text/javascript"></script>
				<script src="../js/plugins/datatables/dataTables.bootstrap.js" type="text/javascript"></script>
				<script type="text/javascript" src="../js/network.js"></script>
				<script type="text/javascript" src="../js/plugins/jquery.validate.js"></script>
				<script type="text/javascript" src="../js/networkList.js"></script>	
		<script type="text/javascript">		
		$(function() {
			$("#nav_networkManage").addClass("active");
			$("#nav_networkManage").trigger("click");
			$("#nav_networkManage_list").addClass("active");			
		});
		</script>	
		
</body>
	       <div class="loading">
				 <div class="overlay"></div>
			     <div class="loading-img"></div>
		     </div>		
</html>
