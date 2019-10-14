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
                        账户详情
                        <small></small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> 首页</a></li>
						<li><a href="#"><i class="fa fa-laptop"></i> 账户服务</a></li>
                        <li class="active">账户详情</li>
                    </ol>
                </section>

                <!-- Main content -->
                <section class="content">
				
					<div class="row">
						<div class="col-lg-8">
							      
							<div class="box box-solid">
							
                        	  <div class="modal-body">
						
						             <div class="row">
                        <div class="col-xs-12">
                            <h2 class="page-header">
                                <i class="fa fa-globe"></i> ${card.obCardtype.cardname }
                                <small class="pull-right">开卡日期: 2014/10/15</small>
                            </h2>
                        </div><!-- /.col -->
                    </div>
                    <!-- info row -->
                    <div class="row invoice-info">
                        <div class="col-sm-4 invoice-col">
                            <b>卡号：</b>
                            <address>
                                <strong>${card.obuserid}</strong><br>
                             
                            </address>
                        </div><!-- /.col -->
                        <div class="col-sm-4 invoice-col">
                            <b>开户行：</b>
                            <address>
                                <strong>${card.obNetwork.networkname }</strong><br>
                             
                            </address>
                        </div><!-- /.col -->
                        <div class="col-sm-4 invoice-col">
                            <b>账户别名：</b>
								<address>
                                <strong>${card.cardalias}</strong><br>
                            </address>
                           
                        </div><!-- /.col -->
                    </div><!-- /.row -->

                    <!-- Table row -->
                    <div class="row">
                        <div class="col-xs-12 table-responsive">
                            <table id="mytable" class="table table-striped">
                                <thead>
                                    <tr>
                                        <th>存款类型</th>
                                        <th>币种</th>
                                        <th>余额</th>
                                        <th>创建时间</th>
                                        <th>结束时间</th>
                                    </tr>
                                </thead>
                                <tbody>
                                   <c:forEach var="item" items="${moneyList}">
                                   		
                                   		<tr>
                                   			<td>${item.depositName}</td>
                                   			<td>${item.currencyName }</td>
                                   			<td>${item.remain}</td>
                                   			<td>${item.start}</td>
                                   			<td>${item.end}</td>
                                   		</tr>
                                   		
                                   </c:forEach>
                                </tbody>
                            </table>
                        </div><!-- /.col -->
                    </div><!-- /.row -->
										  
                             </div>  <!-- modal-body -->
                        
           
			                   				
							</div> <!-- box -->
								
						</div>  <!-- col -->
							
							 	<%@ include file="../common/ad.jsp"%>
						
					</div>  <!-- row -->

				<div style="height:150px"> </div>
					<%@ include file="../common/foot.jsp"%>
                </section><!-- /.content -->
            </aside><!-- /.right-side -->
        </div><!-- ./wrapper -->


        <!-- jQuery 2.0.2 -->
        <script src="../js/jquery.min.js"></script>
        <!-- Bootstrap -->
        <script src="../js/bootstrap.min.js" type="text/javascript"></script>
        <!-- AdminLTE App -->
		 <!-- date-range-picker -->
        <script src="../js/plugins/daterangepicker/daterangepicker.js" type="text/javascript"></script>
        <script src="../js/AdminLTE/app.js" type="text/javascript"></script>
        <script type="text/javascript" src="../js/plugins/datatables/jquery.dataTables.js"></script>
        <script type="text/javascript" src="../js/plugins/datatables/dataTables.bootstrap.js"></script>
        <!-- AdminLTE for demo purposes -->
        <script src="js/AdminLTE/demo.js" type="text/javascript"></script>
		<script type="text/javascript">
		$(function() {		
		$("#nav_accountManage").addClass("active");
		$("#nav_accountManage").trigger("click");
        $("#nav_accountManage_accountDetail").addClass("active");
	});
			$(function(){
				
				 $('#reservation').daterangepicker({
					 	language: 'zh-CN'
					 });
				 
				 
				 $('#mytable').DataTable({
				"bFilter": false,  //是否使用内置的过滤功能
				"bProcessing": true, //当datatable获取数据时候是否显示正在处理提示信息。
				"bLengthChange": false, //是否允许自定义每页显示条数.
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
				}
			    });
				
			})
			
			 
		</script>
    </body>
</html>
