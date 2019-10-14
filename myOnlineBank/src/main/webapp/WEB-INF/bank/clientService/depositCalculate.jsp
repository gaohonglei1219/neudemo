<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>暴走银行_存款计算器</title>
<meta
	content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no'
	name='viewport'>
<!-- bootstrap 3.0.2 -->
<link rel="shortcut icon" href="../images/logofa.png" />
<link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<!-- font Awesome -->
<link href="../css/font-awesome.min.css" rel="stylesheet"
	type="text/css" />
<!-- Ionicons -->
<link href="../css/ionicons.min.css" rel="stylesheet" type="text/css" />
<!-- Theme style -->
<link href="../css/AdminLTE.css" rel="stylesheet" type="text/css" />





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
<link href="../css/datatables/dataTables.bootstrap.css" rel="stylesheet"
	type="text/css" />



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
				<h1>存款计算器</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> 首页</a>
					</li>
					<li><a href="#"><i class="fa fa-user"></i>客户服务</a>
					</li>
					<li class="active">存款计算器</li>
				</ol>
			</section>

			<!-- Main content -->
			<section class="content">

				<div class="row">
					<div class="col-lg-8">

						<div class="box box-success">
							<div class="box-header">
								<h3 class="box-title">存款计算器</h3>
							</div>
							<div class="box-body">
								<!-- Date dd/mm/yyyy -->
								<form id="deposit">
									<div class="modal-body">

										<!-- /.form group -->
										<div class="form-group">

											<div class="input-group">
												<div class="input-group-addon">
													<span> 币种类型: </span>
												</div>


												<select name="currency" id="currency" class="form-control"
													style="width: 487px;">
													<option value="-1">请选择</option>

												</select>
											</div>
										</div>
										<div class="form-group">
											<div class="input-group">
												<div class="input-group-addon">
													<span> 存款类型: </span>
												</div>


												<select id="deposit_type" name="deposit_type"
													class="form-control" style="width: 487px;">
													<option value="-1">请选择</option>
												</select>
											</div>

											<!-- /.input group -->
										</div>
										<input type="hidden" name="obDepositCurrencyType.cdtpyeid"
											id="obDepositCurrencyType.cdtpyeid" />
										<div class="form-group" id="date">

											<div class="input-group">
												<div class="input-group-addon">
													<span> 存款周期: </span>
												</div>


												<select name="cycle" id="cycle" class="form-control"
													style="width: 487px;">
													<option value="-1">请选择</option>
												</select>



											</div>
											<!-- /.input group -->
										</div>
										<div class="form-group" id="deposit_time" style="display: none">

											<div class="input-group">
												<div class="input-group-addon">
													<span> 活期期间: </span>
												</div>
                                          <input name="timing" id="timing" type="text"
													 style="width: 487px;" class="form-control"
													data-mask />月

												


											</div>
											<!-- /.input group -->
										</div>
										<div class="form-group">
											<div class="input-group">
												<div class="input-group-addon">
													<span> 存款低额: </span>
												</div>
												<input name="minmoney" id="minmoney" type="text"
													disabled="true" style="width: 487px;" class="form-control"
													data-mask />

											</div>
										</div>

										<div class="form-group">

											<div class="input-group">
												<div class="input-group-addon">
													<span> 存款利率: </span>
												</div>
												<input id="deposit_rate" name="deposit_rate" disabled="true"
													type="text" style="width: 487px;" class="form-control"
													data-mask /> %
											</div>
											<!-- /.input group -->
										</div>
										<!-- /.form group -->

										<div class="form-group">

											<div class="input-group">
												<div class="input-group-addon">
													<span> 存款金额: </span>
												</div>
												<input type="text" id="depositmoney" name="depositmoney"
													style="width: 487px;" class="form-control" data-mask />
												&nbsp 单位：元
											</div>
											<!-- /.input group -->
										</div>




										<div class="modal-footer clearfix">

											<button type="button" id="btn"
												style="padding-left: 30px; padding-right: 30px;"
												class="btn btn-primary pull-left">
												<i class="fa fa-check"></i> 确定
											</button>
											<button type="button" id="btn_cancle"
												style="padding-left: 30px; padding-right: 30px;"
												class="btn btn-danger pull-left" data-dismiss="modal">
												<i class="fa fa-times"></i> 取消
											</button>
										</div>
								</form>
								<div class="box" id="div" style="display:none">
									<div class="box-header">
										<h3 class="box-title"><span id="message"></span></h3>
									</div>
									<!-- /.box-header -->
									<div class="box-body table-responsive">
										<table id="example3"
											class="table table-bordered table-striped">
											<thead>
												<tr>
													<th>利息（元）</th>
													<th>本息合计（元）</th>

												</tr>
											</thead>
											<tbody>

												<tr>
													<td><span id="interest"></span></td>
													<td ><span id="sum"></span></td>
												</tr>
											</tbody>

										</table>
									</div>
									<!-- /.box-body -->
								</div>
								<!-- /.box -->

							</div>
						</div>
					</div>

               
				</div>



				<%@ include file="../common/ad.jsp"%>
				
	</div>
	<!-- /.row -->
	
	<div style="height:200px"> </div>
	 <%@ include file="../common/foot.jsp"%>
	</section>
	<!-- /.content -->
	</aside>
	<!-- /.right-side -->
	</div>
	<!-- ./wrapper -->


	<!-- jQuery 2.0.2 -->
	<script src="../js/jquery.min.js"></script>
	<!-- jQuery UI 1.10.3 -->
	<script src="../js/jquery-ui-1.10.3.min.js" type="text/javascript"></script>
	<!-- Bootstrap -->
	<script src="../js/bootstrap.min.js" type="text/javascript"></script>
	<!-- InputMask -->
	<script src="../js/plugins/input-mask/jquery.inputmask.js"
		type="text/javascript"></script>
	<script
		src="../js/plugins/input-mask/jquery.inputmask.date.extensions.js"
		type="text/javascript"></script>
	<script src="../js/plugins/input-mask/jquery.inputmask.extensions.js"
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
	<script type="text/javascript" src="../js/validatedeposit.js"></script>
	<script type="text/javascript" src="../js/rate.js"></script>
	<script type="text/javascript" src="../js/takePutMoney.js"></script>



	<!-- Page script -->
	<script type="text/javascript">
	$(function() {		
		$("#nav_clientService").addClass("active");
		$("#nav_clientService").trigger("click");
        $("#nav_clientService_depositCalculate").addClass("active");
	});
		$("#btn").click(
						function() {
							//	console.info("yy");
							var result = val.form();
							//	console.info(result);
							if (false) {
								console.info(result);
								$(".loading").show();
								$
										.ajax({
											type : "post",
											url : "../dee_usernamejson.do",
											dataType : "json",

											error : function() {
											},
											success : function(json) {
												//	console.info("xxxx");
												$(".loading").hide();
												console
														.info(json.model.result.message);
												document
														.getElementById("mySpan").innerHTML = json.model.result.content;
												document
														.getElementById("myModalLabel").innerHTML = json.model.result.message;

												$('#myModal').modal('show');
												setTimeout("test()", 3000);

											},

										});
								return false;
							}

						});
		function show() {
			document.getElementById("div").style.display = "";
			//alert(document.getElementById("div").style.display)
		}
		$("#btn_cancle").click(
		function(){
		document.getElementById("div").style.display = "none";
		
		});

		//-------------------------------------------date--------------			

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
			$('#reservationtime').daterangepicker({
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
									moment().subtract('month', 1).startOf(
											'month'),
									moment().subtract('month', 1)
											.endOf('month') ]
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
					.iCheck({
						checkboxClass : 'icheckbox_minimal',
						radioClass : 'iradio_minimal'
					});
			//Red color scheme for iCheck
			$(
					'input[type="checkbox"].minimal-red, input[type="radio"].minimal-red')
					.iCheck({
						checkboxClass : 'icheckbox_minimal-red',
						radioClass : 'iradio_minimal-red'
					});
			//Flat red color scheme for iCheck
			$('input[type="checkbox"].flat-red, input[type="radio"].flat-red')
					.iCheck({
						checkboxClass : 'icheckbox_flat-red',
						radioClass : 'iradio_flat-red'
					});

			//Colorpicker
			$(".my-colorpicker1").colorpicker();
			//color picker with addon
			$(".my-colorpicker2").colorpicker();

			//Timepicker
			$(".timepicker").timepicker({
				showInputs : false
			});
		});
		$(function() {
			$("#example1").dataTable();
			$('#example2').dataTable({
				"bPaginate" : true,
				"bLengthChange" : false,
				"bFilter" : false,
				"bSort" : true,
				"bInfo" : true,
				"bAutoWidth" : false
			});
		});
	</script>
</body>
</html>
