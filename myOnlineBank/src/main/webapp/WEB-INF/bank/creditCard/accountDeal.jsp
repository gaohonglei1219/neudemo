<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>暴走银行 | 账户明细查询</title>
<meta
	content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no'
	name='viewport'>
<link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link rel="shortcut icon" href="../images/logofa.png" />

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
                        账户明细查询
                        <small></small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> 首页</a></li>
						<li><a href="#"><i class="fa fa-laptop"></i> 账户服务</a></li>
                        <li class="active">账户明细查询</li>
                    </ol>
                </section>

                <!-- Main content -->
                <section class="content">
				
					<div class="row">
						<div class="col-lg-9 col-sm-11 col-xs-11 col-md-10">
							      
							<div class="box box-solid">
                        	<div class="modal-body">
						
						 <div class="form-group">
							 	 <div class="input-group">
                                           <span class="input-group-addon">账号：&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                            <select id="pageCard" class="form-control">
                                            <option value="${cardId }">请选择</option>
                                            	<c:forEach var="card" items="${creditCardList}">
                                            	<option value='${card.cardid }'>${card.obuserid }</option>
                                            	</c:forEach>
                                            </select>
									</div>
                           </div>
										
                            <div class="form-group">
                                <div class="input-group">
                                    <span class="input-group-addon">时间范围:</span>
                                     <input type="text"  readonly class="form-control pull-right" id="date"/>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer clearfix">

                            <button type="button" id="search" style="padding-left: 30px; padding-right: 30px;" class="btn btn-primary pull-left"><i class="fa fa-search-plus"></i> 查询</button>
                        </div>
           
			                     <div style="padding:10px">
								 <table id="table_id" class="table table-striped">
											
								 </table>
								</div> <!--  table -->					
							</div> 
								
						</div>  <!-- col -->
						
							<%@ include file="../common/ad.jsp"%>
						
					</div>  <!-- row -->

				<div style="height:100px">
				</div>
					
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
        <!-- AdminLTE for demo purposes -->
        <script src="js/AdminLTE/demo.js" type="text/javascript"></script>
		<script type="text/javascript" src="../js/plugins/datatables/jquery.dataTables.js"></script>
        <script type="text/javascript" src="../js/plugins/datatables/dataTables.bootstrap.js"></script>
		<script type="text/javascript">
		
			$(function(){
				
				 $('#date').daterangepicker({
					 	language: 'zh-CN'
					 });
				 
				 $("#search").click(function(){
					 
					 table.fnDraw();
				 });
				 
				 $("#pageCard").change(function(){
					 
					 table.fnDraw();
				 });
				
				
				 
				 
				 var table = $('#table_id').DataTable({
				    	
			         "bServerSide": true,
			         "sAjaxSource": "/OnlineBank/bank/getDealDetail",
			         "sServerMethod": "POST",
			        /* "sPaginationType" : "full_numbers",*/
			         "bFilter": false,  //是否使用内置的过滤功能
			         "bProcessing": true, //当datatable获取数据时候是否显示正在处理提示信息。
			         "bLengthChange": false, //是否允许自定义每页显示条数.
			         "iDisplayLength":8, //每页显示10条记录
			         "aoColumns": [
							{ "sTitle":"编号","sClass": "center", "mDataProp": "ddid" ,"bSearchable": false,"bSortable": false,"bVisible": false },
							{ "sTitle": "交易币种","sClass": "center", "mDataProp": "currencyName","bSearchable": false,"bSortable": false },
							{ "sTitle": "交易卡号","sClass": "center", "mDataProp": "cardId","bSearchable": false,"bSortable": false },
							{ "sTitle": "交易概要","sClass": "center", "mDataProp": "summary","bSearchable": false,"bSortable": false},
							{ "sTitle": "交易金额","sClass": "center", "mDataProp": "money","bSearchable": false,"bSortable": false},
							{ "sTitle": "交易时间","sClass": "center", "mDataProp": "dealtime","bSearchable": false,"bSortable": false}
							
			                     ],
			    "oLanguage" : {
					"sLengthMenu" : "每页显示 _MENU_ 条记录",
					"sZeroRecords" : "抱歉， 没有找到",
					"sInfo" : "从[_START_]到 [_END_] /共[_TOTAL_]条数据",
					"sInfoEmpty" : "没有数据",
					"sInfoFiltered" : "(从[_MAX_] 条数据中检索)",
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
					aoData.push({"name":"cardId","value":$("#pageCard").children('option:selected').val()});
					aoData.push({"name":"date","value":$("#date").val()});
				}

			    });
				 
				 
			});
			
			 
			 function getPageCard(selObj)
		        {
		        	//selObj.find("option").remove();
		        	
		        	$.ajax({
		        		url:"/OnlineBank/bank/getPageCardList",
		        		dataType:"json",
		        		type:"POST",
		        		success:function(data){
		        		  if(data.code==1)
		        		  {
		        			alert(data.msg);	  
		        		  }
		        		  for(var i=0;i<data.length;i++)
		  				 {
		  					var value = data[i].cardid;
		  					var text = data[i].obuserid;
		  					selObj.append("<option value='"+value+"'>"+text+"</option>"); 
		  				 }
		        		  
		        			
		        		},
		        		error:function(){
		        			
		        		}    		
		        	});
		        	
		        }
		</script>
    </body>
</html>
