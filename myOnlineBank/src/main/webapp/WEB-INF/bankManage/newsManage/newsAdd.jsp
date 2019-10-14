<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>暴走银行 | 首页</title>
<meta
	content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no'
	name='viewport'>
<!-- bootstrap 3.0.2 -->
<link
	href="<%=request.getContextPath()%>/bankManage/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<!-- font Awesome -->
<link
	href="<%=request.getContextPath()%>/bankManage/css/font-awesome.min.css"
	rel="stylesheet" type="text/css" />
<!-- Ionicons -->
<link
	href="<%=request.getContextPath()%>/bankManage/css/ionicons.min.css"
	rel="stylesheet" type="text/css" />
<!-- Theme style -->
<link href="<%=request.getContextPath()%>/bankManage/css/AdminLTE.css"
	rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/bankManage/css/index.css"
	rel="stylesheet" type="text/css" />
<link
	href="<%=request.getContextPath()%>/bankManage/css/daterangepicker/daterangepicker-bs3.css"
	rel="stylesheet" type="text/css" />
<style type="text/css">
.picClass input {
	vertical-align: middle;
}

.picClass .txt {
	color: #555;
	height: 34px;
	border: 1px solid #cdcdcd;
	width: 230px;
	margin-right: 10px;
}

.picClass .btn {
	background-color: #FFF;
	border: 1px solid #CDCDCD;
	height: 34px;
	width: 70px;
}

.picClass .file {
	cursor: pointer;
	position: absolute;
	top: 0;
	left: 94px;
	height: 34px;
	filter: alpha(opacity :   0);
	opacity: 0;
	width: 310px
}
</style>

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.<%=request.getContextPath()%>/bankManage/js/1.3.0/respond.min.js"></script>
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
				<h1>新闻添加</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> 首页</a></li>
					<li><a href="#"><i class="fa fa-camera"></i> 新闻管理</a></li>
					<li class="active">新闻添加</li>
				</ol>
			</section>
			<!-- /.content -->

			<section class="content">

				<!--  弹出提示框  -->
				<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
					aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<input type="hidden" value="${result.message}" name="message"
									id="message" /> <input type="hidden"
									value="${result.returnContent}" name="returnContent"
									id="returnContent" /> <input type="hidden"
									value="${result.success}" name="success" id="success" />
								<button type="button" class="close" data-dismiss="modal">
									<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
								</button>
								<h4 class="modal-title" id="myModalLabel">
									<center></center>
								</h4>
							</div>
							<div class="modal-body">
								<span id="mySpan"></span>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default"
									data-dismiss="modal">Close</button>

							</div>
						</div>
					</div>
				</div>


				<div class="row">

					<div class="col-lg-12">

						<div class="box box-primary">
							<div class="modal-body">

								<form id="newsForm" action="../newsAU.do" method="post"
									enctype="multipart/form-data">

									<input type="hidden" value="${pNews.newsid}" name="newsid"
										id="newsid" />
									<div class="modal-body">

										<div class="notification information png_bg">
											<div id="loginTip" style="font-size:14px; color:red; height: 30px;">

												<c:if
													test="${empty sessionScope['SPRING_SECURITY_LAST_EXCEPTION'].message}">
				                                      
													<span>${msg} </span>
												</c:if>



												<c:if
													test="${not empty sessionScope['SPRING_SECURITY_LAST_EXCEPTION'].message}">
													<p>${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}</p>
												</c:if>
											</div>
										</div>
										<div class="row">
											<div class="col-lg-7">
												<div class="form-group">
													<div class="input-group">
														<span class="input-group-addon">新闻标题：</span> <input
															type="text" name="title" id="title" class="form-control"
															value="${ pNews.title}" placeholder="news title">

													</div>
													<!-- input-group -->
												</div>
												<!--  form-group -->
											</div>
											<!--  col -->
										</div>
										<!--  row -->

										<div class="row picClass">
											<div class="col-lg-7">
												<div class="form-group">
													<div class="input-group">
														<span class="input-group-addon">新闻图片：</span> <input
															type='text' name="pic" id='textfield'
															value="${ pNews.pic}" class='txt form-control' /> <input
															type='button' class='btn' value='浏览...' /> <input
															type="file" name="file" class="file" id="fileField"
															size="28"
															onchange="document.getElementById('textfield').value=this.value" />



													</div>
													<!-- input-group -->
												</div>
												<!--  form-group -->
											</div>
											<!--  col -->
										</div>
										<!--  row -->

										<div class='row'>
											<div class='col-md-11'>
												<div class='box box-info'>
													<div class='box-header'>
														<h3 class='box-title'>
															CK Editor <small>Advanced and full of features</small>
														</h3>
														<!-- tools box -->
														<div class="pull-right box-tools">
															<button class="btn btn-info btn-sm"
																data-widget='collapse' data-toggle="tooltip"
																title="Collapse">
																<i class="fa fa-minus"></i>
															</button>
															<button class="btn btn-info btn-sm" data-widget='remove'
																data-toggle="tooltip" title="Remove">
																<i class="fa fa-times"></i>
															</button>
														</div>
														<!-- /. tools -->
													</div>
													<!-- /.box-header -->
													<div class='box-body pad'>
														<input type="hidden" value="${ pNews.content}"
															name="newsContent" id="newsContent" />
														<textarea id="content" name="content" rows="10" cols="80"></textarea>

													</div>
												</div>
												<!-- /.box -->
											</div>
											<!--  col -->
										</div>
										<!--  row -->


									</div>

									<div class="modal-footer clearfix">
										<button type="submit"
											style="padding-left: 30px; padding-right: 30px;"
											class="btn btn-primary pull-left" id="newsFormSubmitBtn" onclick="return check()">
											<i class="fa fa-check"></i> 添加
										</button>
										<button type="reset"
											style="padding-left: 30px; padding-right: 30px;"
											class="btn btn-danger pull-left" data-dismiss="modal">
											<i class="fa fa-times"></i> 取消
										</button>
									</div>


								</form>
							</div>
							<!-- body -->
						</div>
						<!-- box -->


					</div>
					<!-- col -->



				</div>
				<!-- row -->


				<%@ include file="../common/foot.jsp"%>

			</section>
			<!-- /.content -->
		</aside>
		<!-- /.right-side -->
	</div>
	<!-- ./wrapper -->

	<!-- COMPOSE MESSAGE MODAL -->

	<!-- /.modal -->

	<!-- jQuery 2.0.2 -->
	<script src="<%=request.getContextPath()%>/bankManage/js/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script
		src="<%=request.getContextPath()%>/bankManage/js/bootstrap.min.js"
		type="text/javascript"></script>
	<!-- AdminLTE App -->
	<!-- date-range-picker -->
	<script
		src="<%=request.getContextPath()%>/bankManage/js/plugins/daterangepicker/daterangepicker.js"
		type="text/javascript"></script>
	<script
		src="<%=request.getContextPath()%>/bankManage/js/AdminLTE/app.js"
		type="text/javascript"></script>
	<!-- AdminLTE for demo purposes -->
	<script
		src="<%=request.getContextPath()%>/bankManage/js/AdminLTE/demo.js"
		type="text/javascript"></script>
	<script
		src="<%=request.getContextPath()%>/bankManage/js/plugins/ckeditor/ckeditor.js"
		type="text/javascript"></script>
	<!-- Bootstrap WYSIHTML5 -->
	<script
		src="<%=request.getContextPath()%>/bankManage/js/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"
		type="text/javascript"></script>
	<script
		src="<%=request.getContextPath()%>/bankManage/scripts/formCheck.js"
		type="text/javascript"></script>
	<script type="text/javascript">
		$('#reservation').daterangepicker({
			language : 'zh-CN'
		});

		$(function() {
			$("#nav_news").addClass("active");
			$("#nav_news").trigger("click");
			$("#nav_news_add").addClass("active");
			if ($('#success').val()) {
				document.getElementById("mySpan").innerHTML = $(
						'#returnContent').val();
				document.getElementById("myModalLabel").innerHTML = $(
						'#message').val();
				$('#myModal').modal('show');
				setTimeout("test()", 3000);
			}

		});

		function test() {
			$('#myModal').modal('hide');
		}

		/* 
		 function submitUserForm() 
			{
				if($('#success').val())
				{

					console.info(result.message);
				document.getElementById("mySpan").innerHTML = result.content;
				document.getElementById("myModalLabel").innerHTML = result.message;
				
				$('#myModal').modal('show');
				setTimeout("test()",3000);
				}			
			} */

		$(function() {
			// Replace the <textarea id="editor1"> with a CKEditor
			// instance, using default configuration.
			CKEDITOR.replace('content');
			CKEDITOR.instances.content.setData($('#newsContent').val());
			//bootstrap WYSIHTML5 - text editor
			$(".textarea").wysihtml5();
		});
	</script>

</body>
</html>
