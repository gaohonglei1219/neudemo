<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>暴走银行_个人信息管理</title>
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
                        个人信息管理
                        <small></small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> 首页</a></li>
						 <li><a href="#"><i class="fa fa-user"></i>客户服务</a></li>
                        <li class="active">个人信息管理</li>
                    </ol>
                </section>

                <!-- Main content -->
                <section class="content">
					
					<div class="row">
						
							<div class="col-lg-8 col-sm-11 col-xs-11 col-md-10">
							
								 <div class="nav-tabs-custom">
                                <ul class="nav nav-tabs pull-right">
									<li  class="active"><a href="#tab_2-2" data-toggle="tab">预留信息修改</a></li>
									<li><a href="#tab_3-3" data-toggle="tab">网银密码修改</a></li>
                                    <li><a href="#tab_4-4" data-toggle="tab">网银登录名修改</a></li>
                                    <li class="pull-left header"><i class="fa fa-th"></i> 操作</li>
                                </ul>
                                <div class="tab-content">
                                    <div class="tab-pane" id="tab_3-3">	
						        	<form id="userForm3">
									<div class="modal-body">
									 <div class="row">
									  		<div class="col-lg-8">
												 <div class="form-group">
							 							 <div class="input-group">
                                           					<span class="input-group-addon">旧密码：</span>
															<input name="password" id ="password" type="text" class="form-control"  style="width: 491px;">
                                           						 
														</div><!-- input-group -->
											</div> <!--  form-group -->
									  </div> <!--  col -->
									</div> <!--  row -->
									
									
									 <div class="row">
									  		<div class="col-lg-8">
												 <div class="form-group">
							 							 <div class="input-group">
                                           					<span class="input-group-addon">新密码：</span>
															<input name="new1" type="text" id="new1" class="form-control"  style="width: 491px;">
                                           						 
														</div><!-- input-group -->
											</div> <!--  form-group -->
									  </div> <!--  col -->
									</div> <!--  row -->
									
									 <div class="row">
									  		<div class="col-lg-8">
												 <div class="form-group">
							 							 <div class="input-group">
                                           					<span class="input-group-addon">新密码：</span>
															<input name="new2" type="text" id="new2" class="form-control" placeholder="Email CC" style="width: 491px;">
                                           						 
														</div><!-- input-group -->
											</div> <!--  form-group -->
									  </div> <!--  col -->
									</div> <!--  row -->
									
									
									
									
									</div>
									
							<div class="modal-footer clearfix">
							 <button type="submit" id="btn3" type="button" style="padding-left: 20px; padding-right: 20px;" class="btn btn-primary pull-left"  ><i class="fa fa-check"></i> 提交</button>
								<button type="button" style="padding-left: 30px; padding-right: 30px;" class="btn btn-danger pull-left" data-dismiss="modal"><i class="fa fa-times"></i> 取消</button>
							</div>
							</form>			
								
                                    </div><!-- /.tab-pane -->
									<div class="tab-pane active" id="tab_2-2">
									
										 <div class="row">
									<div class="col-lg-11">
			           <form  id="userForm2" >
                        <div class="modal-body">
                            <div class="form-group">
                                <div class="input-group">
                                    <span class="input-group-addon">电子邮箱:</span>
                                    <input name="email" id ="email" type="email" class="form-control"  style="width: 487px;">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="input-group">
                                    <span class="input-group-addon">手机号码:</span>
                                    <input name="phone" type="text" id ="phone" class="form-control"  style="width: 487px;">
                                </div>
                            </div>
                          
						
							
							
							
                          
                        </div>
                        <div class="modal-footer clearfix">
                            <button type="submit" id="btn2" type="button" style="padding-left: 20px; padding-right: 20px;" class="btn btn-primary pull-left"  ><i class="fa fa-check"></i> 提交</button>
                            <button type="button" style="padding-left: 30px; padding-right: 30px;" class="btn btn-danger pull-left" data-dismiss="modal"><i class="fa fa-times"></i> 取消</button>

                           
                        </div>
                    </form>
									</div>
								
							</div> <!-- row -->
									
										
								
                                    </div><!-- /.tab-pane -->
									<div class="tab-pane" id="tab_4-4">
									
										
									
								    <form  id="userForm" >
									<div class="modal-body">
									
									 <div class="row">
									  		<div class="col-lg-8">
												 <div class="form-group">
							 							 <div class="input-group">
                                           					<span class="input-group-addon">新登录名:</span>
															<input   name="username" id="username" type="text"   class="form-control" class="easyui-validatebox" required="true"  missingMessage="姓名必须填写" placeholder="new name" style="width: 487px;">
                                           						 
														</div><!-- input-group -->
											</div> <!--  form-group -->
									  </div> <!--  col -->
									</div> <!--  row -->
									
									
								
									
									</div>
									
								<div class="modal-footer clearfix">
 	<!-- <input type="button" style="padding-left: 30px; padding-right: 30px;" class="btn btn-primary pull-left" value="提交" class="button" id="userFormSubmitBtn" /> -->
 	                        <button type="button" id="btn" type="button" style="padding-left: 20px; padding-right: 20px;" class="btn btn-primary pull-left"  ><i class="fa fa-check"></i> 提交</button>
                            <button type="button" style="padding-left: 30px; padding-right: 30px;" class="btn btn-danger pull-left" data-dismiss="modal"><i class="fa fa-times"></i> 取消</button>

                           
                        </div>
									
										
								    </form>
                                    </div><!-- /.tab-pane -->
									
									
                                </div><!-- /.tab-content -->
                            </div><!-- nav-tabs-custom -->
							
							</div> <!-- col -->
							
							 <div class="col-md-4"> 
          
          <!-- quick email widget -->
          <div class="box box-solid box-info">
            <div class="box-header"> <i class="fa fa-heart-o"></i>
              <h3 class="box-title">温馨提示</h3>
            </div>
            <div class="box-body">
             
              <ul class="todo-list banknotice">
                <li> <a href="#">1.请尽量使用专用电脑操作网上银行。</a> </li>
                <li> <a href="#">2.请尽量使用专用电脑操作。</a> </li>
                <li> <a href="#">3.请使用专用电脑操作网上银行。</a> </li>
                <li> <a href="#">4.关于2014年财务财务报告苏丹红佛山等回复华盛顿。</a> </li>
              </ul>
            </div>
          </div>
          <!-- end widget --> 
          
        </div>
					
					</div> <!-- row -->
					
				<div style="height:300px"> </div>
<%@ include file="../common/foot.jsp"%>

                </section><!-- /.content -->
            </aside><!-- /.right-side -->
        </div><!-- ./wrapper -->
		
		
		 <!-- COMPOSE MESSAGE MODAL -->
        <div class="modal fade" id="compose-modal"  tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title"><i class="fa fa-pencil"></i> 新增|编辑操作</h4>
                    </div>
                    
                        <div class="modal-body">
						
							 <div class="row">
									<div class="col-lg-11">
										  <form action="#" method="post">
                        <div class="modal-body">
                            <div class="form-group">
                                <div class="input-group">
                                    <span class="input-group-addon">收款人账号:</span>
                                    <input name="email_to" type="email" class="form-control" placeholder="Email TO">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="input-group">
                                    <span class="input-group-addon">收款人姓名:</span>
                                    <input name="email_to" type="email" class="form-control" placeholder="Email CC">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="input-group">
                                    <span class="input-group-addon">账号别名:</span>
                                    <input name="email_to" type="email" class="form-control" placeholder="Email BCC">
                                </div>
                            </div>
							
							 <div class="form-group">
                                <div class="input-group">
                                    <span class="input-group-addon">短信通知号码:</span>
                                    <input name="email_to" type="email" class="form-control" placeholder="Email BCC">
                                </div>
                            </div>
							
							
							
							 <div class="form-group">
							 	 <div class="input-group">
                                           <span class="input-group-addon">开户行</span>
										   <div class="row">
										   		<div class="col-lg-4">
                                            <select class="form-control">
                                                <option>option 1</option>
                                                <option>option 2</option>
                                                <option>option 3</option>
                                                <option>option 4</option>
                                                <option>option 5</option>
                                            </select>
												</div>
												<div class="col-lg-4">
											 <select class="form-control">
                                                <option>option 1</option>
                                                <option>option 2</option>
                                                <option>option 3</option>
                                                <option>option 4</option>
                                                <option>option 5</option>
                                            </select>
											 </div>
											 <div class="col-lg-4">
											 <select class="form-control">
                                                <option>option 1</option>
                                                <option>option 2</option>
                                                <option>option 3</option>
                                                <option>option 4</option>
                                                <option>option 5</option>
                                            </select>
											 </div>
											</div>
									</div>
                                        </div>
                          
                        </div>
                        <div class="modal-footer clearfix">

                            <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="fa fa-times"></i> 取消</button>

                            <button type="submit" class="btn btn-primary pull-left"><i class="fa fa-check"></i> 提交</button>
                        </div>
                    </form>
									</div>
								
							</div> <!-- row -->
                            
                        </div>
                       
              
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->
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
       
      </div>
    </div>
  </div>
</div>	


        <!-- jQuery 2.0.2 -->
        <script src="../js/jquery.min.js"></script>
        <!-- Bootstrap -->
       
        <script src="../js/bootstrap.min.js" type="text/javascript"></script>
       
        <!-- AdminLTE App -->
        <script src="../js/AdminLTE/app.js" type="text/javascript"></script>
        <!-- AdminLTE for demo purposes -->
        <script src="../js/AdminLTE/demo.js" type="text/javascript"></script>
       <script type="text/javascript" src="../js/jquery.validate.js"></script>
       <script type="text/javascript" src="../js/validate.js"></script>
       </head>
   
     <script type="text/javascript">
     $(function() {		
		$("#nav_clientService").addClass("active");
		$("#nav_clientService").trigger("click");
        $("#nav_clientService_personManage").addClass("active");
	});
    function test()
   {
    $('#myModal').modal('hide');
    }    
  
	  
	$("#btn").click(function(){
	   //     console.info("btn");
			var result = val1.form();
		//	console.info(result);
        	if(result)
        	{
        	
        	$.ajax({
				type : "post",
				url : "../edit_usernamejson.do",
				dataType : "json",
				data : $('#userForm').serialize(),
				error : function() {
				},
				success : function(json) {
				//	console.info("xxxx");
				    $(".loading").hide();
					console.info(json.model.result.message);
					document.getElementById("mySpan").innerHTML = json.model.result.content;
					document.getElementById("myModalLabel").innerHTML = json.model.result.message;					
					$('#myModal').modal('show');
					setTimeout("test()",3000);
					$(".userName").html($("#username").val());
					
					
				},
				
			});
			
			return false;
			}
			
		});
	  
	$("#btn3").click(function(){
			var result = val3.form();
			console.info(result);
        	if(result)
        	{
        	$(".loading").show();
        	$.ajax({
				type : "post",
				url : "../edit3_usernamejson.do",
				dataType : "json",
				data : $('#userForm3').serialize(),
				error : function() {
				},
				success : function(json) {
				//	console.info("xxxx");
				    $(".loading").hide();
					console.info(json.model.result.message);
					document.getElementById("mySpan").innerHTML = json.model.result.content;
					document.getElementById("myModalLabel").innerHTML = json.model.result.message;
					
					
					$('#myModal').modal('show');
					setTimeout("test()",3000);
					
				},
				
			});
			return false;
			}
			
		});	
	$("#btn2").click(function(){
			var result = val2.form();
			console.info(result);
        	if(result)
        	{
        	$(".loading").show();
        	$.ajax({
				type : "post",
				url : "../edit2_usernamejson.do",
				dataType : "json",
				data : $('#userForm2').serialize(),
				error : function() {
				},
				success : function(json) {
				//	console.info("xxxx");
				    $(".loading").hide();
					console.info(json.model.result.message);
					document.getElementById("mySpan").innerHTML = json.model.result.content;
					document.getElementById("myModalLabel").innerHTML = json.model.result.message;
					
					$('#myModal').modal('show');
					setTimeout("test()",3000);
					
				},
				
			});
			return false;
			}
			
		});	
     		 
		</script>
    </body>
    
</html>
