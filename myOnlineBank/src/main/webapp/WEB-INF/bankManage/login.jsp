

<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html class="bg-black">
    <head>
        <meta charset="UTF-8">
        <title>暴走银行后台 | 登录</title>
        <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
        <!-- bootstrap 3.0.2 -->
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <!-- font Awesome -->
        <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <!-- Theme style -->
        <link href="css/AdminLTE.css" rel="stylesheet" type="text/css" />

    
<script type="text/javascript"
	src="scripts/jquery-1.7.2.min.js"></script>
<!-- jQuery Configuration -->
<script type="text/javascript" src="scripts/simpla.jquery.configuration.js"></script>
<!--  EASY-UI -->
<script type="text/javascript" src="scripts/jquery-easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="scripts/jquery-easyui/locale/easyui-lang-zh_CN.js"></script>
<link href="scripts/jquery-easyui/themes/default/easyui.css" rel="stylesheet" type="text/css" />
<link href="scripts/jquery-easyui/themes/icon.css" rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!--  validate -->
<script type="text/javascript" src="scripts/regCheck.js"></script>
<script type="text/javascript" src="scripts/formValidate.js"></script>
    <body class="bg-black">

        <div class="form-box" id="login-box">
            <div class="header">登录</div>
            <form class="form" id="userForm" method="POST" action="login">
                <div class="body bg-gray">
                    <div class="form-group">
                       <font color="green">${EF.f}</font> 
                    </div>
                    <div class="form-group">
                        <input type="text" name="adminuser" class="form-control" placeholder="用户名"  class="easyui-validatebox" required="true" missingMessage="用户名必须填写"   value="${Muser.adminuser}"/>
                    </div>
                    <div class="form-group">
                        <input type="password" name="adminpassword" class="form-control" placeholder="密码" class="easyui-validatebox" required="true" missingMessage="密码必须填写"  value="${Muser.adminpassword}"/>
                    </div> 
					
                    <div class="form-group">
                        <input type="checkbox" name="remember_me"/> 记住我
                    </div>
                </div>
                <div class="footer">                                                               
                    <button type="submit" class="btn bg-olive btn-block" id="userFormSubmitBtn">登录</button>  
                    
                    <p><a href="#">忘记了密码</a></p>
                    
                    <a href="register.do" class="text-center">注册一个新账号</a>
                </div>
            </form>

            <div class="margin text-center">
                <span>使用以下的账号登录</span>
                <br/>
                <button class="btn bg-light-blue btn-circle"><i class="fa fa-facebook"></i></button>
                <button class="btn bg-aqua btn-circle"><i class="fa fa-twitter"></i></button>
                <button class="btn bg-red btn-circle"><i class="fa fa-google-plus"></i></button>

            </div>
        </div>


        <!-- jQuery 2.0.2 -->

        <!-- Bootstrap -->
        <script src="js/bootstrap.min.js" type="text/javascript"></script>        
      
    </body>
</html>