<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'deposit.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<style>
			.content{
				width:800px;
				margin:0 auto;
			}
			.form{
				border:1px solid black;
				padding:20px;
				margin-top:20px;
			}
			input{
				width:200px;
			}
		</style>
  </head>
  
  <body>
 	<div class="content">
 		<div class="form">
 			<h3>利率详情</h3>
 			<table>
 				<tr>
 					<td>币种：</td>
 					<td>
 						<select id="currencyList">
 							<option>--请选择--</option>
 						</select>
 					</td>
 				</tr>
 				<tr>
 					<td>储蓄方式</td>
 					<td>
 						<select id="depositList">
 							<option>--请选择--</option>
 						</select>
 					</td>
 				</tr>
 				<tr>
 					<td>储蓄时限</td>
 					<td>
 						<select id="dateList">
 							<option>--请选择--</option>
 						</select>
 					</td>
 				</tr>
 				
 				<tr>
 					<td>利率</td>
 					<td><input type="text" disabled="true" value="" /></td>
 				</tr>
 			
 			</table>
 		
 		</div>
 	
 		<div class="form">
 			<h3>整存整取</h3>
 				<form id="zczq" method="POST" action="addZCZQ.do">
 					<input type="hidden" name="obDepositCurrencyType.cdtpyeid" />
		 			<table>
		 				<tr>
		 					<td>卡号：</td>
		 					<td><input type="text"  name="obCard.obuserid" value="1000001410141923329409" /></td>
		 				</tr>
		 				<tr>
		 					<td>存款金额：</td>
		 					<td><input type="text" name="money" /></td>
		 				</tr>
		 				<tr>
		 					<td><button id="b_zczq">提交</button></td>
		 				</tr>
		 			</table>
		 		</form>
 		
 		</div>
 		
 		<div class="form">
 			<h3>存本取息</h3>
 				<form id="cbqx" method="POST" action="addZCZQ.do">
 					<input type="hidden" name="obDepositCurrencyType.cdtpyeid" />
		 			<table>
		 				<tr>
		 					<td>卡号：</td>
		 					<td><input type="text"  name="obCard.obuserid" value="1000001410141923329409" /></td>
		 				</tr>
		 				<tr>
		 					<td>存款金额：</td>
		 					<td><input type="text" name="money" /></td>
		 				</tr>
		 				<tr>
		 					<td><button id="b_cbqx">提交</button></td>
		 				</tr>
		 			</table>
		 		</form>
 		
 		</div>
 		
 		<div class="form">
 			<h3>通知存款</h3>
 				<form id="day" method="POST" action="addDay.do">
 					<input type="hidden" name="obDepositCurrencyType.cdtpyeid" />
		 			<table>
		 				<tr>
		 					<td>卡号：</td>
		 					<td><input type="text"  name="obCard.obuserid" value="1000001410141923329409" /></td>
		 				</tr>
		 				<tr>
		 					<td>存款金额：</td>
		 					<td><input type="text" name="money" /></td>
		 				</tr>
		 				<tr>
		 					<td><button id="b_day">提交</button></td>
		 				</tr>
		 			</table>
		 		</form>
 		
 		</div>
 		
 		<div class="form">
 			<h3>零存整取</h3>
 				<form id="lczq" method="POST" action="addLczq.do">
 					<input type="hidden" name="obDepositCurrencyType.cdtpyeid" />
		 			<table>
		 				<tr>
		 					<td>卡号：</td>
		 					<td><input type="text"  name="obCard.obuserid" value="1000001410141923329409" /></td>
		 				</tr>
		 				<tr>
		 					<td>每月存入：</td>
		 					<td><input type="text" name="everyMonth" /></td>
		 				</tr>
		 				<tr>
		 					<td><button id="b_lczq">提交</button></td>
		 				</tr>
		 			</table>
		 		</form>
 		
 		</div>
 		
 		
 		<div class="form">
 			<h3>整存零取</h3>
 				<form id="zclq" method="POST" action="addZCLQ.do">
 					<input type="hidden" name="obDepositCurrencyType.cdtpyeid" />
		 			<table>
		 				<tr>
		 					<td>卡号：</td>
		 					<td><input type="text"  name="obCard.obuserid" value="1000001410141923329409" /></td>
		 				</tr>
		 				<tr>
		 					<td>每月存入：</td>
		 					<td><input type="text" name="everyMonth" /></td>
		 				</tr>
		 				<tr>
		 					<td><button id="b_zclq">提交</button></td>
		 				</tr>
		 			</table>
		 		</form>
 		
 		</div>
 		
 		
 		<div class="form">
 			<h3>活期存款</h3>
 				<form id="account" method="POST" action="addAccount.do">
 					<input type="hidden" name="obDepositCurrencyType.cdtpyeid" />
		 			<table>
		 				<tr>
		 					<td>卡号：</td>
		 					<td><input type="text"  name="obCard.obuserid" value="1000001410141923329409" /></td>
		 				</tr>
		 				<tr>
		 					<td>存入金额：</td>
		 					<td><input type="text" name="remain" /></td>
		 				</tr>
		 				<tr>
		 					<td><button id="b_account">提交</button></td>
		 				</tr>
		 			</table>
		 		</form>
 		
 		</div>
 	
 	</div>
   
  </body>
   <script type="text/javascript" charset="utf8" src="js/jquery-1.10.2.min.js"></script>
   <script type="text/javascript">
   $(function(){
	   
	      getCurrencyList(); 
	   $("#currencyList").change(function(){
		   var currency = $("#currencyList option:selected").val();
		   getParentDepositCurrencyTypeByCurrencyId(currency);
	   });
	   
	   $("#depositList").change(function(){
		   
		   var pid = $("#depositList option:selected").val();
		   if(pid==326)//活期存款
			{
			   $(".form input[name='obDepositCurrencyType.cdtpyeid']").val($("#depositList option:selected").val());
			   $(".form input[disabled='true']").val($("#depositList option:selected").attr("rate"));
			}
		   else
			{
		      getDepositCurrencyTypeByParentId(pid);
			}
	   });
	   
	   $("#dateList").change(function(){   
		   var rate = $("#dateList option:selected").attr("rate");
		   $(".form input[disabled='true']").val(rate);
		   $(".form input[name='obDepositCurrencyType.cdtpyeid']").val($("#dateList option:selected").val());
		   
	   });
	   
	   $("#b_zczq").click(function(){
		   
		   $.ajax({
			   
			   url:"addZCZQ.do",
			   type:"POST",
			   dataType:"JSON",
			   data:$("#zczq").serialize(),
			   success:function(data){
				   alert(data);
			   },
			   error:function(){}   
		   });
	
		  return false;
	   });
	   
	  $("#b_cbqx").click(function(){
			   
			   $.ajax({
				   
				   url:"addCBQX.do",
				   type:"POST",
				   dataType:"JSON",
				   data:$("#cbqx").serialize(),
				   success:function(data){
					   alert(data);
				   },
				   error:function(){}   
			   });
		
			  return false;
		   });
		 
	  $("#b_day").click(function(){
		   
		   $.ajax({
			   
			   url:"addDay.do",
			   type:"POST",
			   dataType:"JSON",
			   data:$("#day").serialize(),
			   success:function(data){
				   alert(data);
			   },
			   error:function(){}   
		   });
	
		  return false;
	   });
	  
	  $("#b_lczq").click(function(){
		  
		  $.ajax({
			   
			   url:"addLCZQ.do",
			   type:"POST",
			   dataType:"JSON",
			   data:$("#lczq").serialize(),
			   success:function(data){
				   alert(data);
			   },
			   error:function(){}   
		   });
		 
		  
		  return false;
	  });
	  
 $("#b_zclq").click(function(){
		  
		  $.ajax({
			   
			   url:"addZCLQ.do",
			   type:"POST",
			   dataType:"JSON",
			   data:$("#zclq").serialize(),
			   success:function(data){
				   alert(data);
			   },
			   error:function(){}   
		   });
		 
		  
		  return false;
	  });
 
 	$("#b_account").click(function(){
 		
 		 $.ajax({
			   
			   url:"addAccount.do",
			   type:"POST",
			   dataType:"JSON",
			   data:$("#account").serialize(),
			   success:function(data){
				   alert(data);
			   },
			   error:function(){}   
		   });
		 
 		
 		return false;
 		
 	});
	   
   })
   
   function getCurrencyList()
	{
		$.ajax({
			type:"POST",
			url:"getCurrencyList.do",
			dataType:"json",
			success:function(data){
				
				for(var i=0;i<data.length;i++)
				{
			
					var value = data[i].currencyid;
					var text = data[i].currencyname;
					 $("#currencyList").append("<option value='"+value+"'>"+text+"</option>");  
				}
				
			},
			error:function(){
				
			}
			
		});
	}
   
   function getParentDepositCurrencyTypeByCurrencyId(currencyId)
   {
	    $("#depositList").find("option").remove();
	   	$("#depositList").append("<option value='-1'>--请选择--</option>");
	   	
	   $.ajax({
		   
		   url:"getParentDepositCurrencyTypeByCurrencyId.do",
		   type:"POST",
		   data:{"currencyId":currencyId},
		   dataType:"JSON",
		   success:function(data){
			   
			   for(var i=0;i<data.length;i++)
				{
			
					var value = data[i].parentId;
					var text = data[i].depositName;
					var tmp = data[i].rate;
					 $("#depositList").append("<option rate='"+tmp+"' value='"+value+"'>"+text+"</option>");  
				}
		   },
		   error:function(){
		   }   
	   });
   }
   
  function getDepositCurrencyTypeByParentId(pId)
  {
	  $("#dateList").find("option").remove();
	   	$("#dateList").append("<option value='-1' rate=''>--请选择--</option>");
	  
	  $.ajax({
		  url:"getDepositCurrencyTypeByParentId.do",
		  type:"POST",
		  dataType:"JSON",
		  data:{"pId":pId},
		  success:function(data){
			  
			  for(var i=0;i<data.length;i++)
			{
				  var value = data[i].cdtpyeid;
				  var text = data[i].dataName;
				  var rate = data[i].rate;
				 $("#dateList").append("<option rate='"+rate+"' value='"+value+"'>"+text+"</option>"); 
			}
			  
			  
		  },
		  error:function(){
			  
		  }
		  
		  
	  });
  }
   
   </script>
</html>
