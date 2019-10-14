<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
		<head>
        <meta charset="UTF-8">
        <title>暴走银行 | 信用卡存款取款</title>
        <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
        <!-- bootstrap 3.0.2 -->
        <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link rel="shortcut icon" href="fa.png">
        <!-- font Awesome -->
        <link href="../css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <!-- Ionicons -->
        <link href="../css/ionicons.min.css" rel="stylesheet" type="text/css" />
        <!-- Theme style -->
        <link href="../css/AdminLTE.css" rel="stylesheet" type="text/css" />

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
        
         <style type="text/css">
		   .loading{
		   
		   	display:none;
		   
		   }
		   .overlay {
		    z-index: 1010;
		    background: none repeat scroll 0% 0% rgba(255, 255, 255, 0.7);
		    }
			.loading-img {
		    z-index: 1020;
		    background: url('../img/ajax-loader1.gif') no-repeat scroll 50% 50% transparent;
		   }
		   
		  .overlay,.loading-img {
		    position: absolute;
		    top: 0px;
		    left: 0px;
		    width: 100%;
		    height: 100%;
		}
	</style>
        
    </head>
    <body class="skin-black">
      	  <%@ include file="../common/head.jsp"%>
          <div class="wrapper row-offcanvas row-offcanvas-left">
          <%@ include file="../common/beside.jsp"%>  

            <!-- Right side column. Contains the navbar and content of the page -->
            <aside class="right-side">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                        存款取款
                        <small></small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> 首页</a></li>
						 <li><a href="#"><i class="fa fa-credit-card"></i>信用卡业务</a></li>
                        <li class="active">存款取款</li>
                    </ol>
                </section>

                <!-- Main content -->
                <section class="content">
					
					<div class="row">
						
							<div class="col-lg-11">
							
								 <div class="nav-tabs-custom">
                                <ul class="nav nav-tabs pull-right">
                                    <li  class="active"><a href="#tab_3-3" data-toggle="tab">存款</a></li>
                                    <li><a href="#tab_4-4" data-toggle="tab">取款</a></li>
                                    <li class="pull-left header"><i class="fa fa-th"></i> 操作</li>
                                </ul>
                                <div class="tab-content">
                                    <div class="tab-pane active" id="tab_3-3">
									  <form  id="creditPutMoney">
										<div class="modal-body">
										
											<div class="row">
											  		<div class="col-lg-6">
														 <div class="form-group">
									 							 <div class="input-group">
		                                           					<span class="input-group-addon">卡号：&nbsp;&nbsp;&nbsp;&nbsp;</span>
																	<input name="cardId" type="text" class="form-control" placeholder="信用卡卡号" >
		                                           						 
																</div><!-- input-group -->
													</div> <!--  form-group -->
											  </div> <!--  col -->
											</div> <!--  row -->
											
											<div class="row">
											  		<div class="col-lg-6">
														 <div class="form-group">
									 							 <div class="input-group">
		                                           					<span class="input-group-addon">币种：&nbsp;&nbsp;&nbsp;&nbsp;</span>
		                                           						 <select class="form-control" name="currencyid">
																			
																			<option value="161">人民币</option>
																			<option value="163">美元</option>
		                                            				</select>
																</div><!-- input-group -->
													</div> <!--  form-group -->
											  </div> <!--  col -->
											</div> <!--  row -->
											
											
											
																				
											 <div class="row">
											  		<div class="col-lg-6">
														 <div class="form-group">
									 							 <div class="input-group">
		                                           					<span class="input-group-addon">存款金额：</span>
																	<input name="money" type="text" class="form-control" placeholder="存款金额" >
		                                           						 
																</div><!-- input-group -->
													</div> <!--  form-group -->
											  </div> <!--  col -->
											</div> <!--  row -->
											
											
											
											</div>
											
												<div class="modal-footer clearfix">
													<button id="putMoneyBtn" type="submit" style="padding-left: 30px; padding-right: 30px;" class="btn btn-primary pull-left" ><i class="fa fa-check"></i> 确定</button>
													<button type="button" style="padding-left: 30px; padding-right: 30px;" class="btn btn-danger pull-left" data-dismiss="modal"><i class="fa fa-times"></i> 取消</button>
											   </div>
										</form>   
		                                    </div><!-- /.tab-pane -->
									
									<div class="tab-pane" id="tab_4-4">
									 	<form id="creditTakeMoney">
									 		<div class="modal-body">
									 		<div class="row">
											  		<div class="col-lg-6">
														 <div class="form-group">
									 							 <div class="input-group">
		                                           					<span class="input-group-addon">卡号：&nbsp;&nbsp;&nbsp;&nbsp;</span>
																	<input name="obuserid" type="text" class="form-control" placeholder="信用卡卡号" >
		                                           						 
																</div><!-- input-group -->
													</div> <!--  form-group -->
											  </div> <!--  col -->
											</div> <!--  row -->
									 
										 
									 
									 
										<div class="row">
									  		<div class="col-lg-6">
												 <div class="form-group">
							 							 <div class="input-group">
                                           					<span class="input-group-addon">币种：&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                           						 <select class="form-control" name="currencyid">
																	<option value="161">人民币</option>
																	<option value="163">美元</option>
                                            				</select>
														</div><!-- input-group -->
											</div> <!--  form-group -->
									  </div> <!--  col -->
									</div> <!--  row -->
										
										<div class="row">
											  		<div class="col-lg-6">
														 <div class="form-group">
									 							 <div class="input-group">
		                                           					<span class="input-group-addon">取款金额：</span>
																	<input name="money" type="text" class="form-control" placeholder="取款金额" >
		                                           						 
																</div><!-- input-group -->
													</div> <!--  form-group -->
											  </div> <!--  col -->
											</div> <!--  row -->
									
									
									
									 <div class="row">
									  		<div class="col-lg-6">
												 <div class="form-group">
							 							 <div class="input-group">
                                           					<span class="input-group-addon">取款密码：</span>
															<input name="cardpassword" type="password" class="form-control" placeholder="请输入密码">
                                           						 
														</div><!-- input-group -->
											</div> <!--  form-group -->
									  </div> <!--  col -->
									</div> <!--  row -->
									</div>
									
									<div class="modal-footer clearfix">
										<button id="takeMoneyBtn" type="submit" style="padding-left: 30px; padding-right: 30px;" class="btn btn-primary pull-left" ><i class="fa fa-check"></i> 确定</button>
										<button type="button" style="padding-left: 30px; padding-right: 30px;" class="btn btn-danger pull-left" data-dismiss="modal"><i class="fa fa-times"></i> 取消</button>
									</div>
									
									
															
								</form>
								
                                 </div><!-- /.tab-pane -->
									
                                </div><!-- /.tab-content -->
                                </div><!-- nav-tabs-custom -->
							
							</div> <!-- col -->
					</div> <!-- row -->
							<div style="height:100px"></div>
							<%@ include file="../common/foot.jsp"%> 	
					
                </section><!-- /.content -->
            </aside><!-- /.right-side -->
        </div><!-- ./wrapper -->
		
		
		
<div class="modal fade" id="myModal">
  <div class="modal-dialog">
    <div class="modal-content">
       <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title"><i class="fa fa-credit-card"></i> 信用卡业务</h4>
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
        <script type="text/javascript" src="../js/plugins/jquery.validate.js"></script>
        <script type="text/javascript">
         $(function() {		
		$("#nav_creditCardManage").addClass("active");
		$("#nav_creditCardManage").trigger("click");
        $("#nav_creditCardManage_takePutMoney").addClass("active");
	});	
        	$(function(){
        		
				$("#myModal").modal({
        			
        			backdrop:'static',
        			show:false
        		});
        		
        		 var val2 =  $('#creditTakeMoney').validate({  
        	            errorElement : 'span',  
        	            errorClass : 'help-block',  
        	            focusInvalid : false,  
        	            rules : { 
        	            	obuserid:{
        	            		required:true
        	            	},
        	            	money : {  
        	                    required : true,
        	                    number:true
        	                },
        	                cardpassword:{
        	                	required:true
        	                	
        	                }
        	            },  
        	            messages : {  
        	            	obuserid:{
        	            		required:"卡号不能为空"
        	            	},
        	            	money:{
        	            		required:"金额不能为空",
        	            		number:"请输入正确金额"
        	            	},
        	            	cardpassword:{
        	            		required:"取款密码不能为空'"
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
        		 
        		 var val3 =$("#creditPutMoney").validate({  
     	            errorElement : 'span',  
    	            errorClass : 'help-block',  
    	            focusInvalid : false,  
    	            rules : { 
    	            	cardId:{
    	            		required:true
    	            	},
    	            	money : {  
    	                    required : true,
    	                    number:true
    	                }
    	            },  
    	            messages : {  
    	            	cardId:{
    	            		required:"卡号不能为空"
    	            	},
    	            	money:{
    	            		required:"金额不能为空",
    	            		number:"请输入正确金额"
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
        		 
        		 
        		 
        		 $("#takeMoneyBtn").click(function(){
        			 
        			 var result = val2.form();	
        			 if(result)
        			 {
        				 creditTakeMoney();	 
        			 }
        			 return false;
        		 });
        		 
        		 $("#putMoneyBtn").click(function(){
        			
        			 var result = val3.form();	
        			 if(result)
        			 {
        				 creditPutMoney();	 
        			 }
        			 return false;
        		 
        		 })
        		 
        	}) 
        	
        	
        	function creditTakeMoney()
        	{
        		$(".loading").show();
        		$.ajax({
        			url:"/OnlineBank/bankManage/takeCreditCardMoney",
        			type:"post",
        			dataType:"JSON",
        			data:$("#creditTakeMoney").serialize(),
        			success:function(data){
        				
        				$(".loading").hide();
						$("#msg").html(data.msg);
	  					$('#myModal').modal('show');        				
        			},
        			error:function(){
        				
        				$(".loading").hide();
						$("#msg").html("取款失败");
	  					$('#myModal').modal('show');
        			}
        		
        		});
        	}
        	
        	function creditPutMoney()
        	{
        		$(".loading").show();
        		$.ajax({
        			url:"/OnlineBank/bankManage/addCreditCardMoney",
        			type:"post",
        			dataType:"JSON",
        			data:$("#creditPutMoney").serialize(),
        			success:function(data){
        				
        				$(".loading").hide();
						$("#msg").html(data.msg);
	  					$('#myModal').modal('show');        				
        			},
        			error:function(){
        				
        				$(".loading").hide();
						$("#msg").html("存款失败");
	  					$('#myModal').modal('show');
        			}
        		
        		});
        	}
        </script>
      <div class="loading">
		 <div class="overlay"></div>
	     <div class="loading-img"></div>
     </div>
    </body>
</html>
