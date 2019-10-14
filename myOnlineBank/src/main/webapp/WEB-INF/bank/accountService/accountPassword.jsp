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
                        账户密码修改
                        <small></small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> 首页</a></li>
						<li><a href="#"><i class="fa fa-laptop"></i> 账户服务</a></li>
                        <li class="active">账户密码修改</li>
                    </ol>
                </section>

                <!-- Main content -->
                <section class="content">
						
						<div class="row">
					
						<div class="col-lg-8">
							
						   <div class="box box-solid">
							 <div class="modal-body">
							 	<form id="changePass">
							  <div class="modal-body">  
							   
								 <div class="row">
									  		<div class="col-lg-8">
												 <div class="form-group">
							 							 <div class="input-group">
                                           					<span class="input-group-addon">选择账号：&nbsp;&nbsp;</span>
															
																<select class="form-control" name="cardid">
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
                                           					<span class="input-group-addon">旧账号密码：</span>
															<input name="cardpassword" type="password" class="form-control" placeholder="请输入旧账号密码">
                                           						 
														</div><!-- input-group -->
											</div> <!--  form-group -->
									  </div> <!--  col -->
									</div> <!--  row -->
									
									
									 <div class="row">
									  		<div class="col-lg-8">
												 <div class="form-group">
							 							 <div class="input-group">
                                           					<span class="input-group-addon">新账号密码：</span>
															<input name="newcardpassword" id="newcardpassword" type="password" class="form-control" placeholder="请输入新密码">
                                           						 
														</div><!-- input-group -->
											</div> <!--  form-group -->
									  </div> <!--  col -->
									</div> <!--  row -->
									
									
									 <div class="row">
									  		<div class="col-lg-8">
												 <div class="form-group">
							 							 <div class="input-group">
                                           					<span class="input-group-addon">新账号密码：</span>
															<input name="newcardpassword2" type="password" class="form-control" placeholder="请再次确认新密码">
                                           						 
														</div><!-- input-group -->
											</div> <!--  form-group -->
									  </div> <!--  col -->
									</div> <!--  row -->
									
									</div>
										
									<div class="modal-footer clearfix">
									<button type="submit" id="changePassBtn" style="padding-left: 30px; padding-right: 30px;" class="btn btn-primary pull-left"><i class="fa fa-check"></i> 提交</button>
									<button type="reset" style="padding-left: 30px; padding-right: 30px;" class="btn btn-danger pull-left" ><i class="fa fa-times"></i> 重置</button>
								</div>
							</form>
								 
						 </div> <!-- body -->
						   </div> <!-- box -->
						   
						   
					</div> <!-- col -->
						
						<%@ include file="../common/ad.jsp"%>
          
      
						
					</div> <!-- row --> 
					<div style="height:200px">
					
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
        <h4 class="modal-title"><i class="fa fa-lock"></i>&nbsp;&nbsp;&nbsp;账号密码修改</h4>
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
        $("#nav_accountManage_accountPassword").addClass("active");
	});
        	$(function(){
        		
        		$('#myModal').modal({
					
					backdrop:'static',
					show:false
				});
        		
        		var changePass =  $('#changePass').validate({  
    	            errorElement : 'span',  
    	            errorClass : 'help-block',  
    	            focusInvalid : false,  
    	            rules : {  
    	            	cardpassword : {  
    	                    required : true
    	                },
    	                newcardpassword :{
    	                	required:true
    	                },
    	                newcardpassword2:{
    	                	
    	                	equalTo:"#newcardpassword"
    	                }
    	            },  
    	            messages : {  
    	                
    	                cardpassword:{
    	                	required:"请输入旧密码"
    	                },
    	                newcardpassword:{
    	                	required:"请输入新密码"
    	                },
    	                newcardpassword2:{
    	                	equalTo:"两次密码不一致"
    	                }
    	                
    	                
    	        
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
        		
        		$("#changePassBtn").click(function(){
        			
        			var result = changePass.form();
        			if(result)
        			{
        				changeCardPass();
        			}
        			return false;
        			
        		})
        		
        	
        	})
        
         function changeCardPass()
	 {
		
	
		$(".loading").show();
		$.ajax({
			url:"/OnlineBank/bank/changeCardPass",
			type:"POST",
			data: $('#changePass').serialize(),
			dataType:"JSON",
			success:function(data){
				$(".loading").hide();
				$("#msg").html(data.msg);
				$('#myModal').modal('show');
		
			},
		error:function(){
			
			$(".loading").hide();
			$("#msg").html("更改失败");
			$('#myModal').modal('show');
			
		}
		
		});
	 }
        	
        	
        
        
        
        </script>
        
    </body>
</html>
