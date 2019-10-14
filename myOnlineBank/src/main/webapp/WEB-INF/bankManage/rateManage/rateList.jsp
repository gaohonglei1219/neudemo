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
		    height: 100%;
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
                        利率列表
                        <small></small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> 首页</a></li>
						<li><a href="#"><i class="fa fa-sitemap"></i> 利率管理</a></li>
                        <li class="active">利率列表</li>
                    </ol>
     </section>
    <!-- /.content --> 
	
	            <!-- Main content -->
                <section class="content">
						
					 <div class="row">
                        <div class="col-md-11">
                           
                           
							  <div class="panel panel-default">
							  
									<div class="panel-heading">
										<h4 class="panel-title">
											<a data-toggle="collapse"  href="#collapseFour">
											
												利率搜索
											</a>
										</h4>
										
										
									</div><!-- head -->
									
									<div id="collapseFour" class="panel-collapse collapse">
										<div class="panel-body">
											
									
									<div class="row">
									  		<div class="col-lg-7">
												 <div class="form-group">
							 							 <div class="input-group">
                                           					<span class="input-group-addon">币种：&nbsp;&nbsp;&nbsp;</span>
															
																<select id="currencyList" name="currencyid" class="form-control">
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
						                                    <span class="input-group-addon">时间范围:</span>
						                                     <input type="text" name="date" readonly="readonly" class="form-control pull-right" id="date"/>
						                                </div>
						                            </div>
									  </div> <!--  col -->
									</div> <!--  row -->	
							
			                           
			                            
			            <div class="modal-footer clearfix">
							<button type="submit" id="btn" style="padding-left: 30px; padding-right: 30px;" class="btn btn-primary pull-left"><i class="fa fa-search"></i> 搜索</button>
						</div>
			                            
					 </div> <!-- panel-body -->
				</div><!-- panel-body-pre -->			
			  </div><!-- panel -->
                           
             </div><!-- /.col -->
           </div> <!-- row -->  
           
           
            <div class="row">
                 <div class="col-md-11">
                 	
                 	 <table id="table_id" class="table table-bordered table-striped">
					
					</table>
                        
                 </div><!-- /.col -->
           </div> <!-- row -->  
                      
                      
                   
											
					

				<%@ include file="../common/foot.jsp"%> 
                </section><!-- /.content -->
            </aside><!-- /.right-side -->
</div>
<!-- ./wrapper --> 

<!-- COMPOSE MESSAGE MODAL -->


		
	

		
		<!-- jQuery 2.0.2 --> 

				<script src="../js/jquery.min.js"></script>
       
                <script src="../js/jquery-ui-1.10.3.min.js" type="text/javascript"></script>
				
				<!-- Bootstrap -->
				<script src="../js/bootstrap.min.js" type="text/javascript"></script>
				
				<!-- InputMask -->
				<script src="../js/plugins/input-mask/jquery.inputmask.js" type="text/javascript"></script>
				<script src="../js/plugins/input-mask/jquery.inputmask.date.extensions.js" type="text/javascript"></script>
				<script src="../js/plugins/input-mask/jquery.inputmask.extensions.js" type="text/javascript"></script>
				<!-- date-range-picker -->
				<script src="../js/plugins/daterangepicker/daterangepicker.js" type="text/javascript"></script>
				<!-- bootstrap color picker -->
				<script src="../js/plugins/colorpicker/bootstrap-colorpicker.min.js" type="text/javascript"></script>
				<!-- bootstrap time picker -->
				<script src="../js/plugins/timepicker/bootstrap-timepicker.min.js" type="text/javascript"></script>
				<!-- AdminLTE App -->
				<script src="../js/AdminLTE/app.js" type="text/javascript"></script>
				<!-- AdminLTE for demo purposes -->
				<script src="../js/AdminLTE/demo.js" type="text/javascript"></script>
				<script src="../js/plugins/datatables/jquery.dataTables.js" type="text/javascript"></script>
				<script src="../js/plugins/datatables/dataTables.bootstrap.js" type="text/javascript"></script>
				<script type="text/javascript" src="../js/plugins/jquery.validate.js"></script>		
				<script type="text/javascript" src="../js/rate.js"></script>	

	       <div class="loading">
				 <div class="overlay"></div>
			     <div class="loading-img"></div>
		     </div>	
		     
		     <script type="text/javascript">
		        $(function() {		
		$("#nav_rateManage").addClass("active");
		$("#nav_rateManage").trigger("click");
        $("#nav_rateManage_list").addClass("active");
	});	
		     $(function(){
		    	 
		    	 getCurrencyList($("#currencyList"));
		    	 $('#date').daterangepicker({
					 	language: 'zh-CN'
					 });
		    	 $("#btn").click(function(){
		    		 
		    		 table.fnDraw();
		    		 
		    	 });
		    	 var table = $('#table_id').DataTable({
		    	    	
		             "bServerSide": true,
		             'bStateSave': true,
		             "sAjaxSource": "/OnlineBank/getRateList.do",
		             "sServerMethod": "POST",
		             "bFilter": false,  //是否使用内置的过滤功能
		             "bProcessing": true, //当datatable获取数据时候是否显示正在处理提示信息。
		             "bLengthChange": true, //是否允许自定义每页显示条数.
		             "iDisplayLength":10, //每页显示10条记录
		             "aoColumns": [
		    				{ "sTitle": "币种名称","sClass": "center", "mDataProp": "coinName","bSearchable": false,"bSortable": false },
		    				{ "sTitle": "存款类型","sClass": "center", "mDataProp": "depositName","bSearchable": false,"bSortable": false},
		    				{ "sTitle": "存款时限","sClass": "center", "mDataProp": "dateName","bSearchable": false,"bSortable": false},
		    				{ "sTitle": "起存金额","sClass": "center", "mDataProp": "minmoney","bSearchable": false,"bSortable": false},
		    				{ "sTitle": "利率","sClass": "center", "mDataProp": "rate","bSearchable": false,"bSortable": false},
		    				{ "sTitle": "创建时间","sClass": "center", "mDataProp": "createdate","bSearchable": false,"bSortable": false},
		    				{ //自定义列
		    					"sTitle":"当前利率",
		    					"sClass": "center2",
		    					"mDataProp": "state",
		    					"bSearchable": false,
		    					"bSortable": false,
		    					"fnRender": function (obj) {
		    				
		    					        var value = obj.aData.state;
		    					         if(value) 
		    							 	return '<i class="fa fa-check"></i>';
		    							 else
		    								return '<i class="fa fa-times"></i> ';	
		    					}
		    				}
		                         ],
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
		    		},
		    		"sZeroRecords" : "没有检索到数据",
		    	// "sProcessing" : "<img src='./loading.gif' />"
		    	},
		    	"fnServerParams" : function(aoData) {
		    		aoData.push({"name" : "currencyid","value" : $("#currencyList").children('option:selected').val(),});
		    		aoData.push({"name":"date","value":$("#date").val()});
		    	}

		        });
		     
		     })
		     
		     </script>	
		     
		     	
</body>		     
</html>
