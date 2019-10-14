<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
		<head>
        <meta charset="UTF-8">
        <title>暴走银行 | 储蓄卡申请</title>
        <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
        <!-- bootstrap 3.0.2 -->
        <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css" />
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
		    height: 160%;
		}
	</style>
    </head>
    <body class="skin-black">
      <%@ include file="../common/head.jsp"%>
        <div class="wrapper row-offcanvas row-offcanvas-left">
            <!-- Left side column. contains the logo and sidebar -->
           <%@ include file="../common/beside.jsp"%> 

            <!-- Right side column. Contains the navbar and content of the page -->
            <aside class="right-side">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                        申请储蓄卡
                        <small></small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> 首页</a></li>
						 <li><a href="#"><i class="fa fa-money"></i>储蓄卡业务</a></li>
                        <li class="active">申请储蓄卡</li>
                    </ol>
                </section>

                <!-- Main content -->
                <section class="content">
					
					<div class="row">
						
							<div class="col-lg-11">
								<form id="addCard" action="" method="post">
							
								 <div class="modal-body">
								 
								 	 <div class="row">
									  		<div class="col-lg-8">
												 <div class="form-group">
							 							 <div class="input-group">
                                           					<span class="input-group-addon">姓名：&nbsp;&nbsp;&nbsp;&nbsp;</span>
															<input name="cardname" value="Chane" type="text" class="form-control" placeholder="请输入姓名">
                     	 
														</div><!-- input-group -->
												</div> <!--  form-group -->
									 		 </div> <!--  col -->
									</div> <!--  row -->
									
										<div class="row">
									  		<div class="col-lg-8">
												 <div class="form-group">
							 							 <div class="input-group">
                                           					<span class="input-group-addon">证件类型：</span>
                                           						 <select class="form-control" name="certificatetype">
																	<option value="身份证">身份证</option>
	  																<option value"护照">护照</option>
	  																<option value="港澳通行证">港澳通行证</option>
                                            				</select>
														</div><!-- input-group -->
											</div> <!--  form-group -->
									  </div> <!--  col -->
									</div> <!--  row -->
									
									 <div class="row">
									  		<div class="col-lg-8">
												 <div class="form-group">
							 							 <div class="input-group">
                                           					<span class="input-group-addon">证件号码：</span>
															<input name="certificatenum" value="445281199207281234" type="text" class="form-control" placeholder="输入卡号码">
                     	 
														</div><!-- input-group -->
												</div> <!--  form-group -->
									 		 </div> <!--  col -->
									</div> <!--  row -->
									
									
									<div class="row">
									  		<div class="col-lg-8">
												 <div class="form-group">
							 							 <div class="input-group">
                                           					<span class="input-group-addon">性别：&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                           						<select name="gender"  class="form-control">
                                           							<option value="0">男</option>
                                           							<option value="1">女</option>
                                           						</select>
														</div><!-- input-group -->
											</div> <!--  form-group -->
									  </div> <!--  col -->
									</div> <!--  row -->
									
									
									 <div class="row">
									  		<div class="col-lg-8">
												 <div class="form-group">
							 							 <div class="input-group">
                                           					<span class="input-group-addon">取款密码：</span>
															<input id="cardpassword" name="cardpassword" value="123456" type="password" class="form-control" placeholder="请输入取款密码">
                     	 
														</div><!-- input-group -->
												</div> <!--  form-group -->
									 		 </div> <!--  col -->
									</div> <!--  row -->
									
									 <div class="row">
									  		<div class="col-lg-8">
												 <div class="form-group">
							 							 <div class="input-group">
                                           					<span class="input-group-addon">确认密码：</span>
															<input name="cardpassword2" value="123456" type="password" class="form-control" placeholder="请确认密码">
                     	 
														</div><!-- input-group -->
												</div> <!--  form-group -->
									 		 </div> <!--  col -->
									</div> <!--  row -->
									
								 
										<div class="row">
									  		<div class="col-lg-8">
												 <div class="form-group">
							 							 <div class="input-group">
                                           					<span class="input-group-addon">卡类：&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                           						 <select class="form-control" id="cardTypeList" name="obCardtype.cardtypeid">
																	<option value="-1">--请选择--</option>   
                                            				</select>
														</div><!-- input-group -->
											</div> <!--  form-group -->
									  </div> <!--  col -->
									</div> <!--  row -->
												
									<div class="row">
									  		<div class="col-lg-8">
												 <div class="form-group">
												 
							 							 <div class="input-group">
                                           					 <span class="input-group-addon">开户行 &nbsp;&nbsp;&nbsp;</span>
																   <div class="row">
																   		<div class="col-lg-4">
								                                            <select id="province" class="form-control">
								                                                <option>---请选择---</option>
								                                            
								                                            </select>
																		</div>
																			<div  class="col-lg-4">
																			 <select id="city" class="form-control">
								                                                <option>---请选择---</option>
								                                            </select>
																		 </div>
																		 <div  class="col-lg-4">
																			 <select class="form-control" id="network" name="obNetwork.networkid">
								                                                <option value="-1">---请选择---</option>
								                                         
							                                            </select>
																		</div>
																	</div>
															</div>
											</div> <!--  form-group -->
									  </div> <!--  col -->
									</div> <!--  row -->
									
									
									<input type="hidden" value="0" name="state" />
									
									<div class="row">
									  		<div class="col-lg-8">
												 <div class="form-group">
							 							 <div class="input-group">
                                           					<span class="input-group-addon">固定电话：</span>
															<input type="text" name="fixphone" value="076983344477" class="form-control" placeholder="输入固定电话">
                                           						 
														</div><!-- input-group -->
											</div> <!--  form-group -->
									  </div> <!--  col -->
									</div> <!--  row -->
									
									
										<div class="row">
									  		<div class="col-lg-8">
												 <div class="form-group">
							 							 <div class="input-group">
                                           					<span class="input-group-addon">邮政编码：</span>
															<input type="text" name="postcode" value="523528" class="form-control" placeholder="输入邮政编码">
                                           						 
														</div><!-- input-group -->
											</div> <!--  form-group -->
									  </div> <!--  col -->
									</div> <!--  row -->
									
								
									
								
									
										 <div class="row">
										  		<div class="col-lg-8">
													 <div class="form-group">
								 							 <div class="input-group">
	                                           					<span class="input-group-addon">移动电话：</span>
																<input value="13226799648" name="phonenum" type="text" class="form-control" placeholder="输入证件号码">
	                                           						 
															</div><!-- input-group -->
												</div> <!--  form-group -->
										  </div> <!--  col -->
										</div> <!--  row -->
										
											 <div class="row">
										  		<div class="col-lg-8">
													 <div class="form-group">
								 							 <div class="input-group">
	                                           					<span class="input-group-addon">联系地址：</span>
																<input name="address" value="肇庆市端州区肇庆学院" type="text" class="form-control" placeholder="输入联系地址">
	                                           						 
															</div><!-- input-group -->
												</div> <!--  form-group -->
										  </div> <!--  col -->
										</div> <!--  row -->
										
											 <div class="row">
										  		<div class="col-lg-8">
													 <div class="form-group">
								 							 <div class="input-group">
	                                           					<span class="input-group-addon">电子邮箱：</span>
																<input value="378646744@qq.com" name="EMail" type="text" class="form-control" placeholder="输入证件号码">
	                                           						 
															</div><!-- input-group -->
												</div> <!--  form-group -->
										  </div> <!--  col -->
										</div> <!--  row -->
										
										
										<div class="row">
									  		<div class="col-lg-8">
												 <div class="form-group">
							 							 <div class="input-group">
                                           					<span class="input-group-addon">是否签约：</span>
                                           						 <select name="issigned" class="form-control">
																	
                                                					<option value="1">是</option>
                                                					<option value="0">否</option>                                               				
                                            				</select>
														</div><!-- input-group -->
											</div> <!--  form-group -->
									  </div> <!--  col -->
									</div> <!--  row -->
										
									</div>
									
								
									<input type="hidden" name="obuserid" />
										
								<div class="modal-footer clearfix">
									<button type="submit" id="btn" type="button" style="padding-left: 20px; padding-right: 20px;" class="btn btn-primary pull-left"  ><i class="fa fa-check"></i> 提交</button>
									<button type="reset"  style="padding-left: 30px; padding-right: 30px;" class="btn btn-danger pull-left"  ><i class="fa fa-times"></i> 重置</button>
								</div>

							</form>		
							</div> <!-- col -->
							
							
							
					</div> <!-- row -->
					
					<%@ include file="../common/foot.jsp"%> 		
                </section><!-- /.content -->
            </aside><!-- /.right-side -->
        </div><!-- ./wrapper -->
        
        
        
 <div class="modal fade" id="myModal">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title">申请结果</h4>
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
        <script type="text/javascript" src="../js/network.js"></script>
        <script type="text/javascript" src="../js/plugins/jquery.validate.js"></script>
        <script type="text/javascript">
         $(function() {		
		$("#nav_cardManage").addClass("active");
		$("#nav_cardManage").trigger("click");
        $("#nav_cardManage_apply").addClass("active");
	});
        	
        	$(function(){
        		
        		getCardType(0);
          		getProvince($("#province"));//获取省份
          		
          		$('#myModal').modal({
          			
          			backdrop:'static',
          			show:false
          			
          		});
          		
     
        		
        		$("#province").change(function(){
          			var pId = $(this).children('option:selected').val(); 
          			getCity(pId,$("#city"));
          		});
          		
          		$("#city").change(function(){
          			
          			var cityId =$(this).children('option:selected').val();
          			$("#addCard input[name='obuserid']").val($(this).children('option:selected').attr('code'));
          			getNetwork(cityId);
          			
          		});
          		
        		
        			$("#btn").click(function(){
        				
        				var result = val.form();
        				if(result)
        				{
        					$(".loading").show();
        					$.ajax({
        		  				url:"/OnlineBank/bankManage/addCard",
        		  				data:$("#addCard").serialize(),
        		  				type:"POST",
        		  				dataType:"json",
        		  				success:function(data){
        		  					$(".loading").hide();
        		  					$("#msg").html(data.msg);
        		  					$('#myModal').modal('show')
        		  				},
        		  				error:function(){
        		  					$(".loading").hide();
    	    						$("#msg").html("申请失败");
        		  					$('#myModal').modal('show');
        		  				}
        		  			});
        				}
        				return false;
        			});
        		
        		var val =  $('#addCard').validate({  
        	            errorElement : 'span',  
        	            errorClass : 'help-block',  
        	            focusInvalid : false,  
        	            rules : {  
        	            	cardname : {  
        	                    required : true
        	                }, 
        	                certificatenum :{
        	                	required:true
        	                },
        	                cardpassword : {
        	                	required:true
        	                },
        	                 cardpassword2 : {
        	                	equalTo: "#cardpassword"
        	                },
        	                 'obCardtype.cardtypeid':{
        	                	 
        	                	 min:0	
        	                },
        	                'obNetwork.networkid':{
        	                	
        	                	min:0
        	                },
        	                phonenum:{
        	                	required:true
        	                },
        	                EMail:{
        	                	
        	                	required:true,
        	                	email:true	
        	                },
  							postcode:{
        	            
        	                	required:true
        	                }
        	                
        	            },  
        	            messages : {  
        	            	cardname : {  
        	                    required : "姓名不能为空"
        	                },
        	                certificatenum : {
        	                	
        	                	 required : "证件号码不能为空"
        	                },
        	                cardpassword :{
        	                	
        	                	required:"取款密码不能为空"
        	                },
        	                cardpassword2:{
        	                	
        	            		equalTo:"密码不一致"
        	                },
        	                'obCardtype.cardtypeid':{
        	                	
        	                	min:"卡类型不能为空"
        	                } ,
        	                'obNetwork.networkid':{
        	                	
        	                	min:"请选择开户行"
        	                }, phonenum:{
        	                	required:"移动电话不能为空"
        	                },EMail:{
        	                	required:"电子邮箱不能为空",
        	                	email:"请输入正确邮箱"
        	                },
        	                postcode:{
        	                	required:"邮政编码不能为空"
        	              
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
        		
        	});
        
        </script>
       <div class="loading">
		 <div class="overlay"></div>
	     <div class="loading-img"></div>
     </div>
    </body>
</html>
  