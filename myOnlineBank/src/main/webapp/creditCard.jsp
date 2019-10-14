<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'card.jsp' starting page</title>
    
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
  				<h3>信用卡注册</h3>
  				<form id="form2" method="POST" action="addCard.do">
	  				<table>
	  					<tr>
	  						<td>姓名</td>
	  						<td><input type="text" name="cardname" value="Chane" /></td>
	  					</tr>
	  					<tr>
	  						<td>证件类型:</td>
	  						<td>
	  							<select name="certificatetype">
	  								<option value="身份证">身份证</option>
	  								<option value"护照">护照</option>
	  								<option value="港澳通行证">港澳通行证</option>
	  							</select>
	  						</td>
	  					</tr>
	  					<tr>
	  						<td>证件号码：</td>
	  						<td><input type="text" name="certificatenum" value="445281199207281234"/></td>
	  					</tr>
	  					<tr>
	  						<td>性别</td>
	  						<td>
	  							<select name="gender">
	  								<option value="0">男</option>
	  								<option value="1">女</option>
	  							</select>
	  						</td>
	  					</tr>
	  					<tr>
	  						<td>卡类</td>
	  						<td>
	  							<select id="cardTypeList" name="obCardtype.cardtypeid">
	  								<option value="0">---请选择---</option>
	  							</select>
	  						</td>
	  					</tr>
	  					<tr>
	  						<td>密码：</td>
	  						<td><input type="text" name="cardpassword" /></td>
	  					</tr>
	  					<tr>
	  						<td>开户行：</td>
	  						
	  						<td>
	  							<select id="province">
	  								<option value="0">---请选择---</option>
	  							</select>
	  							
	  							<select id="city">
	  								<option value="0" code="o">---请选择---</option>
	  							</select>
	  							
	  							<select id="network" name="obNetwork.networkid">
	  								<option value="0">---请选择---</option>
	  							</select>
	  							
	  							<input type="hidden" name="obuserid" />
	  						</td>
	  					</tr>
	  					
	  					<tr>
	  						<td>固定电话</td>
	  						<td><input type="text" name="fixphone" value="076983344477" /></td>
	  					</tr>
	  					<tr>
	  						<td>移动电话：</td>
	  						<td><input type="text" value="13226799648" name="phonenum" /></td>
	  					</tr>
	  					
	  					<tr>
	  						<td>电子邮箱:</td>
	  						<td><input type="text" value="378646744@qq.com" name="EMail" /></td>
	  					</tr>
	  					<tr>
	  						<td>联系地址：</td>
	  						<td><input type="text" name="address" value="肇庆市端州区肇庆学院"/></td>
	  					</tr>
	  					<tr>
	  						<td>邮政编码</td>
	  						<td><input type="text" value="523000" name="postcode" /></td>
	  					</tr>
	  					<tr>
	  						<td>是否签约</td>
	  						<td><input type="checkbox" name="issigned" value="1" checked="checked" /></td>
	  					</tr>
	  					<tr>
	  						<td>人民币额度</td>
	  						<td><input type="text" name="RMBQuota" /></td>
	  					</tr>
	  					<tr>
	  						<td>
	  						<button id="submit2">提交</button>
	  						</td>
	  					</tr>
	  				</table>
  				</form>
  			</div>
  			
  		</div>
   
  </body>
  <script type="text/javascript" charset="utf8" src="js/jquery-1.10.2.min.js"></script>
  <script>
  	$(function(){
  		
  		getCardType();
  		getProvince();//获取省份
  		
  		$("#province").change(function(){
  			var pId = $(this).children('option:selected').val(); 
  			getCity(pId);
  		});
  		
  		$("#city").change(function(){
  			
  			var cityId =$(this).children('option:selected').val();
  			$("#form2 input[name='obuserid']").val($(this).children('option:selected').attr('code'));
  			getNetwork(cityId);
  			
  		});
  		
  		$("#submit1").click(function(){
  			$.ajax({
  				url:"addCardType.do",
  				data:$("#form1").serialize(),
  				type:"POST",
  				dataType:"json",
  				success:function(data){
  					
  					alert(data);
  				},
  				error:function(){	
  					alert("提交失败");
  				}	
  			});
  			return false;
  		});
  		
  		$("#submit2").click(function(){
  			
  			$.ajax({
  				url:"addCreditCard.do",
  				data:$("#form2").serialize(),
  				type:"POST",
  				dataType:"json",
  				success:function(data){
  					alert(data)
  				},
  				error:function(){
  					alert("提交失败");
  				}
  				
  			});
  			
  			return false;
  		});
  		
  		
  	});
  	
  	//获取卡类信息
  	function getCardType()
  	{
  		
  		$.ajax({
  			url:"getCardTypeList.do",
  			type:"POST",
  			dataType:"JSON",
  			success:function(data){
  				
  				for(var i=0;i<data.length;i++)
				{
					var value = data[i].cardtypeid;
					var text = data[i].cardname;
					 $("#cardTypeList").append("<option value='"+value+"'>"+text+"</option>");  
				}
  			},
  			error:function(){}
  			
  		});
  	}
  	
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
  		 selObj.append("<option value='0'>---请选择城市---</option>"); 
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
  					    var code =data[i].citycode
  					    selObj.append("<option code='"+code+"' value='"+value+"'>"+text+"</option>");  
  					}
  			}
  			
  		});
  	}
  	
  	function getNetwork(cityId)
  	{
  		 var selObj = $("#network"); 
  		 selObj.find("option").remove(); 
  		 selObj.append("<option value='0'>---请选择网点---</option>"); 
  		  $.ajax({
  			type:"POST",
  			url:"getNetwork.do",
  			data:{"cityId":cityId},
  			dataType:"json",
  			success:function(data){
  				
  				for(var i=0;i<data.aaData.length;i++)
  					{
  					    var value=data.aaData[i].networkid;  
  					    var text=data.aaData[i].networkname;  
  					    selObj.append("<option value='"+value+"'>"+text+"</option>");  
  					}
  			},
  			error:function(){
  				alert("cao");
  			}
  			
  		});
  		
  	}
  	
  </script>
</html>
