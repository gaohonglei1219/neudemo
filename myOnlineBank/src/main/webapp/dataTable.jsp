<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'dataTable.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<!-- DataTables CSS -->
<link rel="stylesheet" type="text/css" href="css/jquery.dataTables.css">
 
 <style>
 	.search
 	{
 		width:800px;
 		margin:0 auto;
 		padding：30px;
 	}
 
 </style>
  
<!-- jQuery -->
<script type="text/javascript" charset="utf8" src="js/jquery-1.10.2.min.js"></script>
  
<!-- DataTables -->
<script type="text/javascript" charset="utf8" src="js/jquery.dataTables.js"></script>
<script type="text/javascript">
$(function () {

	$("#test").click(function(){
		
		//table.fnDraw();//重新加载
		
		location.reload();
		
	});
	getProvince();//获取省份
	$("#province").change(function(){
		table.fnDraw();
		var pId = $(this).children('option:selected').val(); 
		getCity(pId);
	});
	$("#city").change(function(){
		
		table.fnDraw();
	});
	
   var table = $('#table_id').DataTable({
    	
         "bServerSide": true,
         'bStateSave': true,
         "sAjaxSource": "getNetwork.do",
         "sServerMethod": "POST",
         "sPaginationType" : "full_numbers",
         "bFilter": false,  //是否使用内置的过滤功能
         "bProcessing": true, //当datatable获取数据时候是否显示正在处理提示信息。
         "bLengthChange": true, //是否允许自定义每页显示条数.
         "iDisplayLength":5, //每页显示10条记录
         "aoColumns": [
				{ "sTitle":"编号","sClass": "center", "mDataProp": "networkid" ,"bSearchable": false,"bSortable": false,"bVisible": false },
				{ "sTitle": "网点名称","sClass": "center", "mDataProp": "networkname","bSearchable": false,"bSortable": false },
				{ "sTitle": "网点地址","sClass": "center", "mDataProp": "address","bSearchable": false,"bSortable": false},
				{ "sTitle": "联系电话","sClass": "center", "mDataProp": "phone","bSearchable": false,"bSortable": false},
				{ "sTitle": "周边环境","sClass": "center", "mDataProp": "around","bSearchable": false,"bSortable": false},
				{ //自定义列
					"sTitle":"操作",
					"sClass": "center",
					"mDataProp": "networkid",
					"bSearchable": false,
					"bSortable": false,
					"fnRender": function (obj) {
					return '<a class="ajaxify" href=\"/admin/Article/edit?Id=' + obj.aData.provinceid + '\">编辑</a> ' + ' <a href=\"#\" onclick=\"DeleteArticle('+obj.aData[0]+')\">删除</a>';
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
		aoData.push({"name" : "provinceId","value" : $("#province").children('option:selected').val(),});
		aoData.push({"name":"cityId","value":$("#city").children('option:selected').val()});
		aoData.push({"name":"name","value":$("#name").val()});
	}

    });
} );

function getProvince()
{
	 var selObj = $("#province");  
	$.ajax({
		type:"GET",
		url:"getProvince.do",
		dataType:"json",
		success:function(data){
			for(var i=0;i<data.length;i++)
				{
				    var value=data[i].provinceid;  
				    var text=data[i].provincename;  
				    selObj.append("<option value='"+value+"'>"+text+"</option>");  
				}
		},
		error:function(){}	
	});
}

function getCity(pId)
{
	 var selObj = $("#city"); 
	 selObj.find("option").remove(); 
	 selObj.append("<option value='0'>------请选择城市---------</option>"); 
	$.ajax({
		type:"POST",
		url:"getCity.do",
		data:{"pId":pId},
		dataType:"json",
		success:function(data){
			
			for(var i=0;i<data.length;i++)
				{
				    var value=data[i].cityid;  
				    var text=data[i].cityname;  
				    selObj.append("<option value='"+value+"'>"+text+"</option>");  
				}
		},
		
	});
}

</script>
  </head>
  
  <body>
  
  	<div class="search">
  		<select id="province">
  			<option value="0">------请选择省份---------</option>
  		</select>
  		<select id="city">
  			<option value="0">------请选择城市---------</option>
  		</select>
  		
  		<label>网点名称</</label>
  		<input id="name" type="text"/>
  		
  		<button id="test">查找</button>
  	</div>
  
    <table id="table_id" class="display">
	</table>
  </body>
</html>
