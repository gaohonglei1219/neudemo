<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="UTF-8">
<title>暴走银行 | 首页</title>
<meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
<!-- bootstrap 3.0.2 -->
<link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<!-- font Awesome -->
<link href="../css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<!-- Ionicons -->
<link href="../css/ionicons.min.css" rel="stylesheet" type="text/css" />
<!-- Theme style -->
<link href="../css/AdminLTE.css" rel="stylesheet" type="text/css" />
<link href="../css/index.css" rel="stylesheet" type="text/css" />
<link href="../css/daterangepicker/daterangepicker-bs3.css" rel="stylesheet" type="text/css" />

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
		    height: 105%;
		}
	</style>

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
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
                        交易类型添加
                        <small></small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> 首页</a></li>
						<li><a href="#"><i class="fa fa-bar-chart-o"></i> 交易类型管理</a></li>
                        <li class="active">交易类型添加</li>
                    </ol>
     </section>
    <!-- /.content --> 
	
	 <section class="content">
						
						<div class="row">
					
						<div class="col-lg-11">
							
						   <div class="box box-solid">
							 <div class="modal-body">
									
									<form  id="addDealType" method="POST">
								
								
									
									 <div class="row">
									  		<div class="col-lg-7">
												 <div class="form-group">
							 							 <div class="input-group">
                                           					<span class="input-group-addon">交易名称：</span>
															<input name="dealname" type="text" class="form-control" placeholder="输入交易名称">
                                           						 
														</div><!-- input-group -->
											</div> <!--  form-group -->
									  </div> <!--  col -->
									</div> <!--  row -->
									
									 <div class="row">
									  		<div class="col-lg-7">
												 <div class="form-group">
							 							 <div class="input-group">
                                           					<span class="input-group-addon">手续费：&nbsp;&nbsp;</span>
															<input name="consume" value="0" type="text" class="form-control" placeholder="输入手续费">
                                           						 
														</div><!-- input-group -->
											</div> <!--  form-group -->
									  </div> <!--  col -->
									</div> <!--  row -->
									
									 <div class="row">
									  		<div class="col-lg-7">
												 <div class="form-group">
							 							 <div class="input-group">
                                           					<span class="input-group-addon">最高费用：</span>
															<input name="max" value="" type="text" class="form-control" placeholder="输入最高费用">
                                           						 
														</div><!-- input-group -->
											</div> <!--  form-group -->
									  </div> <!--  col -->
									</div> <!--  row -->
					
									
										<div class="modal-footer clearfix">
										<button type="submit" id="btn" style="padding-left: 30px; padding-right: 30px;" class="btn btn-primary pull-left"><i class="fa fa-check"></i> 提交</button>
										<button type="reset" style="padding-left: 30px; padding-right: 30px;" class="btn btn-danger pull-left"><i class="fa fa-times"></i> 重置</button>
									</div>
								</form>
								 
							 </div> <!-- body -->
						   </div> <!-- box -->
						   
						   
					</div> <!-- col -->
						
					</div> <!-- row --> 
					
				<%@ include file="../common/foot.jsp"%> 
					
                </section><!-- /.content -->
  </aside>
  <!-- /.right-side --> 
</div>
<!-- ./wrapper --> 

	
	 <div class="modal fade" id="myModal">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title"><i class="fa fa-edit"></i>添加结果</h4>
      </div>
      <div class="modal-body">
        <h4 id="msg" style="color:red"></h4>
      </div>
      <div class="modal-footer">
       
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->


 <script type="text/javascript" src="../js/plugins/jquery.validate.js"></script>

  <!-- jQuery 2.0.2 -->
        <script src="../js/jquery.min.js"></script>
        <!-- Bootstrap -->
        <script src="../js/bootstrap.min.js" type="text/javascript"></script>
        <!-- AdminLTE App -->
		 <!-- date-range-picker -->
        <script src="../js/plugins/daterangepicker/daterangepicker.js" type="text/javascript"></script>
        <script src="../js/AdminLTE/app.js" type="text/javascript"></script>
        <!-- AdminLTE for demo purposes -->
        <script src="../js/AdminLTE/demo.js" type="text/javascript"></script>
       <script type="text/javascript" src="../js/rate.js"></script>
       <script type="text/javascript" src="../js/plugins/jquery.validate.js"></script>
        <script type="text/javascript">
       $(function() {		
		$("#nav_dealTypeManage").addClass("active");
		$("#nav_dealTypeManage").trigger("click");
        $("#nav_dealTypeManage_add").addClass("active");
	});
		
        	$(function(){
        		
        		
        		
        		
        		$("#btn").click(function(){
        			
        			var result = val.form();
	        		if(result)
	        		{   
	        			$(".loading").show();
	        			$.ajax({
	    					url:"/OnlineBank/bankManage/addDealType.do",
	    					data:$('#addDealType').serialize(),
	    					dataType:"json",
	    					type:"POST",
	    					success:function(data){
	    						$(".loading").hide();
	    						$("#msg").html(data.msg);
    		  					$('#myModal').modal('show');
	    					},
	    					error:function(){
	    						$(".loading").hide();
	    						$("#msg").html("添加失败");
    		  					$('#myModal').modal('show');
	    						
	    					}
	    				});
	    				return false;
	        		}
        			
        		});
        		
        		 
        		  
        		  
        		
        		  var val =  $('#addDealType').validate({  
      	            errorElement : 'span',  
      	            errorClass : 'help-block',  
      	            focusInvalid : false,  
      	            rules : { 
      	            	dealname : {  
      	                    required : true
      	                },
      	                consume:{
      	                	required:true,
      	                	number:true
      	                },max:{
      	                	number:true
      	                }
      	                
      	            },  
      	            messages : {  
      	            	dealname : {  
      	                    required : "交易名称不能为空"
      	                },
      	                consume :{
      	                	required:"手续费不能为空",
      	                	number:"请输入正确的数字"
      	                	
      	                },
      	                max:{
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
        		  
        	})
        </script>
        
	<div class="loading">
		 <div class="overlay"></div>
	     <div class="loading-img"></div>
     </div>
</body>
</html>
