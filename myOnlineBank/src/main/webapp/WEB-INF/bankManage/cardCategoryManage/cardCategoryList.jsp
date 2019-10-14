<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
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

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
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
                        卡类列表
                        <small></small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> 首页</a></li>
						<li><a href="#"><i class="fa fa-qrcode"></i> 卡类管理</a></li>
                        <li class="active">卡类列表</li>
                    </ol>
     </section>
    <!-- /.content --> 
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
	            <!-- Main content -->
                <section class="content">
						
				
					<div class="row">
						<div class="col-lg-12">
							      
							<div class="box box-solid">
							
                                <div class="box-header">
                                    <h3 class="box-title">搜索框</h3>
                                </div><!-- /.box-header -->
                        	<div class="modal-body">
						
						 
						   
						    <div class="form-group">
                                <div class="input-group">
                                    <span class="input-group-addon">卡类型：</span>
															
																<select  id ="cardtype" class="form-control" style="width: 480px;" >
																    <option value="2">全部</option>
                                                					<option value="1">信用卡</option>
                                                					<option value="0">储蓄卡</option>
                                                					
                                            					</select>
                                           						 
                                </div>
                            </div>
							
							<div class="form-group">
							 	 <div class="input-group">
                                           <span class="input-group-addon">卡名称：</span>
										<input  id="cardname" type="text" style="width: 480px;" class="form-control" placeholder="name">
									</div>
                           </div>
							
                           
                         
                        </div>
                        <div class="modal-footer clearfix">
								<button type="submit" id= "search" value="dd" style="padding-left: 30px; padding-right: 30px;" class="btn btn-primary pull-left"><i class="fa fa-check"></i> 查询</button>
								<button type="button"  onclick ="fun()" style="padding-left: 30px; padding-right: 30px;" class="btn btn-primary pull-left" data-dismiss="modal"><i class="fa fa-times"></i> 取消</button>
							</div>
           
			             
                            <div class="box">
                                <div class="box-header">
                                    <h3 class="box-title">卡类列表</h3>
                                </div><!-- /.box-header -->
								
								
								<div class="box-footer clearfix">
									
									 &nbsp; <a href="#" class="btn btn-primary" style="padding-left: 30px; padding-right: 30px;" data-toggle="modal" data-backdrop="static"  data-target="#compose-modal"><i class="fa fa-plus"></i> 新增</a>
								  <a href="#" class="btn btn-primary" style="padding-left: 30px; padding-right: 30px;"><i class="fa fa-pencil"></i> 编辑</a>
								   <a href="#" class="btn btn-primary" style="padding-left: 30px; padding-right: 30px;"><i class="fa fa-minus"></i> 删除</a>
								     <a href="#" class="btn btn-primary" style="padding-left: 30px; padding-right: 30px;"><i class="fa fa-mail-reply"></i> 取消查询</a>
									 
									 
								</div><!-- /.box-footer -->
                                <div class="box-body table-responsive">
                                    <table id="table_id" class="table table-bordered table-hover">
                                       
                                    </table>
                                </div><!-- /.box-body -->
                            </div><!-- /.box -->				
							</div> 
								
						</div>  <!-- col -->
							
							  
						
					</div>  <!-- row -->
					
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
                                  <span class="input-group-addon" style="border: 1px solid #ccc;"> 
                                  <div class="input-group" style="width: 480px;">
										 <span type="text" name ="edit_name1" id="edit_name1" style="width: 180px; margin-right:10px;" >   </span>
										  
										  <input name="cardtypeid" id="cardtypeid" type="text"  placeholder="不超过30字" style="display:none">	          										
										</div><!-- /.input group -->
                                  
                                  </span></br>
                                
                                    
                                   	<table class="table table-striped">
										
											<tbody>
											    <tr>											   
												<td  style="padding-top:15px;">类型</td><td > 
												 <span type="text"  name="edit_type1" id="edit_type1"  style="width: 180px; display:inline; margin-right:10px; " > </span>
												 </td>											 											
												</tr>												
												<tr>											 
												<td  style="padding-top:15px;">创建时间</td><td > 
												 <span type="text" id="edit_begindate1" name="edit_begindate1"   style="width: 180px; display:inline; margin-right:10px; " > </span>
												 </td>
												</tr>
												
											  
											    
  									　　　</tbody>
										</table>
                                         <div class="modal-footer clearfix">
                            <button  id="FormSubmitBtn" type="button" class="btn btn-primary pull-leftr" data-dismiss="modal"><i class="fa fa-check" ></i> 提交</button>
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

					<%@ include file="../common/foot.jsp"%> 			
								
								
								
								
                </section><!-- /.content -->
            </aside><!-- /.right-side -->
</div>
<!-- ./wrapper --> 

<!-- COMPOSE MESSAGE MODAL -->

<!-- /.modal --> 


					
	

		
		<!-- jQuery 2.0.2 --> 

				<script src="../js/jquery.min.js"></script>
       
                <script src="../js/jquery-ui-1.10.3.min.js" type="text/javascript"></script>
				
				<!-- Bootstrap -->
				<script src="../js/bootstrap.min.js" type="text/javascript"></script>
				
				<!-- InputMask -->
				<script src="../js/plugins/input-mask/jquery.inputmask.js"
					type="text/javascript"></script>
				<script
					src="../js/plugins/input-mask/jquery.inputmask.date.extensions.js"
					type="text/javascript"></script>
				<script
					src="../js/plugins/input-mask/jquery.inputmask.extensions.js"
					type="text/javascript"></script>
				<!-- date-range-picker -->
				<script src="../js/plugins/daterangepicker/daterangepicker.js"
					type="text/javascript"></script>
				<!-- bootstrap color picker -->
				<script src="../js/plugins/colorpicker/bootstrap-colorpicker.min.js"
					type="text/javascript"></script>
				<!-- bootstrap time picker -->
				<script src="../js/plugins/timepicker/bootstrap-timepicker.min.js"
					type="text/javascript"></script>
				<!-- AdminLTE App -->
				<script src="../js/AdminLTE/app.js" type="text/javascript"></script>
				<!-- AdminLTE for demo purposes -->
				<script src="../js/AdminLTE/demo.js" type="text/javascript"></script>
				<script src="../js/plugins/datatables/jquery.dataTables.js"
					type="text/javascript"></script>
				<script src="../js/plugins/datatables/dataTables.bootstrap.js"
					type="text/javascript"></script>
					
	
<script type="text/javascript">
 $(function() {
			$("#nav_cardCategoryManage").addClass("active");
			$("#nav_cardCategoryManage").trigger("click");
			$("#nav_cardCategoryManage_list").addClass("active");			
		});
		
function test()
    {
        $('#myModal').modal('hide');
    }    
$(function() {	
		$('#FormSubmitBtn').click(delUserForm);
});

var table;
$(function () {
    
	$("#search").click(function(){
		
		table.fnDraw();//重新加载
	});
	//  console.info(document.getElementById('edit_modal').value);	 
	
    table = $('#table_id').DataTable({
    	
         "bServerSide": true,
         "sAjaxSource": "../list_card.do",
         "sServerMethod": "POST",
         "bFilter": false,  //是否使用内置的过滤功能
         "bProcessing": true, //当datatable获取数据时候是否显示正在处理提示信息。
         "bLengthChange": true, //是否允许自定义每页显示条数.
         "iDisplayLength":10, //每页显示10条记录
         "aoColumns": [
				{ "sTitle":"编号","sClass": "center", "mDataProp": "cardtypeid" ,"bSearchable": false,"bSortable": false,"bVisible": false },
				{ "sTitle": "名称","sClass": "center", "mDataProp": "cardname","bSearchable": false,"bSortable": false },
				
				{ //自定义列
					"sTitle":"类型",
					"sClass": "center",
					"mDataProp": "cardtype",
					"bSearchable": false,
					"bSortable": false,
					"fnRender": function (obj) {
				    if(obj.aData.cardtype==1)
					return '<span   data-toggle="modal" data-backdrop="static"  data-target="#compose-modal1" >信用卡</span>'
				    else
				    return '<span   data-toggle="modal" data-backdrop="static"  data-target="#compose-modal1" >储蓄卡</span>'
					}
				},
				
				{ "sTitle": "创建时间","sClass": "center", "mDataProp": "createdate","bSearchable": false,"bSortable": false},
				{ //自定义列
					"sTitle":"操作",
					"sClass": "center",
					"mDataProp": "cardtypeid",
					"bSearchable": false,
					"bSortable": false,
					"fnRender": function (obj) {
				//	console.info(obj.aData.financingid);
					//'<a class="ajaxify" href=\"/admin/Article/edit?Id=' + obj.aData.financingid + '\">编辑</a> '
					// + ' <a href=\"#\" onclick=\"DeleteArticle('+obj.aData[0]+')\">删除</a>';
					return '<button onclick="editbuttion('+obj.aData.cardtypeid+')" class="btn btn-primary btn-sm" data-toggle="modal" data-backdrop="static"  data-target="#compose-modal1" >编辑</button>&nbsp;&nbsp;'
					+ ' <button onclick="delbuttion('+obj.aData.cardtypeid+')" class="btn btn-primary btn-sm" data-toggle="modal" data-backdrop="static"  data-target="#compose-modal2">删除</button>'
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
	aoData.push({"name":"cardname","value":$("#cardname").val()});
	aoData.push({"name":"cardtype","value":$("#cardtype").val()});
	}

    });
} );


function delUserForm() {
	
		if (true) {
			
			
			$.ajax({
				type : "post",
				url : "../del_cardtype.do",
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
					document.getElementById("mySpan").innerHTML = json.model.result.content;
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

url : '../list_cardtype_edit.do?id='+Integer+'',
type : 'POST',
cache : false,
closable : false,
dataType : 'json',		
success : function(r) {	
$('#cardtypeid').val(r.cardtypeid);
document.getElementById("edit_name1").innerHTML = r.cardname;
if (r.cardtype==1)
{document.getElementById("edit_type1").innerHTML = "信用卡";}
else
document.getElementById("edit_type1").innerHTML = "储蓄卡";
document.getElementById("edit_begindate1").innerHTML = r.createdate;

 }
}//ajax
);}






















  //----------------------------------
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
