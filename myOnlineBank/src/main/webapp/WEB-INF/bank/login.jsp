<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="bg-black">
<head>
<meta charset="UTF-8">
<title>暴走银行 | 登录</title>
<meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
<!-- bootstrap 3.0.2 -->
<link rel="shortcut icon" href="images/logofa.jpg" />
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<!-- font Awesome -->
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<!-- Theme style -->
<link href="css/AdminLTE.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="files/demo.css">
<link rel="stylesheet" type="text/css" href="files/style1.css">
<link rel="stylesheet" type="text/css" href="css/login.css">
<script type="text/javascript" src="files/modernizr.js"></script>
<script language="javascript" src="files/Keyboard.js" charset="utf-8"></script>

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
<script type="text/javascript" src="js/LoginCheck.js"></script>
<script type="text/javascript" src="js/jquery.cookie.js"></script>

</head>
<body class="bg-black">
<ul class="cb-slideshow">
  <li><span>Image 01</span></li>
  <li><span>Image 02</span></li>
  <li><span>Image 03</span></li>
  <li><span>Image 04</span></li>
  <li><span>Image 05</span></li>
  <li><span>Image 06</span></li>
</ul>
<div class="logincontent" style="position: relative;">
  <div class="contentleft">
    <h1>欢迎来到 暴走银行。</h1>
    <p>联系你的好友和更多精彩。获取你感兴趣的实时更新。并通过每个视角观看事件实时呈现。</p>
  </div>
  <div class="form-box form-boxbj" id="login-box" style="position: relative;">
  
    <div class="header">登&nbsp录</div>
   
    <form class="form" id="userForm" name="userForm" method="POST" action="login">
      <div class="body bg-graybj">
        <div class="notification information png_bg">
    <div id="loginTip" style="font-size:14px;color:red">
				               <span >${msg}</span>			                                    
	</div></div>
        <div class="form-group">
          <input type="text" name="username" id="login_username" class="form-control" placeholder="用户名/证件号码" class="easyui-validatebox" required="true" missingMessage="姓名必须填写" />
        </div>
        <div class="form-group">
          	<input type="password" name="password" id="login_password" class="form-control" placeholder="密码"class="easyui-validatebox" required="true" missingMessage="姓名必须填写" />
          
        	 <div class="keyboardimg">
         	 	<input type="button"  onClick="checkKeyBoard(document.userForm.password,event)" style="width:25px;height:18px;background:url(images/Keyboard.gif)		;border:0" value="" title="使用虚拟键盘输入">
             </div>
        </div>
        <div class="form-group">
		  <input name="code" id="code"  type="text" style="width:130px; float:left;"  class="form-control" placeholder="验证码"/>
          <div style="float:left;margin-left:15px;margin-top:7px;"> 
          <img  id ="img" src="getVerifyCode" class="img" width="100px" height="30px"
						onClick="this.src='getVerifyCode?'+Math.random()" />  </div>					
				<div style="float:left;margin-left:15px;margin-top:10px;">
					<a onclick="js_method()">换一张</a>
				</div>
				<div style="clear:both;"></div>
			</div>
     
   </div>
      <div class="footer">
        <button type="submit" class="btn bg-olive bg-olivebj btn-block" onclick="return check()">登录</button>
        <p><a href="#">忘记了密码</a></p>
        <a href="registertest.jsp" class="text-center">申请一个新账户</a> </div>
        
    </form>
   
  </div>
  
  <div class="footerbody">
  <div class="loginfooter">
    <ul>
      <li> <a href="">关于</a> <span class="dot divider"></span> </li>
      <li> <a href="">帮助</a> <span class="dot divider"></span> </li>
      <li> <a href="">博客</a> <span class="dot divider"></span> </li>
      <li> <a href="">状态</a> <span class="dot divider"></span> </li>
      <li> <a href="">工作机会</a> <span class="dot divider"> </span> </li>
      <li> <a href="">条款</a> <span class="dot divider"></span> </li>
      <li> <a href="">隐私</a> <span class="dot divider"></span> </li>
      <li> <a href="">Cookies</a> <span class="dot divider"></span> </li>
      <li> <a href="">广告信息</a> <span class="dot divider"></span> </li>
      <li> <a href="">商标</a> <span class="dot divider"></span> </li>
      <li> <a href="">广告</a> <span class="dot divider"></span> </li>
      <li> <a href="">企业</a> <span class="dot divider"></span> </li>
      <li> <a href="">媒体</a> <span class="dot divider"></span> </li>
      <li> <a href="">开发者</a> <span class="dot divider"></span> </li>
      <li> <a href="">目录</a> <span class="dot divider"></span> </li>
      <li> <span class="copyright">© 2014 Bank of China</span> </li>
    </ul>
  </div>
  </div>
</div>
<!-- jQuery 2.0.2 -->
<!-- Bootstrap -->
<script src="js/bootstrap.min.js" type="text/javascript"></script>
<script type="text/javascript" src="js/bootstrap-popover.js"></script>
<script type="text/javascript" src="js/bootstrap-tooltip.js"></script>
<script src="js/jquery.min.js"></script> 
<!-- Bootstrap --> 
<script src="js/bootstrap.min.js" type="text/javascript"></script> 
<!-- daterangepicker --> 
<script src="js/plugins/daterangepicker/daterangepicker.js" type="text/javascript"></script> 
<!-- datepicker --> 
<script src="js/plugins/datepicker/bootstrap-datepicker.js" type="text/javascript"></script> 
<!-- AdminLTE App --> 
<script src="js/AdminLTE/app.js" type="text/javascript"></script> 
<!-- AdminLTE for demo purposes --> 
<script src="js/AdminLTE/demo.js" type="text/javascript"></script>

</body>
<script type="text/javascript">
var name = '${msg}';
console.info(name);
function js_method()
{

var me=Math.random();
//console.info(me);
var d=document.getElementById("img");
d.src="getVerifyCode.do?"+Math.random();

//$("img").src="getVerifyCode.do?"+me;

}

					




</script>
</html>
