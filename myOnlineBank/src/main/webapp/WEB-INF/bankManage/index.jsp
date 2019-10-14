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
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<!-- font Awesome -->
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<!-- Ionicons -->
<link href="css/ionicons.min.css" rel="stylesheet" type="text/css" />
<!-- Theme style -->
<link href="css/AdminLTE.css" rel="stylesheet" type="text/css" />
<link href="css/index.css" rel="stylesheet" type="text/css" />

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
</head>
<body class="skin-black">
	<!-- header logo: style can be found in header.less -->
	<%@ include file="common/head.jsp"%>
	<div class="wrapper row-offcanvas row-offcanvas-left">
		<!-- Left side column. contains the logo and sidebar -->
		<%@ include file="common/beside.jsp"%>
		<!-- Right side column. Contains the navbar and content of the page -->
		<aside class="right-side">
			<!-- Content Header (Page header) -->
			<section class="content" style="margin-left:10px; margin-right:10px;">
				<div class="row">

					<div class="col-lg-12">


						<div class="modal-body">
							<div class="jumbotron"
								style="color:white; background-image:url(images/index_bj18.jpg);">
								<!-- style="background-color:#dff0d8;" -->
								<h1>Welcome !</h1>
								<p>这里是暴走银行后台管理中心。</p>

							</div>
						</div>
						<!-- body -->



					</div>
					<!-- col -->
				</div>

			</section>
			<!-- /.content -->

			<section class="content"
				style="margin-left:10px;margin-right:10px; margin-top:-70px;">
				<div class="row">

					<div class="col-lg-12">


						<div class="modal-body">
							<div class="jumbotron">
								<div class="row">
									<div class="col-lg-4 col-md-4 col-xs-4">
										<!-- small box -->
										<div class="small-box bg-aqua"
											style="background-image:url(images/index_bg04.jpg);">
											<div class="inner">
												<h3>&nbsp;</h3>
												<p>&nbsp;</p>
											</div>
											<div class="icon">
												<i class=""></i>
											</div>
											<a
												href="/OnlineBank/bankManage/mmProductManage/mmProductList"
												class="small-box-footer"> 理财产品 <i
												class="fa fa-arrow-circle-right"></i> </a>
										</div>
									</div>
									<!-- ./col -->
									<div class="col-lg-4 col-md-4 col-xs-4">
										<!-- small box -->
										<div class="small-box bg-green"
											style="background-image:url(images/index_bg07.jpg);">
											<div class="inner">
												<h3>&nbsp;</h3>
												<p>&nbsp;</p>
											</div>
											<div class="icon">
												<i class=""></i>
											</div>
											<a
												href="/OnlineBank/bankManage/creditCardManage/creditCardApply"
												class="small-box-footer"> 信用卡服务 <i
												class="fa fa-arrow-circle-right"></i> </a>
										</div>
									</div>
									<!-- ./col -->
									<div class="col-lg-4 col-md-4 col-xs-4">
										<!-- small box -->
										<div class="small-box bg-yellow"
											style="background-image:url(images/index_bg02.jpg);">
											<div class="inner">
												<h3>&nbsp;</h3>
												<p>&nbsp;</p>
											</div>
											<div class="icon">
												<i class=""></i>
											</div>
											<a href="/OnlineBank/bankManage/dealTypeManage/dealTypeAdd"
												class="small-box-footer"> 交易类型添加 <i
												class="fa fa-arrow-circle-right"></i> </a>
										</div>
									</div>
									<!-- ./col -->
								</div>
								<!-- /.row -->

								<div class="row">
									<div class="col-lg-4 col-md-4 col-xs-4">
										<!-- small box -->
										<div class="small-box bg-red"
											style="background-image:url(images/index_bg05.jpg);">
											<div class="inner">
												<h3>&nbsp;</h3>
												<p>&nbsp;</p>
											</div>
											<div class="icon">
												<i class=""></i>
											</div>
											<a href="/OnlineBank/bankManage/cardManage/cardApply"
												class="small-box-footer"> 储蓄卡服务 <i
												class="fa fa-arrow-circle-right"></i> </a>
										</div>
									</div>
									<!-- ./col -->

									<div class="col-lg-4 col-md-4 col-xs-4">
										<!-- small box -->
										<div class="small-box bg-blue"
											style="background-image:url(images/index_bg06.jpg);">
											<div class="inner">
												<h3>&nbsp;</h3>
												<p>&nbsp;</p>
											</div>
											<div class="icon">
												<i class=""></i>
											</div>
											<a href="/OnlineBank/bankManage/networkManage/networkAdd"
												class="small-box-footer"> 网点添加 <i
												class="fa fa-arrow-circle-right"></i> </a>
										</div>
									</div>
									<!-- ./col -->

									<div class="col-lg-4 col-md-4 col-xs-4">
										<!-- small box -->
										<div class="small-box bg-purple"
											style="background-image:url(images/index_bg08.jpg);">
											<div class="inner">
												<h3>&nbsp;</h3>
												<p>&nbsp;</p>
											</div>
											<div class="icon">
												<i class=""></i>
											</div>
											<a href="/OnlineBank/bankManage/newsManage/newsAdd"
												class="small-box-footer"> 新闻添加 <i
												class="fa fa-arrow-circle-right"></i> </a>
										</div>
									</div>
									<!-- ./col -->
								</div>
								<!-- /.row -->

								<div class="row">
									<div class="col-lg-4 col-md-4 col-xs-4">
										<!-- small box -->
										<div class="small-box bg-teal"
											style="background-image:url(images/index_bg10.jpg);">
											<div class="inner">
												<h3>&nbsp;</h3>
												<p>&nbsp;</p>
											</div>
											<div class="icon">
												<i class=""></i>
											</div>
											<a href="/OnlineBank/bankManage/rateManage/rateAdd"
												class="small-box-footer"> 利率添加 <i
												class="fa fa-arrow-circle-right"></i> </a>
										</div>
									</div>
									<!-- ./col -->

									<div class="col-lg-4 col-md-4 col-xs-4">
										<!-- small box -->
										<div class="small-box bg-blue"
											style="background-image:url(images/index_bg.jpg);">
											<div class="icon">
												<i class="ion ion-person-add"></i>
											</div>

											<div class="inner">
												<h3>&nbsp;</h3>

												<p>&nbsp;</p>
											</div>

											<a href="/OnlineBank/bankManage/register"
												class="small-box-footer"> 管理员注册 <i
												class="fa fa-arrow-circle-right"></i> </a>
										</div>
									</div>
									<!-- ./col -->
								</div>
								<!-- /.row -->



							</div>
						</div>
					</div>
				</div>
			</section>
			<!-- /.content -->
		</aside>
		<!-- /.right-side -->
	</div>
	<!-- ./wrapper -->

	<!-- COMPOSE MESSAGE MODAL -->

	<!-- /.modal -->

	<!-- jQuery 2.0.2 -->
	<script src="js/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js" type="text/javascript"></script>
	<!-- daterangepicker -->
	<script src="js/plugins/daterangepicker/daterangepicker.js"
		type="text/javascript"></script>
	<!-- datepicker -->
	<script src="js/plugins/datepicker/bootstrap-datepicker.js"
		type="text/javascript"></script>
	<!-- AdminLTE App -->
	<script src="js/AdminLTE/app.js" type="text/javascript"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="js/AdminLTE/demo.js" type="text/javascript"></script>
</body>
</html>
