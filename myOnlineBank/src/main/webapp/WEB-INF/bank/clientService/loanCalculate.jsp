<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>暴走银行 | 首页</title>
<meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
<!-- bootstrap 3.0.2 -->
<link rel="shortcut icon" href="../images/logofa.png" />
<link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<!-- font Awesome -->
<link href="../css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<!-- Ionicons -->
<link href="../css/ionicons.min.css" rel="stylesheet" type="text/css" />
<!-- Theme style -->
<link href="../css/AdminLTE.css" rel="stylesheet" type="text/css" />
<link href="../css/index.css" rel="stylesheet" type="text/css" />

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
				贷款计算器
				<small></small>
			</h1>
			 <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> 首页</a></li>
						 <li><a href="#"><i class="fa fa-user"></i>客户服务</a></li>
                        <li class="active">贷款计算器</li>
                    </ol>
			</section>

			<!-- Main content -->
			<section class="content">
            

			<div class="row">
				<div class="col-md-8">

					<div class="box box-success">
						<div class="box-header" style="margin:5px;">
						
						
							<button class="btn btn-primary btn-sm">
								商业贷款
							</button>
							
							<button class="btn btn-primary btn-sm disabled">
								公积金贷款
							</button>
							
							<button class="btn btn-primary btn-sm disabled">
								组合贷款
							</button>
							


						</div>
						<div class="modal-body">
						<div class="box-body">
						 <form id="deposit">
							<!-- Date dd/mm/yyyy -->
							<div class="form-group">

								<div class="input-group">
									<div class="input-group-addon">
										<span>
											贷款金额:
										</span>
									</div>
									<input id="depositmoney" name="depositmoney" type="text" style="width: 487px;" class="form-control" data-mask />
									&nbsp 单位：元
								</div>
								<!-- /.input group -->
							</div>
							<!-- /.form group -->

							<div class="form-group">

								<div class="input-group">
									<div class="input-group-addon">
										<span>
											贷款期限:
										</span>
									</div>


									<select id="cycle" name="cycle" class="form-control" style="width: 487px;">
										<option value="6">
											半年（6个月）
										</option>
										<option value="12">
											一年（12个月）
										</option>
										<option value="24">
											两年（24个月）
										</option>
										<option value="36">
											三年（36个月）
										</option>
										<option value="48">
											四年（48个月）
										</option>
										<option value="60">
											五年（60个月）
										</option>
										<option value="120">
											10年（120个月）
										</option>
										<option value="240">
											20年（240个月）
										</option>
									</select>
									


								</div>
								<!-- /.input group -->
							</div>
							<!-- /.form group -->

							<!-- phone mask -->
							<div class="form-group">

								<div class="input-group">
									<div class="input-group-addon">
										<span>
											贷款利率:
										</span>
									</div>
									<select id="rate_first" name="rate_first" class="form-control" style="width: 203px;">
										<option value="100">
											手动输入
										</option>
										<option value="90">
											最新基准利率
										</option>
										<option value="92">
											12-06-08最新基准利率
										</option>
										<option value="93">
											11-07-07最新基准利率
										</option>
										<option value="95">
											11-04-06最新基准利率
										</option>
										<option value="98">
											11-02-09最新基准利率
										</option>
									</select>
									&nbsp * &nbsp
									<select id="rate_second" name ="rate_second" class="form-control" style="width: 120px;">
										<option value="100">
											无折扣
										</option>
										<option value="95">
											95折
										</option>
										<option value="90">
											9折
										</option>
										<option value="85">
											85折
										</option>
										<option value="80">
											8折
										</option>
										<option value="75">
											75折
										</option>
									</select>
									=
									<input id="deposit_rate" name="deposit_rate" type="text" style="width: 120px;" class="form-control" data-mask />
									 %
								</div>
								<!-- /.input group -->
							</div>
							<!-- /.form group -->

							<div class="form-group">

								<div class="input-group">
									<div class="input-group-addon" style="border: 1px solid #ccc;">
										<span>
											还款方式:
										</span>
									</div>
									<div class="radio">
										<label style="margin-left:20px;">
											<input id="deposit_type" name="deposit_type" type="radio" 
												value="1">
											等额本息
										</label>
										<label style="margin-left:20px;">
											<input id="deposit_type" name="deposit_type" type="radio" 
												value="2">
											等额本金
										</label>
									</div>
									
								</div>
								<!-- /.input group -->
							</div>
						
							

							<div class="box-bottom">
										
											<button id="btn" class="btn btn-primary btn-lg"  >
												计算
											</button>
											
											<button id="btn_hide" class="btn btn-primary btn-lg">
												重置
											</button>
								</div>
		                   </form>
		 
								
								
								
								
								<div class="box" id="div" style="display:none">
									<div class="box-header">
										<h3 class="box-title">
											<span id="result_message"></span></p>
											
										</h3>
										<h4 class="box-title"><span id="result_content"></span></h4>
									</div>
									<!-- /.box-header -->
									<div class="box-body table-responsive">
										<table id="example1"
											class="table table-bordered table-striped">
											<thead>
												<tr>
													<th>
														期次
													</th>
													<th>
														偿还本息（元）
													</th>
													<th>
														偿还利息（元）
													</th>
													<th>
														偿还本金（元）
													</th>
													<th>
														剩余本金（元）
													</th>
												</tr>
											</thead>
											<tbody>

											
											</tfoot>
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


				<!-- Page script -->
				<script type="text/javascript">
				$(function() {		
				$("#nav_clientService").addClass("active");
				$("#nav_clientService").trigger("click");
        		$("#nav_clientService_loanCalculate").addClass("active");
			});
		$(function() {
	
	
		function show(){
    	document.getElementById("div").style.display="";
    	}
    	function hide(){
    	console.info("xj");
    	document.getElementById("div").style.display="none";
    	}
    	$("#btn_hide").click(function(){
    	console.info("xx");
   	    hide();
    
    	});
   		 $("#btn").click(function(){
	         
			var result = val3.form();
		    console.info("vals");
        	if(result)
        	{       	
        	$(".loading").show();
        	$.ajax({
				type : "post",
				url : "../cal_equal_interest",
				dataType : "json",
				data : $('#deposit').serialize(),
				error : function() {
				},
				success : function(json) {
				var data=json.model.data;
				console.info(data.length);
				    $(".loading").hide();
				    var tbody = document.createElement("tbody"); //新建一个tbody类型的Element节点
                    var tbody1=document.createAttribute("tbody1");
                    var col = 5;
                    var value=new Array(5);
                    data[data.length-1].surplus=0.00;
                   
					
					//删除所有行
					var parNode1 = document.getElementById("example1");
					var tbody1;
					tbody1=document.getElementsByTagName("tbody")[0];
					parNode1.removeChild(tbody1); 
					
             
				     for(var i=0; i<data.length;i++) 
		             {      var tr = document.createElement("tr"); //新建一个tr类型的Element节点
		                    value[0]=data[i].id+1;
		                    value[1]=data[i].repay_interest;
		                    value[2]=data[i].interest;
		                    value[3]=data[i].repay_capital;
		                    value[4]=data[i].surplus;
		                   
 							for(var j=0;j<col;j++)  
 							{
 								 var td = document.createElement("td"); //新建一个td类型的Element节点
  									td.innerHTML = value[j];// 链接。。。。
  									tr.appendChild(td); //将节点td加入tr中
							}
 								 tbody.appendChild(tr); //将节点tr加入tbody中	
 								 var parNode = document.getElementById("example1"); //定位到table上
								 parNode.appendChild(tbody); //将节点tbody加入节点尾部
		             	             		              
		             }
		             document.getElementById("result_message").innerHTML = json.model.result.message;
		             document.getElementById("result_content").innerHTML = json.model.result.content;
		         //    $("#example1").dataTable();
				//	console.info(json.model.result.message);
				//	document.getElementById("mySpan").innerHTML = json.model.result.content;
				//	document.getElementById("myModalLabel").innerHTML = json.model.result.message;					
				//	$('#myModal').modal('show');
				//	setTimeout("test()",3000);
				//	$(".userName").html($("#username").val());
					show();		
					},
				
					});
			
				return false;
			}
			
			 });
    
    
    
    
    
    
    
   		 //验证
    	 var val3 =  $('#deposit').validate({  
     	 errorElement : 'span',  
     	 errorClass : 'help-block',  
      		focusInvalid : false,  
      		rules : { 
          	depositmoney: {  
              required : true
         	 }, 
      		 deposit_rate: {  
         	     required : true
        	  }, 
         	 deposit_type:{
         	 	required:true,
          	
          	}
        
          
     	 },  
     	 messages : {  
         		depositmoney: {  
             	 required : "贷款金额不能为空"
        	  }, 
      	 	 deposit_rate: {  
         	     required : "贷款利率不能为空"
         	 },
         	 deposit_type: {
          	
        		  required:  "类型不能为空"
          		 
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
        function change()
        {
           var rate_first = $("#rate_first option:selected").val();
        if (rate_first!=100)
        {
        var rate_second =$("#rate_second option:selected").val();
        var rate=rate_first*rate_second/1000;      
        $("#deposit_rate").val(rate);     
        document.getElementById("deposit_rate").readOnly=true;       
        }
        else
        {
         document.getElementById("deposit_rate").readOnly=false;    
         $("#deposit_rate").val("");
        }
        }
        function change2()
        {
          var rate_first = $("#rate_first option:selected").val();
         if (rate_first!=100)
         {
        var rate_second =$("#rate_second option:selected").val();
        var rate=rate_first*rate_second/1000;
        $("#deposit_rate").val(rate);
         document.getElementById("deposit_rate").readOnly=true;
           
        }
        else
        {
        document.getElementById("rate_second").readOnly=true;
        $("#deposit_rate").val("");
        }
        }
       $("#rate_first").change(function(){
       change();
       });
         $("#rate_second").change(function(){      			
        change2();
        });
         var rate_first = $("#rate_first option:selected").val();
        if (rate_first!=100)
        {
           document.getElementById("deposit_rate").readOnly=true;
        }
    
   //------------------date----------------------- 
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
		
		$('#example2').dataTable( {
			"bPaginate" : true,
			"bLengthChange" : false,
			"bFilter" : false,
			"bSort" : true,
			"bInfo" : true,
			"bAutoWidth" : false
		});
	});
	

//alert(document.getElementById("div").style.display)

</script>
	</body>
</html>
