<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AdminLTE | Widgets</title>
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
                        账户挂失
                        <small></small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> 首页</a></li>
						<li><a href="#"><i class="fa fa-laptop"></i> 账户服务</a></li>
                        <li class="active">账户挂失</li>
                    </ol>
                </section>

                <!-- Main content -->
                <section class="content">
						
						<div class="row">
					
						<div class="col-lg-8">
							
						   <div class="box box-solid">
							 <div class="modal-body">
							 	<form id="updateState">
							     <div class="modal-body">
								 <div class="row">
									  		<div class="col-lg-8">
												 <div class="form-group">
							 							 <div class="input-group">
                                           					<span class="input-group-addon">挂失账号：</span>
															
																<select class="form-control" name="cardid" style="width: 487px;">
                                                				<c:forEach var="card" items="${cardList}">
                                                					<option value='${card.cardid }'>${card.obuserid }</option>
                                                					</c:forEach>
                                            					</select>
                                           						 
														</div><!-- input-group -->
											</div> <!--  form-group -->
									  </div> <!--  col -->
									</div> <!--  row -->
									
									
									 <div class="row">
									  		<div class="col-lg-8">
												 <div class="form-group">
							 							 <div class="input-group">
                                           					<span class="input-group-addon">账号密码：</span>
															<input name="cardpassword" type="password" class="form-control" placeholder="Email CC" style="width: 487px;">
                                           						 
														</div><!-- input-group -->
											</div> <!--  form-group -->
									  </div> <!--  col -->
									</div> <!--  row -->
								</div>	
									
								<div class="modal-footer clearfix">
								<button type="submit" id="updateStateBtn" style="padding-left: 30px; padding-right: 30px;" class="btn btn-primary pull-left"><i class="fa fa-check"></i> 提交</button>
							</div>
						  </form>	 
						 </div> <!-- body -->
						   </div> <!-- box -->
						   
						   
					</div> <!-- col -->
						
						<%@ include file="../common/ad.jsp"%>
						
					</div> <!-- row --> 
					<div style="height:230px">
				</div>
					<%@ include file="../common/foot.jsp"%>
                </section><!-- /.content -->
            </aside><!-- /.right-side -->
        </div><!-- ./wrapper -->

<div class="modal fade" id="myModal">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title"><i class="fa fa-bullhorn"></i>&nbsp;&nbsp;&nbsp;账号挂失</h4>
      </div>
      <div class="modal-body">
        <h4 id="msg" style="color:red"></h4>
      </div>
      <div class="modal-footer">
       
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
        <script type="text/javascript" src="../js/jquery.validate.js"></script>
        
       <script type="text/javascript">
       	$(function() {		
		$("#nav_accountManage").addClass("active");
		$("#nav_accountManage").trigger("click");
        $("#nav_accountManage_accountLoss").addClass("active");
	});
       		$(function(){
       			
       			var updateState =  $('#updateState').validate({  
    	            errorElement : 'span',  
    	            errorClass : 'help-block',  
    	            focusInvalid : false,  
    	            rules : {  
    	            	cardpassword : {  
    	                    required : true
    	                },
    	               
    	            },  
    	            messages : {  
    	                
    	                cardpassword:{
    	                	required:"请输入密码"
    	                },
    	            },  
    	  
    	            highlight : function(element) {  
    	               
    	            	$(element).closest('.form-group').addClass('has-error');  
    	            },  
    	  
    	            success : function(label) {  
    	                label.closest('.form-group').removeClass('has-error');  
    	                label.remove();  
    	            },  
    	  
    	            errorPlacement : function(error, element) {  
    	            
    	            	
    	            	element.parents('.form-group').append(error);  

    	            },  
    	  
    	            submitHandler : function(form) {  
    	                form.submit();  
    	            }  
    	        });  
       			
       			$("#updateStateBtn").click(function(){
       				
       				var result = updateState.form();
       				if(result)
       				{
       					updateCardState();
       				}
       				return false;
       			});
       			
       		
       		
       		})
       	
       	function updateCardState()
	{
		
	
		$(".loading").show();
		$.ajax({
			url:"/OnlineBank/bank/updateState",
			type:"POST",
			data: $('#updateState').serialize(),
			dataType:"JSON",
			success:function(data){
				$(".loading").hide();
				$("#msg").html(data.msg);
				$('#myModal').modal('show');
			},
		error:function(){
			
			$(".loading").hide();
			$("#msg").html("挂失失败");
			$('#myModal').modal('show');
			
		}
		
		});
	}
       		
       		
       
       </script>
        
    </body>
</html>
