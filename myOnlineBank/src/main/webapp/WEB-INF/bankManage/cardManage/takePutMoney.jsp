<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    <head>
        <meta charset="UTF-8">
        <title>暴走银行 | 储蓄卡存款取款</title>
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
						 <li><a href="#"><i class="fa fa-money"></i>储蓄卡业务</a></li>
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
									  <form id="takeMoney">
										<div class="modal-body">
										 <div class="row">
									  		<div class="col-lg-7">
												 <div class="form-group">
							 							 <div class="input-group">
                                           					<span class="input-group-addon">卡号：&nbsp;&nbsp;&nbsp;&nbsp;</span>
															<input  name="obCard.obuserid" value="1000001410141923329409"  type="text" class="form-control" placeholder="存款金额" >
                                           						 
														</div><!-- input-group -->
											</div> <!--  form-group -->
									  </div> <!--  col -->
									</div> <!--  row -->
									
									
									<div class="row">
									  		<div class="col-lg-7">
												 <div class="form-group">
							 							 <div class="input-group">
                                           					<span class="input-group-addon">币种：&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                           						 <select name="currencyList" id="currencyList" name="obCurrency.Currencyid" class="form-control">
                                                					<option value="-1">请选择</option>
                                            					</select>
														</div><!-- input-group -->
											</div> <!--  form-group -->
									  </div> <!--  col -->
									</div> <!--  row -->
									
									<div class="row">
									  		<div class="col-lg-7">
												 <div class="form-group">
							 							 <div class="input-group">
                                           					<span class="input-group-addon">存款类型：</span>
                                           						 <select name="depositList" id="depositList" class="form-control">
																	<option value="-1">请选择</option>
                                            				    </select>
														</div><!-- input-group -->
											</div> <!--  form-group -->
									  </div> <!--  col -->
									</div> <!--  row -->
									
									<input type="hidden" name="obDepositCurrencyType.cdtpyeid" />
									
									<div id="date" class="row">
									  		<div class="col-lg-7">
												 <div class="form-group">
							 							 <div class="input-group">
                                           					<span class="input-group-addon">存款时限：</span>
                                           						 <select name="dateList" id="dateList" class="form-control">
																	<option value="-1">请选择</option>
                                            				    </select>
														</div><!-- input-group -->
											</div> <!--  form-group -->
									  </div> <!--  col -->
									</div> <!--  row -->
									
									 <div class="row">
									  		<div class="col-lg-7">
												 <div class="form-group">
							 							 <div class="input-group">
                                           					<span class="input-group-addon">起存金额：</span>
															<input name="minmoney" disabled="true" type="text" class="form-control" value="3" >
                                           						 
														</div><!-- input-group -->
											</div> <!--  form-group -->
									  </div> <!--  col -->
									</div> <!--  row -->
										
									 
									 <div class="row">
									  		<div class="col-lg-7">
												 <div class="form-group">
							 							 <div class="input-group">
                                           					<span class="input-group-addon">存款利率：</span>
															<input disabled="true" name="rate" value="" type="text" class="form-control"  >
                                           						 
														</div><!-- input-group -->
											</div> <!--  form-group -->
									  </div> <!--  col -->
									</div> <!--  row -->
									
																		
									 <div class="row">
									  		<div class="col-lg-7">
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
										<button type="submit" id="addBtn" style="padding-left: 30px; padding-right: 30px;" class="btn btn-primary pull-left" ><i class="fa fa-check"></i> 确定</button>
										<button type="button" style="padding-left: 30px; padding-right: 30px;" class="btn btn-danger pull-left" data-dismiss="modal"><i class="fa fa-times"></i> 取消</button>
									</div>
										
								</form>
								
                                    </div><!-- /.tab-pane -->
									
									<div class="tab-pane" id="tab_4-4">
									 <div class="modal-body">
														
														<div class="panel panel-default">
															<div class="panel-heading">
																<h4 class="panel-title">
																	<a data-toggle="collapse"  href="#myCollapsible">
																	
																		用户取款
																	</a>
																</h4>
																
																
															</div><!-- head -->
															
															<div id="myCollapsible" class="panel-collapse collapse">
																<div class="panel-body">
																<form id="takeMoney2">
												    			 <div class="row">
																  		<div class="col-lg-7">
																			 <div class="form-group">
														 							 <div class="input-group">
							                                           					<span class="input-group-addon">卡号：</span>
																						<input name="obuserid" value="1000001410141923329409" type="text" class="form-control" placeholder="输入卡号">
							                                           						 
																					</div><!-- input-group -->
																		</div> <!--  form-group -->
																  </div> <!--  col -->
																</div> <!--  row -->
												
															 <div class="row">
															  		<div class="col-lg-7">
																		 <div class="form-group">
													 							 <div class="input-group">
						                                           					<span class="input-group-addon">密码：</span>
																					<input name="cardpassword" value="123" type="password" class="form-control" placeholder="输入密码">
						                                           						 
																				</div><!-- input-group -->
																	</div> <!--  form-group -->
															  </div> <!--  col -->
															</div> <!--  row -->
																							
														<div class="modal-footer clearfix">
															<button type="submit" id="userBtn" style="padding-left: 30px; padding-right: 30px;" class="btn btn-primary pull-left" ><i class="fa fa-check"></i> 确定</button>
															<button type="button" style="padding-left: 30px; padding-right: 30px;" class="btn btn-danger pull-left" data-dismiss="modal"><i class="fa fa-times"></i> 取消</button>
														</div>	
													</form>
									                           
										 <div id="load" class="loading">                 
										     <div class="overlay"></div>
		     								 <div class="loading-img"></div>
										 </div>                      
											 </div> <!-- panel-body -->
										</div><!-- panel-body-pre -->			
									  </div><!-- panel -->
									 
							
										<table id="example1" class="table table-striped loading">
											<thead>
												
												<th>存款类型</th>
												<th>币种</th>
												<th>余额</th>
												<th>创建日期</th>
												<th>到期日期</th>
												<th>操作</th>
											</thead>
											<tbody id="body">
											
  									　　　</tbody>
										</table>
										
										
									</div>
                                   </div><!-- /.tab-pane -->
									
                                </div><!-- /.tab-content -->
                            </div><!-- nav-tabs-custom -->
							
							</div> <!-- col -->
					</div> <!-- row -->
					
					
					<%@ include file="../common/foot.jsp"%> 	
					
                </section><!-- /.content -->
            </aside><!-- /.right-side -->
        </div><!-- ./wrapper -->
		
		
		 <!-- COMPOSE MESSAGE MODAL -->
        <div class="modal fade" id="takeMoneyModel"  tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title"><i class="fa fa-money"></i>&nbsp;&nbsp;取款</h4>
                    </div>
                    
                        <div class="modal-body">
										  
                 
													
												<h4 id="takeMoneyTip" style="color:red">您好：<br>
												&nbsp;&nbsp;&nbsp;&nbsp;该存款并未到期，若强制取款将会损失利息，请您确认是否继续？</h4>
												
												<h4 id="takeMoneyMsg" class="loading" style="color:red">
													
												</h4>
												
													<div id="takeAccount" class="loading">
														<form id="takeAccountForm">
															 <div  class="row">
															  	<div class="col-lg-7">
																		 <div class="form-group">
													 							 <div class="input-group">
						                                           					<span class="input-group-addon">取款金额：</span>
																					<input name="money" id="accountMoney"  type="text" class="form-control" placeholder="输入取款金额">
						                                           					
																				</div><!-- input-group -->
																	</div> <!--  form-group -->
															  </div> <!--  col -->
															</div> <!--  row -->
														</form>
													</div>		
						                        
						                 <div class="modal-footer clearfix">
											<button type="button" id="userConfirm" style="padding-left: 30px; padding-right: 30px;" class="btn btn-primary pull-left" ><i class="fa fa-check"></i> 确定</button>
											<button type="button" style="padding-left: 30px; padding-right: 30px;" class="btn btn-danger pull-left" data-dismiss="modal"><i class="fa fa-times"></i> 取消</button>
										</div>	    
                        </div>
                       
              							<div id="confirmLoading" class="loading">
										 <div class="overlay"></div>
									     <div class="loading-img"></div>
								     </div>     
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->
        
        
  <div class="modal fade" id="myModal">
  <div class="modal-dialog">
    <div class="modal-content">
       <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title"><i class="fa fa-rmb"></i> 存款</h4>
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
        <script src="../js/plugins/datatables/jquery.dataTables.js" type="text/javascript"></script>
        <script src="../js/plugins/datatables/dataTables.bootstrap.js" type="text/javascript"></script>
        <script type="text/javascript" src="../js/rate.js"></script>
        <script type="text/javascript" src="../js/takePutMoney.js"></script>
        <script type="text/javascript" src="../js/plugins/jquery.validate.js"></script>
        <script type="text/javascript">
        $(function() {		
		$("#nav_cardManage").addClass("active");
		$("#nav_cardManage").trigger("click");
        $("#nav_cardManage_takePutMoney").addClass("active");
	});
        	var tId=0;
        	var dip=0;
        	var btnFlag =1;
        	var cardId;
        	var table;
        
        	$(function(){
        		
        		//.collapse('show')
   	
        		
        		$('#myCollapsible').collapse({
        			  toggle: true
        			});
        		$("#takeMoneyModel").modal({
        			
        			backdrop:'static',
        			show:false
        		});
 		
        		$("#userBtn").click(function(){
        			
	        			var result = val2.form();
	        			if(result)
	        		   {
	        				loginCheck();
	        				btnFlag =1;
	        			 
	        			 $("#load").show();
	        			//getAllMoney(270);
	        		   }
	        		return false;
   
        		});
        		
        		   var val2 =  $('#takeMoney2').validate({  
        	            errorElement : 'span',  
        	            errorClass : 'help-block',  
        	            focusInvalid : false,  
        	            rules : { 
        	            	obuserid : {  
        	                    required : true
        	                },
        		   			cardpassword :{
        		   			 required : true
        	                }
        	                
        	            },  
        	            messages : {  
        	            	obuserid:{
        	            		required:"卡号不能为空"
        	            	},
        	            	cardpassword :{
        	            		required:"密码不能为空"
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
        		   
        		   var val3 =  $('#takeAccountForm').validate({  
       	            errorElement : 'span',  
       	            errorClass : 'help-block',  
       	            focusInvalid : false,  
       	            rules : { 
       	            	money : {  
       	                    required : true,
       	                    number:true
       	                }
       	            },  
       	            messages : {  
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
        		  
        		   $("#userConfirm").click(function(){
        			   
        			   if(btnFlag==1)
        				{
        				   $("#takeMoneyModel").modal('hide');
        				   return ;
        			   }
        			   
        			   btnFlag=1;
        			   var result = val3.form();
        			  if(!result)
        				  return;
        			   
        			   $("#confirmLoading").show();
        			   
        			   $.ajax({
 	   
        				   url:"/OnlineBank/bankManage/takeMoney",
        				   type:"POST",
        				   dataType:"json",
        				   data:{"type":tId,"dId":dId,"money":$("#accountMoney").val()},
        				   success:function(data){
        					   if(data.code==0)
        					   {
        						   getAllMoney();
        					   }
        					   $("#takeMoneyTip").hide();
        					   $("#takeAccount").hide();
        					    $("#takeMoneyMsg").html(data.msg);
        			        	$("#takeMoneyMsg").show();
        					   $("#confirmLoading").hide();   					   
        				   },
        				   error:function(){
        					   
        					   $("#takeMoneyTip").hide();
        					   $("#takeAccount").hide();
       					       $("#takeMoneyMsg").html("取款失败");
       			        	   $("#takeMoneyMsg").show();
        					   $("#confirmLoading").hide();   
        				   }
        					   
        			   });
        			   
        		   });
        		 
        		
        	});
        function getAllMoney()
        {
        	
        	$.ajax({
        		
        		url:"/OnlineBank/bankManage/getAllMoney",
        		type:"POST",
        		dataType:"json",
        		data:{"cardId":cardId},
        		success:function(data){
        			$("#example1").show();
        			$("#example1 tbody tr").remove();
        			$("#load").hide();
        			for(var i=0;i<data.length;i++)
        			{
        				data[i].start=data[i].start==null?'':data[i].start;
        				data[i].end=data[i].end==null?'':data[i].end;
        				
        				$("#example1 tbody").append('<tr><td><a href=\"#\" class="cao">'+data[i].depositName+'</a></td><td onclick="alert(5)">'+data[i].currencyName+'</td><td>'+data[i].remain+'</td><td>'+data[i].start+'</td><td>'+data[i].end+'</td><td><a onclick="takeMoney('+data[i].type+' , '+data[i].tId+')"  href="javascript:void(0);">取款</a></td></tr>');
        				
        				
        			}
        			  //init();
        			//table.fnDraw();
        		},
        		error:function(){
        			
        		},
        		
        		
        	});
        	
        }
        function init()
        {
        	table = $("#example1").dataTable({
                "bPaginate": true,
                "bLengthChange": false, //是否允许自定义每页显示条数.
                "bFilter": false,
                "bSort": false,
                "bDestory":true,
                "bRetrieve":true,
                "bInfo": true,
                "bAutoWidth": false,
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
		    		}}
            });
        	
        }
        
        function loginCheck()
        {
        	$.ajax({
        		url:"/OnlineBank/bankManage/loginCheck.do",
        		data:$("#takeMoney2").serialize(),
        		dataType:"Json",
        		type:"post",
        		success:function(data){
        			
        			if(data.code==1)
        			{
        				$("#load").hide();
        				$("#takeMoneyTip").hide();
                    	$("#takeMoneyMsg").show();
                    	$("#takeAccount").hide();
                    	$("#takeMoneyMsg").html(data.msg);
                    	$("#takeMoneyModel").modal('show');
                    	$("#example1").hide();
        				
        			}
        			else
        			{
        				$("#load").hide();
        				cardId = data.code;
        				$('#myCollapsible').collapse('hide');
        				getAllMoney();
        				$("#example1").hide();
        			}
        			
        		},
        		error:function(){
        			
        			$("#load").hide();
        			
        		}
        		
        	});
        }
       
        function takeMoney(type,id)
        {
        	tId = type;
        	dId = id;
        	btnFlag =0;
        	if(tId==1)
        	{
        		$("#takeMoneyTip").hide();
            	$("#takeMoneyMsg").hide();
            	$("#takeAccount").show();
        	}
        	else
        	{
        		$("#takeMoneyTip").show();
            	$("#takeMoneyMsg").hide();
            	$("#takeAccount").hide();
        	}
        	$("#takeMoneyModel").modal('show');
        	
        } 	
        </script>
        <div class="loading">
		 <div class="overlay"></div>
	     <div class="loading-img"></div>
     </div>
    </body>
</html>
