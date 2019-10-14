<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'depositType.jsp' starting page</title>
    
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
	</style>
	
	

  </head>
  
  <body>
   	<div class="content">
   		
   		<div class="form">
   			<h3>币种添加</h3>
   			<form id="form3" method="post" action="addCurrency.do" >
   				<table>
   					<tr>
   						<td>币种名称：</td>
   						<td><input type="text" name="currencyname"/></td>
   					</tr>
   					<tr>
   						<td>币种符号</td>
   						<td><input type="text" name="currencysign"/></td>
   					</tr>
   					
   					<tr>
   						<td><button id="submit3">提交</button></td>
   					</tr>
   				
   				</table>
   			
   			</form>
   		
   		
   		</div>
   		
   		
   		<div class="form" >
   			<form id="form1" action="getParentDepositType.do" method="post">
		   		<h3>添加存款类型</h3>
		   		<input name="depositname" type="hidden"/>
		   		<input name="dateName" type="hidden"/>
		   		<table>
		   			<tr>
		   				<td>一级存款类型：</td>
		   				<td>
		   					<select name="obDeposittype.deposittypeid" id="parentDepositType">
			   					<option value="-1">----请选择----</option>
			   				</select>
		   				</td>
			   		</tr>
			   		<tr>
			   			<td>储蓄时限：</td>
			   			<td>
			   				<select name="depositDate" id="dateList">
			   					<option>----请选择----</option>
			   					<option value="1">一天</option>
			   					<option value="7">七天</option>
			   					<option value="1">一个月</option>
			   					<option value="3">三个月</option>
			   					<option value="6">六个月</option>
			   					<option value="12">一年</option>
			   					<option value="36">三年</option>
			   					<option value="60">五年</option>
			   				</select>
			   			</td>
			   		</tr>
			   		
			   		<tr>
			   			<td><button id="submit1" >提交</button></td>
			   		</tr>
			   	</table>
   			</form>
   		</div>
   		
   		<div class="form">
   			<form id="form2" action="addDepositCurrencyType.do">
		   		<h3>添加利率</h3>
		   		<table>
		   			<tr>
		   				<td>币种：</td>
		   				<td>
		   					<select id="currencyList" name="obCurrency.Currencyid">
			   					<option>----请选择----</option>
			   				</select>
		   				</td>
			   		</tr>
			   		<tr>
			   			<td>一级存款类型：</td>
		   				<td>
		   					<select id="parentDepositType2" name="obDeposittype.obDeposittype.deposittypeid">
			   					<option>----请选择----</option>
			   				</select>
		   				</td>
			   		</tr>
			   		<tr>
			   			<td>储蓄时限：</td>
			   			<td>
			   				<select id="dateList2" name="obDeposittype.deposittypeid">
			   					<option>----请选择----</option>
			   				</select>
			   			</td>
			   		</tr>
			   		
			   		<tr>
			   			<td>起存金额：</td>
			   			<td><input type="text" name="minmoney"/></td>
			   		</tr>
			   		
			   		<tr>
			   			<td>利率:</td>
			   			<td><input type="text" name="rate" /></td>
			   		</tr>
			   	
			   		<tr>
			   			<td><button id="submit2">提交</button></td>
			   		</tr>
			   	</table>
   			</form>
   		</div>
   		
   	</div>
  </body>
 <script type="text/javascript" charset="utf8" src="js/jquery-1.10.2.min.js"></script>
 
 <script type="text/javascript">
	
		$(function(){
				
			getParentDepositType();
			getCurrencyList();
			
			$("#submit1").click(function(){
				
				$.ajax({
					
					type:"POST",
					dataType:"json",
					data:$("#form1").serialize(),
					url:'addDepositType.do',
					success:function(data){
						alert(data);
					},
					error:function(){
						
					}	
				});
				return false;
			});
			$("#submit2").click(function(){
				
				$.ajax({
					url:"addDepositCurrencyType.do",
					data:$("#form2").serialize(),
					dataType:"json",
					success:function(data){
						alert(data);
					},
					error:function(){}
					
				});
				
				return false;
			});
			
			$("#submit3").click(function(){
				
				$.ajax({
					url:"addCurrency.do",
					type:"POST",
					data:$("#form3").serialize(),
					dataType:"json",
					success:function(data){
						alert(data);
					},
					error:function(){}
				});
				
				return false;
				
			});
			
			
			
			$("#parentDepositType").change(function(){
				
				$("#form1 input[name='depositname']").val($("#parentDepositType option:selected").text());
			});
			
			$("#dateList").change(function(){
				$("#form1 input[name='dateName']").val($("#dateList option:selected").text());
			});
			
			$("#parentDepositType2").change(function(){
				
				if($(this).val()==192)
				{
					alert("活期存款");
				}
				else
				{
					getDepositTypeByParentId($(this).val());
				}
			});
			
		})
	function getParentDepositType()
	{
			$.ajax({
				type:"POST",
				dataType:"json",
				url:"getParentDepositType.do",
				success:function(data){
					
					var parentDepositType = $("#parentDepositType");
					for(var i=0;i<data.length;i++)
						{
							var value = data[i].deposittypeid;
							var text = data[i].depositname;
							 parentDepositType.append("<option value='"+value+"'>"+text+"</option>");  
							 $("#parentDepositType2").append("<option value='"+value+"'>"+text+"</option>");  
						}
					
				},
				error:function(){		
				}
				
			});	
			
	}
		
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
	
	function getDepositTypeByParentId(pid)
	{
		$("#dateList2").find("option").remove(); 
		$("#dateList2").append("<option value='0'>--请选择--</option>"); 
		
		$.ajax({
			type:"POST",
			url:"getDepositTypeByParentId.do",
			data:{"pId":pid},
			dataType:"json",
			success:function(data){
				
				for(var i=0;i<data.length;i++)
				{
			
					var value = data[i].deposittypeid;
					var text = data[i].dateName;
					 $("#dateList2").append("<option value='"+value+"'>"+text+"</option>");  
				}
				
			},
			error:function(){}
			
			
		});
	}
		
	</script>
</html>
