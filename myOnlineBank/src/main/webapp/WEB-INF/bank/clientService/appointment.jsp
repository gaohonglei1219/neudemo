<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>暴走银行_大额取款预约</title>
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
					大额取款预约 <small></small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> 首页</a></li>
					<li><a href="#"><i class="fa fa-user"></i>客户服务</a></li>
					<li class="active">大额取款预约</li>
				</ol>
			</section>

			<!-- Main content -->
			<section class="content">
				<div class="row">
					<!-- Small boxes (Stat box) -->

					<!-- Small boxes (Stat box) -->
					<div class="col-lg-8 col-sm-11 col-xs-11 col-md-10">
						<form id="appointment">
							<div class="box box-success">
								<div class="box-header">
									<h3 class="box-title">预约取款</h3>
								</div>
								<div class="modal-body">
									<div class="box-body">
										卡号选择:
										 <select id="cardid" name="cardid" class="form-control" 
											style="width: 340px;">
											<option value="">请选择</option>									
										</select> <br />
										<div class="form-group">
											需要取:
											<div class="input-group">
												<input id="money" name ="money" type="text" style="width: 340px; "
													class="form-control" data-mask/ placeholder="不少于100万">
												&nbsp 单位：万元
											</div>
										</div>
										<br />
										<div class="bootstrap-timepicker">
											<div class="form-group">
												时间预约:
												<div class="input-group">
													<div class="input-group-addon">
														<i class="fa fa-clock-o"></i>
													</div>
													<input id="time_clock" name= "time_clock" type="text" class="form-control timepicker"
														style="width: 150px;display:inline;" /> 
														<input  id="time_date" name="time_date"
														type="text" class="form-control"
														style="width: 150px;display:inline;"
														data-inputmask="'alias': 'dd/mm/yyyy'" data-mask />
												</div>
												<!-- /.input group -->
											</div>
											<!-- /.form group -->
										</div>
									</div>
									<!-- /.box-body -->
								</div>
								<div class="modal-footer clearfix">
									<button type="button" id="btn_appointment"
										style="padding-left: 30px; padding-right: 30px;"
										class="btn btn-primary pull-left">
										<i class="fa fa-check"></i> 确定
									</button>
									<button type="button"
										style="padding-left: 30px; padding-right: 30px;"
										class="btn btn-danger pull-left" data-dismiss="modal">
										<i class="fa fa-times"></i> 取消
									</button>
								</div>
							</div>
							<!-- /.box -->
					</div>
					</form>

					<%@ include file="../common/ad.jsp"%>

				</div>
				<!-- /row -->
				<div style="height:200px"> </div>
	 <%@ include file="../common/foot.jsp"%>
			</section>
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
     <!--  <button type="button" class="btn btn-primary">Save changes</button> -->  
      </div>
    </div>
  </div>
</div>
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
	<script type="text/javascript" src="../js/jquery.validate.js"></script>
	<!-- Page script -->
	<script type="text/javascript">
	$(function() {		
		$("#nav_clientService").addClass("active");
		$("#nav_clientService").trigger("click");
        $("#nav_clientService_appointment").addClass("active");
	});
	 function test()
    {
     $('#myModal').modal('hide');
    } 
	   var name = '${user.obusername}'; //拿到session的用戶名
       console.info(name);
       //得到卡号
	   $(function() {
	   $(".loading").show();
	   $.ajax({
		type : "post",
		url : "../fresh_user.do",
        dataType : "json",
        data :"obusername="+'${user.obusername}',                                              
		error : function() {
		},
		success : function(json) {
		var data=json.model.cards;
		var selObj=$("#cardid");
		for(var i=0;i<data.length;i++)
		{
		var value = data[i].obuserid;
		var text = data[i].cardtype;
							
		selObj.append("<option value='"+value+"'>"+value+"     "+text+"</option>");  
		}
		$(".loading").hide();
       },
       });
       });
	
		$("#btn_appointment").click(
		function() {
		//	console.info("yy");
		var result = val1.form();
		//	console.info(result);
		console.info(result);
		if (result) {
		console.info(result);
		$(".loading").show();
		$.ajax({
		type : "post",
		url : "../fresh_user.do",
	    dataType : "json",  
	    data :"obusername="+'${user.obusername}',                                                               
	    error : function() {
	    },
	    success : function(json) {
												//	console.info("xxxx");
	    $(".loading").hide();
	  //  console.info(json.model.result.message);
	    document.getElementById("mySpan").innerHTML = "请按时到指定银行，如有变动请及时和工作人员联系";
	    document.getElementById("myModalLabel").innerHTML = "成功预约";    
	    $('#myModal').modal('show');
	    setTimeout("test()", 3000);

	    },

	    });
	    return false;
	    }

	    });
      var val1 =  $('#appointment').validate({  
      errorElement : 'span',  
      errorClass : 'help-block',  
      focusInvalid : false,  
      rules : { 
          cardid:{
            required : true
          },
          money: {  
              required : true
          }, 
      	time_clock: {  
              required : true
          }, 
          time_date:{
          	required:true,
          	
          },
        
             
          
      },  
      messages : {  
         cardid:{        
         required:"请选择卡"
         },
         money: {  
              required : "金额不能为空"
          }, 
      	time_clock: {  
              required : "时间不能为空"
          },
          time_date: {
          	
        	  required:"时间不能为空 "         		 
          }
      },  
      highlight : function(element) {  
         
      	$(element).closest('.form-group').addClass('has-error');  
      },      
      errorPlacement : function(error, element) {  
      	element.parents('.form-group').append(error);  
      },  
      submitHandler : function(form) {  
          form.submit();  
      }  
  });  
		//------------------日期---------------- 
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
	</script>
</body>
</html>
