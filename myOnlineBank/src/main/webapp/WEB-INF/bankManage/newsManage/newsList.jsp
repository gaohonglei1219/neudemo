<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>暴走银行 | 首页</title>
<meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
<!-- bootstrap 3.0.2 -->
<link href="<%=request.getContextPath()%>/bankManage/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<!-- font Awesome -->
<link href="<%=request.getContextPath()%>/bankManage/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<!-- Ionicons -->
<link href="<%=request.getContextPath()%>/bankManage/css/ionicons.min.css" rel="stylesheet" type="text/css" />
<!-- Theme style -->
<link href="<%=request.getContextPath()%>/bankManage/css/AdminLTE.css" rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/bankManage/css/index.css" rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/bankManage/css/daterangepicker/daterangepicker-bs3.css" rel="stylesheet" type="text/css" />

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.<%=request.getContextPath()%>/bankManage/js/1.3.0/respond.min.js"></script>
        <![endif]-->
</head>
<body class="skin-black">
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
                        新闻列表
                        <small></small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> 首页</a></li>
						<li><a href="#"><i class="fa fa-camera"></i> 新闻管理</a></li>
                        <li class="active">新闻列表</li>
                    </ol>
     </section>
    <!-- /.content --> 
	
	            <!-- Main content -->
                <section class="content">
						
				
					<div class="row">
						<div class="col-lg-12">
							      
							<div class="box box-primary">
							
                                 <div class="box-header">
                                    <h3 class="box-title">搜索框</h3>
                                </div><!-- /.box-header -->
                        	<div class="modal-body">
						
						<!-- 新闻标题 -->
						<div class="row">
						<div class="col-lg-7">
						 <div class="form-group">
							 	 <div class="input-group">
                                           <span class="input-group-addon">新闻标题：&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;</span>
										<input id="search_Title" name="search_Title" type="text" class="form-control" placeholder="输入新闻标题搜索">
												</div><!-- input-group -->
											</div> <!--  form-group -->
									  </div> <!--  col -->
									</div> <!--  row -->
						   
						 <!-- 新闻图片 -->  
						 	<div class="row">
							<div class="col-lg-7">
						 	<div class="form-group">
							 	 <div class="input-group">
                                    <span class="input-group-addon">带图片搜索：&nbsp; &nbsp; &nbsp; &nbsp; </span>
									<input id="search_PicName" name="search_PicName" type="text" class="form-control" placeholder="输入图片名字搜索">
								</div><!-- input-group -->
							</div> <!--  form-group -->
							</div> <!--  col -->
							</div> <!--  row -->
						 
						 		
								<!-- 新闻发布时间 -->		
									   <div class="row">
										<div class="col-lg-7">
									  		<div class="form-group">
												 
                                           					<div class="bootstrap-timepicker">
																<div class="form-group">
																<div class="input-group">
																	<span class="input-group-addon">新闻发布时间范围：&nbsp;</span>
																<input type="text" name="search_date_time" readonly class="form-control " id="reservation"/>
																</div>
																</div>
															</div>
											
									  
											</div>
											</div>  <!-- col -->
									</div> <!--  row  -->
                           
							
												
                         
                         <div class="row">
						<div class="col-lg-7">
						 <div class="form-group">
							 	 <div class="input-group">
                         <button id="search" type="submit" style="padding-left: 30px; padding-right: 30px; margin-right:5px;" class="btn btn-primary pull-left"><i class="fa fa-check"></i> 查询</button>
								<button type="button" style="padding-left: 30px; padding-right: 30px;" class="btn btn-primary pull-left"><i class="fa fa-times"></i> 取消</button>
                        </div><!-- input-group -->
											</div> <!--  form-group -->
									  </div> <!--  col -->
									</div> <!--  row -->						    
						    
                        </div>
                        </div> 
                        
                        
							<div class="box box-primary">
                                <div class="box-header">
                                    <h3 class="box-title">新闻列表</h3>
                                    <a href="newsAdd" class="btn btn-success" style="color:#fff; padding-left: 30px; padding-right: 30px; margin-top:10px; margin-right:10px; float: right;" data-backdrop="static"><i class="fa fa-plus"></i> 新增</a>				
								
                                </div><!-- /.box-header -->
								
								
								
                                <div class="box-body table-responsive">
                                     <table id="table_news" class="table table-bordered table-hover">
                                       
                                      
                                    </table>
                                </div><!-- /.box-body -->
                            </div><!-- /.box -->		
						</div>  <!-- col -->
							
							  
						
					</div>  <!-- row -->

				<%@ include file="../common/foot.jsp"%> 				
                </section><!-- /.content -->
            </aside><!-- /.right-side -->
</div>


<!-- 修改后弹框 -->

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
     <!--  <button type="button" class="btn btn-primary">Save changes</button> -->  
      </div>
    </div>
  </div>
</div>

 <div class="modal fade" id="compose-modal2"  tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title"><i class="fa fa-pencil"></i> 删除</h4>
                    </div>
                    
                        <div class="modal-body">
						
							 <div class="row">
									<div class="col-lg-11">
	               <form id="delForm">
                        <div class="modal-body">
                            <div class="form-group">
                                
                                  <div class="input-group" style="width: 480px;">
                                  		<input name="newsid"  id="edit_newsid" type="text" style="display:none"></span>   
										 <h4>新闻：<span type="text" name ="edit_title" id="edit_title" style="width: 180px;" >   </span>	 </h4>									        										
										</div><!-- /.input group -->
                                  
                                   	<table class="table table-striped">
										
											<tbody>
											    <tr>											   
												<td style="width: 80px;">新闻作者</td><td > 
												 <span type="text"  name="edit_author" id="edit_author"   style="display:inline; " > </span>
												 </td>
											 											
												</tr>										
												
												<tr>
												<td>新闻图片</td> 
												<td  >
												 <span type="text" id="edit_pic" name="edit_pic"  style="display:inline; " ></span>							
												 
												 </td>
												</tr>
												<tr>
											   
												<td>创建时间</td><td > 
												 <span type="text" id="edit_time" name="edit_time"  style="display:inline;" > </span>
												 </td>
												
												</tr>
												
												<tr>
											   
												
												<td>新闻内容</td><td > 
												 <span type="text" id="edit_content" name="edit_content"   style=" display:inline;" > </span>
												</td>
												</tr>
												
  									　　　</tbody>
										</table>
                                         <div class="modal-footer clearfix">
                            <button  id="FormSubmitBtn" type="button" class="btn btn-primary pull-leftr" data-dismiss="modal"><i class="fa fa-check" ></i> 确定</button>
                            <button   type="button" class="btn btn-danger" data-dismiss="modal"><i class="fa fa-times"></i> 取消</button>
                            
                 <!-- 
 <button style="padding-left: 30px; padding-right: 30px;" class="btn btn-primary pull-left"  class="button" id="userFormSubmitBtn" >提交</button>
                   -->        
                                   
                                </div>
                            </div>
                           					
							
                          
                        </div>
                       
                    </form>
									</div>
								
							</div> <!-- row -->
                            
                        </div>
                       
              
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
 </div><!-- /.modal -->
<!--  /修改后弹框 -->
 
<!-- ./wrapper --> 

<!-- COMPOSE MESSAGE MODAL -->

<!-- /.modal --> 


					
	

		
		<!-- jQuery 2.0.2 --> 

				<script src="<%=request.getContextPath()%>/bankManage/js/jquery.min.js"></script>
       
                <script src="<%=request.getContextPath()%>/bankManage/js/jquery-ui-1.10.3.min.js" type="text/javascript"></script>
				
				<!-- Bootstrap -->
				<script src="<%=request.getContextPath()%>/bankManage/js/bootstrap.min.js" type="text/javascript"></script>
				
				<!-- InputMask -->
				<script src="<%=request.getContextPath()%>/bankManage/js/plugins/input-mask/jquery.inputmask.js"
					type="text/javascript"></script>
				<script
					src="<%=request.getContextPath()%>/bankManage/js/plugins/input-mask/jquery.inputmask.date.extensions.js"
					type="text/javascript"></script>
				<script
					src="<%=request.getContextPath()%>/bankManage/js/plugins/input-mask/jquery.inputmask.extensions.js"
					type="text/javascript"></script>
				<!-- date-range-picker -->
				<script src="<%=request.getContextPath()%>/bankManage/js/plugins/daterangepicker/daterangepicker.js"
					type="text/javascript"></script>
				<!-- bootstrap color picker -->
				<script src="<%=request.getContextPath()%>/bankManage/js/plugins/colorpicker/bootstrap-colorpicker.min.js"
					type="text/javascript"></script>
				<!-- bootstrap time picker -->
				<script src="<%=request.getContextPath()%>/bankManage/js/plugins/timepicker/bootstrap-timepicker.min.js"
					type="text/javascript"></script>
				<!-- AdminLTE App -->
				<script src="<%=request.getContextPath()%>/bankManage/js/AdminLTE/app.js" type="text/javascript"></script>
				<!-- AdminLTE for demo purposes -->
				<script src="<%=request.getContextPath()%>/bankManage/js/AdminLTE/demo.js" type="text/javascript"></script>
				<script src="<%=request.getContextPath()%>/bankManage/js/plugins/datatables/jquery.dataTables.js"
					type="text/javascript"></script>
				<script src="<%=request.getContextPath()%>/bankManage/js/plugins/datatables/dataTables.bootstrap.js"
					type="text/javascript"></script>
					
	
<script type="text/javascript">
 var table;
	$(function() {		
		$("#nav_news").addClass("active");
		$("#nav_news").trigger("click");
        $("#nav_news_list").addClass("active");
		$("#FormSubmitBtn").click(delUserForm);
	});
	
	 function test()
    {
        $('#myModal').modal('hide');
    }    

	function delUserForm() {
	
		if (true) {
			
			
			$.ajax({
				type : "post",
				url : "../delNews.do",
				dataType : "json",
				data : $('#delForm').serialize(),
				error : function() {
				   
					$.messager.progress('close');
					$.messager.show({
						title : '提示',
						msg : '操作失败',
						timeout : 6000,
						showType : 'slide'
					});

				},
				success : function(json) {
					console.info(json.model.result.message);
					document.getElementById("mySpan").innerHTML = json.model.result.returnContent;
					document.getElementById("myModalLabel").innerHTML = json.model.result.message;
					
					$('#myModal').modal('show');
					setTimeout("test()",2000);	
					console.log(table);
		            table.fnDraw();//重新加载
		            				
				},
				
			});
		}
	}



function delbuttion(Integer){
console.info(Integer);
$.ajax(
{

url : '../list_news_del.do?id='+Integer+'',
type : 'POST',
cache : false,
closable : false,
dataType : 'json',		
success : function(r) {	
var date = new Date(r.releasetime);
var time = date.format("yyyy-MM-dd hh:mm:ss");
$('#edit_newsid').val(r.newsid);
//document.getElementById("edit_newsid").innerHTML = r.newsid;
document.getElementById("edit_title").innerHTML = r.title;
document.getElementById("edit_author").innerHTML = r.author;
document.getElementById("edit_content").innerHTML = r.content;
document.getElementById("edit_pic").innerHTML = '<img  width="200px"; height="120px"; src="../../'+r.pic+'" />';
document.getElementById("edit_time").innerHTML = time;

 }
}//ajax
);} 
	
$(function () {
    
	$("#search").click(function(){
		console.info("hao");
		table.fnDraw();//重新加载
	});
	
	
	//  console.info(document.getElementById('edit_modal').value);	 
	//  console.info($("#edit_modal"));
    table = $('#table_news').DataTable({
    	
         "bServerSide": true,
         "sAjaxSource": "../getNewsList.do",
         "sServerMethod": "POST",
         "bFilter": false,  //是否使用内置的过滤功能
         "bProcessing": true, //当datatable获取数据时候是否显示正在处理提示信息。
         "bLengthChange": true, //是否允许自定义每页显示条数.
         "iDisplayLength":10, //每页显示10条记录
         "aoColumns": [
				{ "sTitle":"编号","sClass": "center", "mDataProp": "newsid" ,"bSearchable": false,"bSortable": false,"bVisible": false },
				{ "sTitle": "新闻标题","sClass": "center", "mDataProp": "title","bSearchable": false,"bSortable": false },
				{ "sTitle": "作者","sClass": "center", "mDataProp": "author","bSearchable": false,"bSortable": false},
				{ "sTitle": "图片","sClass": "center", "mDataProp": "pic","bSearchable": false,"bSortable": false,},//"fnRender": function(obj){return '<img  width="150px"; height="90px"; src="../'+obj.aData.pic+'" />'}},
				{ "sTitle": "发布时间","sClass": "center", "mDataProp": "releasetime","bSearchable": false,"bSortable": false,"fnRender": function(obj) {
									var date = new Date(obj.aData.releasetime);
									var time = date.format("yyyy-MM-dd hh:mm:ss");
									return time;}
				},				
				{ //自定义列
					"sTitle":"操作",
					"sClass": "center",
					"mDataProp": "newsid",
					"bSearchable": false,
					"bSortable": false,
					"fnRender": function (obj) {
				//	console.info(obj.aData.financingid);
					//'<a class="ajaxify" href=\"/admin/Article/edit?Id=' + obj.aData.financingid + '\">编辑</a> '
					// + ' <a href=\"#\" onclick=\"DeleteArticle('+obj.aData[0]+')\">删除</a>';
					return '<a href="../newsAdd.do?id=' + obj.aData.newsid + '" class="btn btn-primary btn-sm" data-backdrop="static"> 编辑</a>&nbsp;&nbsp;'
					+ ' <button onclick="delbuttion('+obj.aData.newsid+')" class="btn btn-primary btn-sm" data-toggle="modal" data-backdrop="static"  data-target="#compose-modal2">删除</button>'
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
	aoData.push({"name":"search_Title","value":$("#search_Title").val()});
	aoData.push({"name":"search_PicName","value":$("#search_PicName").val()});
	aoData.push({"name":"search_date_time","value":$("#reservation").val()});
	}

    });
} );

	Date.prototype.format = function(format) {
		var o = {
			"M+" : this.getMonth() + 1, //month
			"d+" : this.getDate(), //day
			"h+" : this.getHours(), //hour
			"m+" : this.getMinutes(), //minute
			"s+" : this.getSeconds(), //second
			"q+" : Math.floor((this.getMonth() + 3) / 3), //quarter
			"S" : this.getMilliseconds()
		//millisecond
		};
		if (/(y+)/.test(format))
			format = format.replace(RegExp.$1, (this.getFullYear() + "")
					.substr(4 - RegExp.$1.length));
		for ( var k in o)
			if (new RegExp("(" + k + ")").test(format))
				format = format.replace(RegExp.$1, RegExp.$1.length == 1 ? o[k]
						: ("00" + o[k]).substr(("" + o[k]).length));
		return format;
	};
			
	$(function() {
		//Datemask dd/mm/yyyy
		$("#datemask").inputmask("dd/mm/yyyy", {
			"placeholder" : "dd/mm/yyyy"
		});
		//Datemask2 mm/dd/yyyy
		$("#datemask2").inputmask("mm/dd/yyyy", {
			"placeholder" : "mm/dd/yyyy"
		});
		//Money Euro
		$("[data-mask]").inputmask();

		//Date range picker
		$('#reservation').daterangepicker();
		//Date range picker with time picker
		$('#reservationtime').daterangepicker( {
			timePicker : true,
			timePickerIncrement : 30,
			format : 'MM/DD/YYYY h:mm A'
		});
		//Date range as a button
		$('#daterange-btn').daterangepicker(
				{
					ranges : {
						'Today' : [ moment(), moment() ],
						'Yesterday' : [ moment().subtract('days', 1),
								moment().subtract('days', 1) ],
						'Last 7 Days' : [ moment().subtract('days', 6),
								moment() ],
						'Last 30 Days' : [ moment().subtract('days', 29),
								moment() ],
						'This Month' : [ moment().startOf('month'),
								moment().endOf('month') ],
						'Last Month' : [
								moment().subtract('month', 1).startOf('month'),
								moment().subtract('month', 1).endOf('month') ]
					},
					startDate : moment().subtract('days', 29),
					endDate : moment()
				},
				function(start, end) {
					$('#reportrange span').html(
							start.format('MMMM D, YYYY') + ' - '
									+ end.format('MMMM D, YYYY'));
				});

		//iCheck for checkbox and radio inputs
		$('input[type="checkbox"].minimal, input[type="radio"].minimal')
				.iCheck( {
					checkboxClass : 'icheckbox_minimal',
					radioClass : 'iradio_minimal'
				});
		//Red color scheme for iCheck
		$('input[type="checkbox"].minimal-red, input[type="radio"].minimal-red')
				.iCheck( {
					checkboxClass : 'icheckbox_minimal-red',
					radioClass : 'iradio_minimal-red'
				});
		//Flat red color scheme for iCheck
		$('input[type="checkbox"].flat-red, input[type="radio"].flat-red')
				.iCheck( {
					checkboxClass : 'icheckbox_flat-red',
					radioClass : 'iradio_flat-red'
				});

		//Colorpicker
		$(".my-colorpicker1").colorpicker();
		//color picker with addon
		$(".my-colorpicker2").colorpicker();

		//Timepicker
		$(".timepicker").timepicker( {
			showInputs : false
		});
	});
	$(function() {
		$("#example1").dataTable();
		$('#example2').dataTable( {
			"bPaginate" : true,
			"bLengthChange" : false,
			"bFilter" : false,
			"bSort" : true,
			"bInfo" : true,
			"bAutoWidth" : false
		});
	});
	
	 $(function () { $('.popover-show').popover('show');});
      $(function () { $('.popover-hide').popover('hide');});
      $(function () { $('.popover-destroy').popover('destroy');});
      $(function () { $('.popover-toggle').popover('toggle');});
     $(function () { $(".popover-options a").popover({html : true });});
     
function show(){
document.getElementById("div").style.display="";
//alert(document.getElementById("div").style.display)
}
function show1(){
//alert(document.getElementById("div1").style.display);
document.getElementById("div1").style.display="";

}
function hiddenk(){
document.getElementById("div1").style.display="none";
}
function hiddenc(){
document.getElementById("div2").style.display="none";
}
function hiddencc(){
document.getElementById("div3").style.display="none";
}
function hiddenl(){
document.getElementById("div4").style.display="none";
}
function showcalculator(){
document.getElementById("div2").style.display="";
}
function showc(){
document.getElementById("div3").style.display="";
}
function showl(){
document.getElementById("div4").style.display="";
}
</script>
</body>
</html>
