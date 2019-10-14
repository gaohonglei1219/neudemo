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
                        理财产品列表
                        <small></small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> 首页</a></li>
						<li><a href="#"><i class="fa fa-dollar"></i> 理财产品管理</a></li>
                        <li class="active">理财产品列表</li>
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
						
						 <div class="form-group">
							 	 <div class="input-group">
                                           <span class="input-group-addon">产品名称：&nbsp;&nbsp;</span>
										<input id="search_name" name="search_name" type="text" style="width: 480px;" class="form-control" placeholder="名称">
									</div>
                           </div>
						   
						    <div class="form-group">
                                <div class="input-group">
                                    <span class="input-group-addon">产品类型：&nbsp;&nbsp;</span>
															
																<select id="search_type" class="form-control" style="width: 480px;" name="search_type">
																    <option value="全部">全部</option>
                                                					<option value="股票">股票</option>
                                                					<option value="期货">期货</option>
                                                					<option value="基金">基金</option>
                                                					<option value="债卷">债卷</option>
                                                					<option value="信托">信托</option>
                                            					</select>
                                           						 
                                </div>
                            </div>
							
							<div class="form-group">
                                <div class="input-group">
                                    <span class="input-group-addon">风险等级：&nbsp;&nbsp;</span>
															
																<select id="search_risk" class="form-control" style="width: 480px;" name="search_risk">
																    <option value="0">全部</option>
                                                					<option value="1">等级 1</option>
                                                					<option value="2">等级 2</option>
                                                					<option value="3">等级 3</option>
                                                					<option value="4">等级 4</option>
                                                					<option value="5">等级 5</option>
                                            					</select>
                                           						 
                                </div>
                            </div>
										
									<div class="bootstrap-timepicker">
										<div class="form-group">
                                          
										<div class="input-group" style="width: 480px;">
											<span class="input-group-addon">周期：&nbsp; &nbsp; &nbsp;&nbsp;</span> <input type="text" id="search_fdate" class="form-control" style="width: 480px;display:inline; margin-right:10px;" placeholder="天数之内">           
											
										</div><!-- /.input group -->
										</div><!-- /.form group -->
									</div>
							
							
                           
							
                            <div class="form-group">
                                <div class="input-group">
                                    <span class="input-group-addon">预期收益率：</span>
                                    <input id="search_expect" name="search_expect" type="text" style="width: 480px;" class="form-control" placeholder="大于百分几" >
                                </div>
                            </div>
                           
                         	<div class="form-group">
                                <div class="input-group">
								<button type="submit" id= "search" value="dd" style="padding-left: 30px; padding-right: 30px; margin-right: 5px;" class="btn btn-primary pull-left"><i class="fa fa-check"></i> 查询</button>
								<button type="button"  onclick ="fun()" style="padding-left: 30px; padding-right: 30px;" class="btn btn-primary pull-left" data-dismiss="modal"><i class="fa fa-times"></i> 取消</button>
							  </div>
                            </div>
                            
                        </div>
                         
           
			             
                            <div class="box box-primary">
                                <div class="box-header">
                                    <h3 class="box-title">理财产品列表</h3>
                                    <a href="/OnlineBank/bankManage/mmProductManage/addProductManager.jsp" class="btn btn-success" style="color:#fff; padding-left: 30px; padding-right: 30px; margin-top:10px; margin-right:10px; float: right;"  data-backdrop="static"  ><i class="fa fa-plus"></i> 新增</a>
                                </div><!-- /.box-header -->
								
							
                                <div class="box-body table-responsive">
                                    <table id="table_id" class="table table-bordered table-hover">
                                       
                                      
                                    </table>
                                </div><!-- /.box-body -->
                            </div><!-- /.box -->				
							</div> 
								
						</div>  <!-- col -->
							
							  
						
					</div>  <!-- row -->
	<%@ include file="../common/foot.jsp"%> 
									
									
									
									
									
                </section><!-- /.content -->
            </aside><!-- /.right-side -->
         <!-- 修改成功后弹框 -->   
</div>
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
<div class="modal fade" id="compose-modal1"  tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title"><i class="fa fa-pencil"></i> 修改</h4>
                    </div>
                    
                        <div class="modal-body">
						
							 <div class="row">
									<div class="col-lg-11">
	               <form id="userForm">
                        <div class="modal-body">
                            <div class="form-group">
                                  <span class="input-group-addon" style="border: 1px solid #ccc;"> 
                                  <div class="input-group" style="width: 480px;">
										 <input type="text" name ="edit_name" id="edit_name" class="form-control" style="width: 180px;display:inline; margin-right:10px;" >   
										 <input name="edit_id" id="edit_id" type="text"  placeholder="不超过30字" style="display:none" >	         										
										</div><!-- /.input group -->
                                  
                                  </span></br>
                                
                                    
                                   	<table class="table table-striped">
										
											<tbody>
											    <tr>											   
												<td  style="padding-top:15px;">产品类型</td><td > 
												 <input type="text"  name="edit_type" id="edit_type" class="form-control" style="width: 180px; display:inline; margin-right:10px; " > 
												 </td>
											 											
												</tr>
												
												<tr>
											   
												
												<td  style="padding-top:15px;">产品周期</td><td > 
												 <input type="text" id="edit_daynum" name="edit_daynum"  class="form-control" style="width: 180px; display:inline; margin-right:10px; " > 
												 </td>
												</tr>
												<tr>
												<td  style="padding-top:15px;">时间段</td> 
												<td  >
												 <input type="text" id="edit_begindate" name="edit_begindate" class="form-control" style="width: 100px; display:inline; margin-right:10px; " >~							
												 <input type="text" id="edit_enddate" name="edit_enddate" class="form-control" style="width: 100px; display:inline; margin-right:10px; " > 
												 </td>
												</tr>
												<tr>
											   
												<td  style="padding-top:15px;">风险等级</td><td > 
												 <input type="text" id="edit_risk" name="edit_risk" class="form-control" style="width: 80px; display:inline; margin-right:10px; " > 
												 </td>
												
												</tr>
												<tr>
											   
												<td  style="padding-top:15px;">最低购买额</td><td > 
												 <input type="text" id="edit_minbuy" name="edit_minbuy" class="form-control" style="width: 80px; display:inline; margin-right:10px; " > 
												 </td>
												 </tr>
												 <tr>
												<td  style="padding-top:15px;">估计回报</td><td > 
												 <input type="text" id="edit_expect" name="edit_expect" class="form-control" style="width: 80px; display:inline; margin-right:10px; " > 
												 </td>
												</tr>
											    
											   
											    
  									　　　</tbody>
										</table>
                                         <div class="modal-footer clearfix">
                            <button  id="userFormSubmitBtn" type="button" class="btn btn-primary pull-leftr" data-dismiss="modal"><i class="fa fa-check" ></i> 提交</button>
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
										  
										  <input name="edit_id2" id="edit_id2" type="text"  placeholder="不超过30字" style="display:none">	          										
										</div><!-- /.input group -->
                                  
                                  </span></br>
                                
                                    
                                   	<table class="table table-striped">
										
											<tbody>
											    <tr>											   
												<td  style="padding-top:15px;">产品类型</td><td > 
												 <span type="text"  name="edit_type" id="edit_type1"  style="width: 180px; display:inline; margin-right:10px; " > </span>
												 </td>
											 											
												</tr>
												
												<tr>
											   
												
												<td  style="padding-top:15px;">产品周期</td><td > 
												 <span type="text" id="edit_daynum1" name="edit_daynum1"   style="width: 180px; display:inline; margin-right:10px; " > </span>
												 </td>
												</tr>
												<tr>
												<td  style="padding-top:15px;">时间段</td> 
												<td  >
												 <span type="text" id="edit_begindate1" name="edit_begindate"  style="width: 100px; display:inline; margin-right:10px; " ></span>~							
												 <span type="text" id="edit_enddate1" name="edit_enddate"  style="width: 100px; display:inline; margin-right:10px; " > </span>
												 </td>
												</tr>
												<tr>
											   
												<td  style="padding-top:15px;">风险等级</td><td > 
												 <span type="text" id="edit_risk1" name="edit_risk"  style="width: 80px; display:inline; margin-right:10px; " > </span>
												 </td>
												
												</tr>
												<tr>
											   
												<td  style="padding-top:15px;">最低购买额</td><td > 
												 <span type="text" id="edit_minbuy1" name="edit_minbuy"  style="width: 80px; display:inline; margin-right:10px; " > </span>
												 </td>
												 </tr>
												 <tr>
												<td  style="padding-top:15px;">估计回报</td><td > 
												 <span type="text" id="edit_expect1" name="edit_expect" style="width: 80px; display:inline; margin-right:10px; " > </span>
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
//修改按钮
$(function() {
		
		$("#nav_mmProductManage").addClass("active");
		$("#nav_mmProductManage").trigger("click");
        $("#nav_mmProductManage_list").addClass("active");
});
$(function() {	
		$('#userFormSubmitBtn').click(submitUserForm);
});
//删除按钮
$(function() {	
		$('#FormSubmitBtn').click(delUserForm);
});
function test()
    {
        $('#myModal').modal('hide');
    }    
function submitUserForm() {
	
		if (true) {
			
			
			$.ajax({
				type : "post",
				url : "../edit_productjson.do",
				dataType : "json",
				data : $('#userForm').serialize(),
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
	function delUserForm() {
	
		if (true) {
			
			
			$.ajax({
				type : "post",
				url : "../del_productjson.do",
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

function editbuttion(Integer){
console.info(Integer);
$.ajax(
{

url : '../list_product_edit.do?id='+Integer+'',
type : 'POST',

cache : false,
closable : false,
dataType : 'json',		
success : function(r) {	
//document.getElementById("x1").innerHTML = r.financingtype;
//document.getElementById("x2").innerHTML = r.financingtype;
//document.getElementById("x2").innerHTML = r.financingtype;
console.info(r.begindate);
$('#edit_type').val(r.financingtype);
$('#edit_name').val(r.financingname);
$('#edit_begindate').val(r.begindate);
$('#edit_enddate').val(r.enddate);
$('#edit_daynum').val(r.daynum);
$('#edit_expect').val(r.expect);
$('#edit_minbuy').val(r.minbuy);
$('#edit_risk').val(r.risk);
$('#edit_id').val(r.financingid);
}
}//ajax
);}

function delbuttion(Integer){
console.info(Integer);
$.ajax(
{

url : '../list_product_edit.do?id='+Integer+'',
type : 'POST',
cache : false,
closable : false,
dataType : 'json',		
success : function(r) {	
$('#edit_id2').val(r.financingid);
document.getElementById("edit_name1").innerHTML = r.financingname;
document.getElementById("edit_type1").innerHTML = r.financingtype;
document.getElementById("edit_begindate1").innerHTML = r.begindate;
document.getElementById("edit_daynum1").innerHTML = r.daynum;
document.getElementById("edit_expect1").innerHTML = r.expect;
document.getElementById("edit_minbuy1").innerHTML = r.minbuy;
document.getElementById("edit_risk1").innerHTML = r.risk;
document.getElementById("edit_enddate1").innerHTML = r.enddate;
document.getElementById("edit_id1").innerHTML = r.financingid;


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
    table = $('#table_id').DataTable({
    	
         "bServerSide": true,
         "sAjaxSource": "../list_product.do",
         "sServerMethod": "POST",
         "bFilter": false,  //是否使用内置的过滤功能
         "bProcessing": true, //当datatable获取数据时候是否显示正在处理提示信息。
         "bLengthChange": true, //是否允许自定义每页显示条数.
         "iDisplayLength":10, //每页显示10条记录
         "aoColumns": [
				{ "sTitle":"编号","sClass": "center", "mDataProp": "financingname" ,"bSearchable": false,"bSortable": false,"bVisible": false },
				{ "sTitle": "金融名称","sClass": "center", "mDataProp": "financingname","bSearchable": false,"bSortable": false },
				{ "sTitle": "金融类型","sClass": "center", "mDataProp": "financingtype","bSearchable": false,"bSortable": false},
				{ "sTitle": "周期","sClass": "center", "mDataProp": "daynum","bSearchable": false,"bSortable": false},
				{ "sTitle": "风险","sClass": "center", "mDataProp": "risk","bSearchable": false,"bSortable": false},
				{ "sTitle": "预测回报","sClass": "center", "mDataProp": "expect","bSearchable": false,"bSortable": false},
				{ //自定义列
					"sTitle":"操作",
					"sClass": "center",
					"mDataProp": "financingid",
					"bSearchable": false,
					"bSortable": false,
					"fnRender": function (obj) {
				//	console.info(obj.aData.financingid);
					//'<a class="ajaxify" href=\"/admin/Article/edit?Id=' + obj.aData.financingid + '\">编辑</a> '
					// + ' <a href=\"#\" onclick=\"DeleteArticle('+obj.aData[0]+')\">删除</a>';
					return '<button onclick="editbuttion('+obj.aData.financingid+')" class="btn btn-primary btn-sm" data-toggle="modal" data-backdrop="static"  data-target="#compose-modal1" >编辑</button>&nbsp;&nbsp;'
					+ ' <button onclick="delbuttion('+obj.aData.financingid+')" class="btn btn-primary btn-sm" data-toggle="modal" data-backdrop="static"  data-target="#compose-modal2">删除</button>'
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
	aoData.push({"name":"search_name","value":$("#search_name").val()});
	aoData.push({"name":"search_type","value":$("#search_type").val()});
	aoData.push({"name":"search_risk","value":$("#search_risk").val()});
	aoData.push({"name":"search_expect","value":$("#search_expect").val()});
	aoData.push({"name":"search_fdate","value":$("#search_fdate").val()});	
	}

    });
} );





/*XXXXXXXXXXXXXXXXX  */
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
