<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>暴走银行 | 新闻</title>
<meta
	content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no'
	name='viewport'>
<!-- bootstrap 3.0.2 -->
<link rel="shortcut icon" href="../images/logofa.jpg" />
<link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<!-- font Awesome -->
<link href="../css/font-awesome.min.css" rel="stylesheet"
	type="text/css" />
<!-- Ionicons -->
<link href="../css/ionicons.min.css" rel="stylesheet" type="text/css" />
<!-- Theme style -->
<link href="../css/AdminLTE.css" rel="stylesheet" type="text/css" />
<link href="../css/index.css" rel="stylesheet" type="text/css" />




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
					暴走银行新闻 <small></small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> 首页</a>
					</li>
					<li><a href="#"><i class="fa fa-credit-card"></i> 媒体看暴走</a>
					</li>
					<li class="active">暴走银行新闻</li>
				</ol>
			</section>

			<!-- Main content -->
			<section class="content">

				<div class="row">
					<div class="col-lg-9">

						<div class="box-solid">

							<div class="modal-body">

								<div class="row">
									<div class="col-xs-12">
										<h2 class="page-header text-center">
											暴走银行信用卡对账单 <small class="text-center">2014年10月份</small>
										</h2>

									</div>
									<!-- /.col -->
								</div>
								<!-- info row -->
								<div class="row invoice-info text-center">
									<div class="col-xs-12">
										<span class="row text-center"><img width="400px"
											height="300px" src="../images/01.jpg"> </span> <span class="">返现金额按照交易清算货币金额计算，即单笔交易金额达到等值100美元以上即可享5%返现礼遇，单笔交易最多返还等值10美元。活动不限名额，不限时段，每张卡片，同一卡组织，每月最多获赠10笔，上限$100。
											单笔交易是指单次支付，即：不论下单商品数量多少，只要通过维萨、万事达组织单次支付满等值100美元，即可享受活动。
											持卡人将在每期活动后的90个自然日内收到返现。持卡人对返还金额如有异议，可在收到返现的30个自然日内致电中国银行信用卡客服热线（40066-95566）提出，逾期将视为持卡人认可返还金额。具体返现到账日期，可能因不能预估的不可抗力因素晚于上述约定时间。
											满足活动规则的外币刷卡交易金额判定方式为：通过维萨网络的交易将按照维萨组织提供的实时汇率换算成卡片的清算币种类进行判定；通过万事达网络的交易将把活动中设置的返现规则以固定汇率换算成卡片的清算货币种类进行判定，涉及汇率</span>
									</div>
									<!-- /.col -->
								</div>
								<!-- /.row -->

							</div>
							<!-- modal-body -->



						</div>
						<!-- box -->

					</div>
					<!-- col -->


					<div class="col-sm-3 table-responsive">


						<!-- <!-- quick email widget -->
						<div class="box box-solid" style="border-top: 2px solid #00c0ef;">
							<div class="box-header text-center">
								<h3 class="box-title">近期新闻</h3>
							</div>


							<div class="box-body">
								<table class="table table-striped">
									<tbody>
										<tr>
											<td id="newsTitleList"></td>

										</tr>

									</tbody>
								</table>
							</div>
							<div class="box-footer clearfix">
								<h5 style="text-align: left; padding-left:18px;">
									来源：【暴走银行】<small></small>
								</h5>
							</div>
						</div>
						

					</div>
					<!-- /.col -->

				</div>
				<!-- /.row -->

				<div class="box-body table-responsive">
					<table id="table_news" class="table table-bordered table-hover">


					</table>
				</div>
				<!-- /.box-body -->


				<%@ include file="../common/foot.jsp"%>




			</section>
			<!-- /.content -->
		</aside>
		<!-- /.right-side -->
	</div>
	<!-- ./wrapper -->


	<!-- jQuery 2.0.2 -->
	<script src="../js/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script src="../js/bootstrap.min.js" type="text/javascript"></script>
	<!-- AdminLTE App -->
	<script src="../js/AdminLTE/app.js" type="text/javascript"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="../js/AdminLTE/demo.js" type="text/javascript"></script>
	<script src="../js/plugins/datatables/jquery.dataTables.js"	type="text/javascript"></script>
	<script src="../js/plugins/datatables/dataTables.bootstrap.js" type="text/javascript"></script>
					
	<script type="text/javascript">
		$(function() {

			//  console.info(document.getElementById('edit_modal').value);	 
			//  console.info($("#edit_modal"));
			var table = $('#table_news').DataTable(
							{

								"bServerSide" : true,
								"sAjaxSource" : "../../bankManage/getNewsList.do",
								"sServerMethod" : "POST",
								"bFilter" : false, //是否使用内置的过滤功能
								"bProcessing" : true, //当datatable获取数据时候是否显示正在处理提示信息。
								"bLengthChange" : true, //是否允许自定义每页显示条数.
								"iDisplayLength" : 10, //每页显示10条记录
								"aoColumns" : [
										{
											"sTitle" : "编号",
											"sClass" : "center",
											"mDataProp" : "newsid",
											"bSearchable" : false,
											"bSortable" : false,
											"bVisible" : false
										},
										{
											"sTitle" : "新闻标题",
											"sClass" : "center",
											"mDataProp" : "title",
											"bSearchable" : false,
											"bSortable" : false
										},
										{
											"sTitle" : "作者",
											"sClass" : "center",
											"mDataProp" : "author",
											"bSearchable" : false,
											"bSortable" : false
										},
										{
											"sTitle" : "图片",
											"sClass" : "center",
											"mDataProp" : "pic",
											"bSearchable" : false,
											"bSortable" : false,
										},//"fnRender": function(obj){return '<img  width="150px"; height="90px"; src="../'+obj.aData.pic+'" />'}},
										{
											"sTitle" : "发布时间",
											"sClass" : "center",
											"mDataProp" : "releasetime",
											"bSearchable" : false,
											"bSortable" : false,
											"fnRender" : function(obj) {
												var date = new Date(
														obj.aData.releasetime);
												var time = date
														.format("yyyy-MM-dd hh:mm:ss");
												return time;
											}
										},
										{ //自定义列
											"sTitle" : "操作",
											"sClass" : "center",
											"mDataProp" : "newsid",
											"bSearchable" : false,
											"bSortable" : false,
											"fnRender" : function(obj) {
												//	console.info(obj.aData.financingid);
												//'<a class="ajaxify" href=\"/admin/Article/edit?Id=' + obj.aData.financingid + '\">编辑</a> '
												// + ' <a href=\"#\" onclick=\"DeleteArticle('+obj.aData[0]+')\">删除</a>';
												return '<a href="../newsAdd.do?id='
														+ obj.aData.newsid
														+ '" class="btn btn-primary btn-sm" data-backdrop="static"> 编辑</a>&nbsp;&nbsp;'
														+ ' <button onclick="delbuttion('
														+ obj.aData.newsid
														+ ')" class="btn btn-primary btn-sm" data-toggle="modal" data-backdrop="static"  data-target="#compose-modal2">删除</button>'
											}
										} ],
								"oLanguage" : {
									"sLengthMenu" : "每页显示 _MENU_ 条记录",
									"sZeroRecords" : "抱歉， 没有找到",
									"sInfo" : "从 _START_ 到 _END_ /共 _TOTAL_ 条数据",
									"sInfoEmpty" : "没有数据",
									"sInfoFiltered" : "(从 _MAX_ 条数据中检索)",
									"oPaginate" : {
										"sFirst" : "首页",
										"sPrevious" : "前一页",
										"sNext" : "后一页",
										"sLast" : "尾页"
									},
									"sZeroRecords" : "没有检索到数据",
								// "sProcessing" : "<img src='./loading.gif' />"
								},
								"fnServerParams" : function(aoData) {
									//aoData.push({"name":"search_Title","value":$("#search_Title").val()});
									//aoData.push({"name":"search_PicName","value":$("#search_PicName").val()});
									//aoData.push({"name":"search_date_time","value":$("#reservation").val()});
								}

							});
		});
	</script>

</body>
</html>
