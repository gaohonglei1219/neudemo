<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>暴走银行 | 首页</title>
<meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
<!-- bootstrap 3.0.2 -->
<link href="<%=request.getContextPath()%>/bankManage/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<!-- font Awesome -->
<link href="<%=request.getContextPath()%>/bankManage/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<!-- Ionicons -->
<link href="<%=request.getContextPath()%>/bankManage/css/ionicons.min.css" rel="stylesheet" type="text/css" />
<!-- Theme style -->
<link href="<%=request.getContextPath()%>/bankManage/css/AdminLTE.css" rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/bankManage/css/index.css" rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/bankManage/css/daterangepicker/daterangepicker-bs3.css" rel="stylesheet" type="text/css" />

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
</head>
<body class="skin-black">
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
                        理财产品添加
                        <small></small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> 首页</a></li>
						<li><a href="#"><i class="fa fa-dollar"></i> 理财产品管理</a></li>
                        <li class="active">理财产品添加</li>
                    </ol>
     </section>
    <!-- /.content --> 
	
	 <section class="content">

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
						<form  id="userForm" >
						<div class="row">
					
						<div class="col-lg-12">
							
						   <div class="box box-primary">
							 <div class="modal-body">
							  <div class="modal-body">   
								 <div class="row">
									  		<div class="col-lg-7">
												 <div class="form-group">
							 							 <div class="input-group">
                                           					<span class="input-group-addon">产品名称：&nbsp;&nbsp;</span>
															<input name="financingname" type="text" class="form-control" placeholder="不超过30字">
                                           					
														</div><!-- input-group -->
											</div> <!--  form-group -->
									  </div> <!--  col -->
									</div> <!--  row -->
									
									<div class="row">
									  		<div class="col-lg-7">
												 <div class="form-group">
							 							 <div class="input-group">
                                           					<span class="input-group-addon">产品类型：&nbsp;&nbsp;</span>
															
																<select name="financingtype" class="form-control">
                                                					<option>股票</option>
                                                					<option>期货</option>
                                                					<option>基金</option>
                                                					<option>债卷</option>
                                                					<option>信托</option>
                                            					</select>
                                           						 
														</div><!-- input-group -->
											</div> <!--  form-group -->
									  </div> <!--  col -->
									</div> <!--  row -->
									
									<div class="row">
									  		<div class="col-lg-7">
												 <div class="form-group">
							 							 <div class="input-group">
                                           					<span class="input-group-addon">风险等级：&nbsp;&nbsp;</span>
															
																<select name="risk" class="form-control">
                                                					<option value="1">等级 1</option>
                                                					<option value="2">等级 2</option>
                                                					<option value="3">等级 3</option>
                                                					<option value="4">等级 4</option>
                                                					<option value="5">等级 5</option>
                                            					</select>
                                           						 
														</div><!-- input-group -->
											</div> <!--  form-group -->
									  </div> <!--  col -->
									</div> <!--  row -->
									
	


									 <div class="row">
									  		<div class="col-lg-7">
												 
                                           					<div class="bootstrap-timepicker">
																<div class="form-group">
																<div class="input-group">
																	<span class="input-group-addon">起息日/到期日时间:</span>
																<input type="text" name="date_time" readonly class="form-control pull-right" id="reservation"/>
																</div>
																</div>
															</div>
											
									  </div> <!--  col -->
									</div> <!--  row -->
									 <div class="row">
									  		<div class="col-lg-7">
												 <div class="form-group">
							 							 <div class="input-group">
                                           					<span class="input-group-addon">封闭期：&nbsp; &nbsp;&nbsp;</span>
															<input name="daynum" type="text" class="form-control" placeholder="天数">
                                           						 
														</div><!-- input-group -->
											</div> <!--  form-group -->
									  </div> <!--  col -->
									</div> <!--  row -->
									
									
									<div class="row">
									  		<div class="col-lg-7">
												 <div class="form-group">
							 							 <div class="input-group">
                                           					<span class="input-group-addon">预期收益率：</span>
															<input name="expect" type="text" class="form-control" placeholder="百分比">
                                           						 
														</div><!-- input-group -->
											</div> <!--  form-group -->
									  </div> <!--  col -->
									</div> <!-- row -->
									
									
									<div class="row">
									  		<div class="col-lg-7">
												 <div class="form-group">
							 							 <div class="input-group">
                                           					<span class="input-group-addon">首次买起点：</span>
															<input name="minbuy" type="text" class="form-control" placeholder="万">
                                           						 
														</div><!-- input-group -->
											</div> <!--  form-group -->
									  </div> <!--  col -->
									</div> <!--  row -->
									
									
									 
									</div>
									
								<div class="modal-footer clearfix">
								<input type="button" style="padding-left: 30px; padding-right: 30px;" class="btn btn-primary pull-left" value="提交" class="button" id="userFormSubmitBtn" />
								
								<button type="button" style="padding-left: 30px; padding-right: 30px;" class="btn btn-danger pull-left" data-dismiss="modal"><i class="fa fa-times"></i> 取消</button>
							</div>
								 
						 </div> <!-- body -->
						   </div> <!-- box -->
						   
						   
					</div> <!-- col -->
					</form>	
						 
						
					</div> <!-- row --> 
			<%@ include file="../common/foot.jsp"%> 		
				
					
                </section><!-- /.content -->
  </aside>
  <!-- /.right-side --> 
</div>
<!-- ./wrapper --> 

<!-- COMPOSE MESSAGE MODAL -->

<!-- /.modal --> 

  <!-- jQuery 2.0.2 -->
        <script src="<%=request.getContextPath()%>/bankManage/js/jquery.min.js"></script>
        <!-- Bootstrap -->
        <script src="<%=request.getContextPath()%>/bankManage/js/bootstrap.min.js" type="text/javascript"></script>
        <!-- AdminLTE App -->
		 <!-- date-range-picker -->
        <script src="<%=request.getContextPath()%>/bankManage/js/plugins/daterangepicker/daterangepicker.js" type="text/javascript"></script>
        <script src="<%=request.getContextPath()%>/bankManage/js/AdminLTE/app.js" type="text/javascript"></script>
        <!-- AdminLTE for demo purposes -->
        <script src="<%=request.getContextPath()%>/bankManage/js/AdminLTE/demo.js" type="text/javascript"></script>
		<script type="text/javascript">
			 $('#reservation').daterangepicker({
			 	language: 'zh-CN'
			 });
				
		$(function() {
		
		$("#nav_mmProductManage").addClass("active");
		$("#nav_mmProductManage").trigger("click");
        $("#nav_mmProductManage_add").addClass("active");
		$('#userFormSubmitBtn').click(submitUserForm);

	});
	function test()
    {
        $('#myModal').modal('hide');
    }    
	function submitUserForm() {
	 //      console.info(xxxx);
		if (true) {
			
			
			$.ajax({
				type : "post",
				url : "../add_productjson.do",
				dataType : "json",
				data : $('#userForm').serialize(),
				error : function() {
				   
				

				},
				success : function(json) {
					//console.info("xxxx");
					console.info(json.model.result.message);
					document.getElementById("mySpan").innerHTML = json.model.result.content;
					document.getElementById("myModalLabel").innerHTML = json.model.result.message;
					
					$('#myModal').modal('show');
					setTimeout("test()",3000);
					
				},
				
			});
		}
	}

		</script>

</body>
</html>
