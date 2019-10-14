<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
                       关联账户管理
                        <small></small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> 首页</a></li>
						 <li><a href="#"><i class="fa fa-laptop"></i> 账户服务</a></li>
                        <li class="active">关联账户管理</li>
                    </ol>
                </section>

                <!-- Main content -->
                <section class="content">
				
						<div class="row">
					
						<div class="col-lg-12">
							
						   <div class="box box-solid">
							 <div class="modal-body">
							     
								
									<table class="table table-striped">
											<thead>
												<th></th>
												<th>账号</th>
												<th>户名</th>
												<th>账号类型</th>
												<th>账户开户行</th>
												<th>账户别名</th>
												<th>操作</th>
											<thead>
											<tbody id="tbody">
											 <c:forEach var="item" items="${cardList}">
											<tr>
											    <td><input type="checkbox" value='${item.cardid }'></td>
												<td>${item.obuserid}</td>
												<td>${item.cardname }</td>
												<td>${item.obCardtype.cardname }</td>
												<td>${item.obNetwork.networkname }</td>
												<td>${item.cardalias }</td>
												<td><a class="link" href="javascript:void(0)" value='${item.cardid}'>明细查询</a></td>
											</tr>
										</c:forEach>
  									　　　</tbody>
										</table>
                                <div class="box-footer clearfix">
									
									  <a href="#" class="btn btn-primary" data-toggle="modal" data-backdrop="static"  data-target="#myModal">新增关联账户</a>
								      <a href="#" class="btn btn-primary del">删除关联账户</a>
									 
  
                                </div>		
								
								 
						     </div> <!-- body -->
						   </div> <!-- box -->
						   
						   
					</div> <!-- col -->
						
					</div> <!-- row --> 

				<div style="height:400px">
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
        <h4 class="modal-title"><i class="fa fa-credit-card"></i>&nbsp;&nbsp;储蓄卡管理</h4>
      </div>
      <div class="modal-body">
        <h4 id="msg" style="color:red"></h4>
        <div id="tip">
        		<form id="addLink">
        							<div class="row">
									  		<div class="col-lg-10">
												 <div class="form-group">
							 							 <div class="input-group">
                                           					<span class="input-group-addon">储蓄卡卡号：</span>
															<input name="cardnum" type="text" class="form-control" placeholder="请输入储蓄卡卡号">
                                           						 
														</div><!-- input-group -->
											</div> <!--  form-group -->
									  </div> <!--  col -->
									</div> <!-- row -->
									
									<div class="row">
									  		<div class="col-lg-10">
												 <div class="form-group">
							 							 <div class="input-group">
                                           					<span class="input-group-addon">储蓄卡密码：</span>
															<input name="cardpassword" value="123456" type="password" class="form-control" placeholder="请输入储蓄卡密码">
                                           						 
														</div><!-- input-group -->
											</div> <!--  form-group -->
									  </div> <!--  col -->
									</div> <!-- row -->
									
									
									<div class="row">
									  		<div class="col-lg-10">
												 <div class="form-group">
							 							 <div class="input-group">
                                           					<span class="input-group-addon">开户名：</span>
															<input name="cardname" value="Chane" type="text" class="form-control" placeholder="请输入开户名">
                                           						 
														</div><!-- input-group -->
											</div> <!--  form-group -->
									  </div> <!--  col -->
									</div> <!-- row -->
									
									
									
									
									
									<div class="row">
									  		<div class="col-lg-10">
												 <div class="form-group">
							 							 <div class="input-group">
                                           					<span class="input-group-addon">证件类型：&nbsp &nbsp </span>
                                           						 <select class="form-control" name="certificatetype" id="cardid">
	                                                				 <option value="身份证">身份证</option>
						                                                <option value="军人身份证">军人身份证</option>
						                                                <option value="护照">护照</option>               
                                            				</select>
														</div><!-- input-group -->
											</div> <!--  form-group -->
									  </div> <!--  col -->
									</div> <!--  row -->
									
									
									
									<div class="row">
									  		<div class="col-lg-10">
												 <div class="form-group">
							 							 <div class="input-group">
                                           					<span class="input-group-addon">证件号码：</span>
															<input name="certificatenum" value="445281199207281234" type="text" class="form-control" placeholder="请输入证件号码">
                                           						 
														</div><!-- input-group -->
											</div> <!--  form-group -->
									  </div> <!--  col -->
									</div> <!-- row -->
									
									
									<div class="row">
									  		<div class="col-lg-10">
												 <div class="form-group">
							 							 <div class="input-group">
                                           					<span class="input-group-addon">账户别名：</span>
															<input name="cardalias" value="校园卡" type="text" class="form-control" placeholder="请输入账户别名">
                                           						 
														</div><!-- input-group -->
											</div> <!--  form-group -->
									  </div> <!--  col -->
									</div> <!-- row -->
									
								
				<div class="modal-footer clearfix">
					<button type="submit" id="addLinkBtn" type="button" style="padding-left: 20px; padding-right: 20px;" class="btn btn-primary pull-left"  ><i class="fa fa-check"></i> 确认</button>
					<button type="reset"  style="padding-left: 30px; padding-right: 30px;" class="btn btn-danger pull-left" data-dismiss="modal"><i class="fa fa-times"></i> 取消</button>
				</div>
				
              </form>
            </div>
        
      </div>
       <div id="load" class="loading">
		 <div class="overlay"></div>
	     <div class="loading-img"></div>
     </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
        
		
		

		<form id="detail" method="post" action="accountDetail">
			<input type="hidden" name="cardId" />
		</form>
		
	
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
        $("#nav_accountManage_accountManage").addClass("active");
	});
   			$(function(){
   				
   				$(".link").click(function(){
   					
   					$("#detail input[name='cardId']").val($(this).attr("value"));
   					$("#detail").submit();
   				});
   				
   				
   				var addLink =  $('#addLink').validate({  
    	            errorElement : 'span',  
    	            errorClass : 'help-block',  
    	            focusInvalid : false,  
    	            rules : {  
    	            	cardnum : {  
    	                    required : true
    	                },
    	                cardpassword:{
    	                	required:true
    	                },
    	                certificatenum:{
    	                	required:true
    	                },cardname:{
    	                	
    	                	required:true
    	                }
    	               
    	            },  
    	            messages : {  
    	            	
    	            	cardnum : {  
    	                    required : '请输入信用卡账号'
    	                },
    	                cardpassword:{
    	                	required:"请输入密码"
    	                },
    	                certificatenum:{
    	                	required:"请输入证件号码"
    	                },cardname:{
    	                	
    	                	required:"请输入开户名"
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
   				
   		
   				
				$("#addLinkBtn").click(function(){
			        var result = addLink.form();
			         if(result)
			         {
			            addCreditCardLink();
			         }
			        	return false;
			     });
			
			$(".del").click(function(){
				
					var arr = new Array() ;
				
					$("#tbody input[type='checkbox']").each(function(index, domEle){
						if($(this).prop("checked"))
						{
							arr.push($(this).attr("value"));
						}
					});
					if(arr.join()!="")
					{
						delLink(arr.join());
					}
			});
   				
   				
   			})
   		
   		//添加信用卡关联---储蓄卡也一样。
	function  addCreditCardLink()
	{
		
		$("#load").show();
    	$.ajax({
    		url:"/OnlineBank/bank/creditCard/addCreditCard",//加do与事物延迟关闭有关
    		data:$("#addLink").serialize(),
    		dataType:"JSON",
    		type:"POST",
    		success:function(data){
    			
    			$("#load").hide();
    			$("#msg").html(data.msg);
    			$('#myModal').modal('show');
    			if(data.code==0)
    			{
    				$("#tip").hide();
    				location.reload();
    			}
				
    			},
    		error:function(){
    			$("#load").hide();
    			$("#msg").html("添加失败");
    			
    		}
  
    	});
	}
   	
   			function  delLink(id)
   			{
   				
   				$(".loading").show();
   		    	$.ajax({
   		    		url:"/OnlineBank/bank/delLink",//加do与事物延迟关闭有关
   		    		data:{"id":id},
   		    		dataType:"JSON",
   		    		type:"POST",
   		    		success:function(data){
   		    			
   		    			$("#load").hide();
   		    			$("#msg").html(data.msg);
   		    			$('#myModal').modal('show');
   		    			if(data.code==0)
   		    			{
   		    				$("#tip").hide();
   		    				location.reload();
   		    			}
   						
   		    			},
   		    		error:function(){
   		    			$(".loading").hide();
   		    			$("#msg").html("删除失败");
   		    			
   		    		}
   		  
   		    	});
   			}
   		   			
   	
   		
   		</script>
        
        	
    </body>
</html>
