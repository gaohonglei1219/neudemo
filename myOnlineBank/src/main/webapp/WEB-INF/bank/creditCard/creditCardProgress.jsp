<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>暴走银行 | 申请进度查询</title>
<meta
	content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no'
	name='viewport'>
<link rel="shortcut icon" href="../images/logofa.png" />
<link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css" />

<!-- font Awesome -->
<link href="../css/font-awesome.min.css" rel="stylesheet"
	type="text/css" />
<!-- Ionicons -->
<link href="../css/ionicons.min.css" rel="stylesheet" type="text/css" />
<!-- daterange picker -->
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
<!-- Theme style -->
<link href="../css/AdminLTE.css" rel="stylesheet" type="text/css" />


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
                        信用卡申请进度查询
                        <small></small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> 首页</a></li>
						<li><a href="#"><i class="fa fa-credit-card"></i> 信用卡</a></li>
                        <li class="active">申请进度查询</li>
                    </ol>
                </section>

                <!-- Main content -->
                <section class="content">
					<div class="row">
					
						<div class="col-lg-8">
							
						   <div class="box box-solid">
							 <div class="modal-body">
							  <div class="modal-body">   
								 <div class="row">
									  		<div class="col-lg-8">
												 <div class="form-group">
							 							 <div class="input-group">
                                           					<span class="input-group-addon">查询卡号：</span>
															<input name="email_to" value="1000001411041653353954" type="text" class="form-control" placeholder="请输入查询卡号" style="width: 487px;">
                                           						 
														</div><!-- input-group -->
											</div> <!--  form-group -->
									  </div> <!--  col -->
									</div> <!--  row -->
									
									
									 <div class="row">
									  		<div class="col-lg-8">
												 <div class="form-group">
							 							 <div class="input-group">
                                           					<span class="input-group-addon">身份证号：</span>
															<input name="email_to" value="445281199207281234" type="email" class="form-control" placeholder="请输入身份证号" style="width: 487px;">
                                           						 
														</div><!-- input-group -->
											</div> <!--  form-group -->
									  </div> <!--  col -->
									</div> <!--  row -->
								</div>	
									
								<div class="modal-footer clearfix">
								<button type="submit" style="padding-left: 30px; padding-right: 30px;" class="btn btn-primary pull-left"  data-toggle="modal" data-backdrop="static" data-target="#compose-modal"><i class="fa fa-check"></i> 提交</button>
								<button type="button" style="padding-left: 30px; padding-right: 30px;" class="btn btn-danger pull-left" data-dismiss="modal"><i class="fa fa-times"></i> 取消</button>
							</div>
								 
						 </div> <!-- body -->
						   </div> <!-- box -->
						   
						   
					</div> <!-- col -->
						
							<%@ include file="../common/ad.jsp"%>
						
					</div> <!-- row --> 
					
							<div style="height:200px"> </div>
							
								<%@ include file="../common/foot.jsp"%>
                </section><!-- /.content -->
            </aside><!-- /.right-side -->
        </div><!-- ./wrapper -->
		
		
		<!-- COMPOSE MESSAGE MODAL -->
        <div class="modal fade" id="compose-modal"  tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title"><i class="fa fa-calendar-o"></i> 信用卡申请进度</h4>
                    </div>
                    
                        <div class="modal-body">
						
							 <div class="row">
									<div class="col-lg-11">
										 <ul class="timeline">

  											  <!-- timeline time label -->
    										<li class="time-label">
        										<span class="bg-red">
            										2014年10月25日
        										</span>
    										</li>
   											 <!-- /.timeline-label -->
    										<!-- timeline item -->
    									<li>
        									<!-- timeline icon -->
        									<i class="fa fa-envelope bg-blue"></i>
    										    <div class="timeline-item">
            									<span class="time"><i class="fa fa-clock-o"></i> 12:05</span>
            									<h3 class="timeline-header"><a href="#">提交个人资料</a> ...</h3>
            										<div class="timeline-body">
        											        
                										正在审核中
            										</div>

            										<div class='timeline-footer'>
                							<a class="btn btn-primary btn-xs"></a>
            									</div>
        									</div>
    									</li>
    								<!-- END timeline item -->
    									
								</ul>
									</div>
							</div> <!-- row -->
                        </div>
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->


        <!-- jQuery 2.0.2 -->
        <script src="../js/jquery.min.js"></script>
        <!-- Bootstrap -->
        <script src="../js/bootstrap.min.js" type="text/javascript"></script>
        <!-- AdminLTE App -->
        <script src="../js/AdminLTE/app.js" type="text/javascript"></script>
        <!-- AdminLTE for demo purposes -->
        <script src="../js/AdminLTE/demo.js" type="text/javascript"></script>
         <script type="text/javascript">
         	
         	$(function(){
         		$("#nav_creditCard").addClass("active");
				$("#nav_creditCard").trigger("click");
        		$("#nav_creditCard_pro").addClass("active");	
         	
         	})
         	
         
         </script>
    </body>
</html>
