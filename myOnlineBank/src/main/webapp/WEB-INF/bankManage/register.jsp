<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html class="bg-black">
    <head>
        <meta charset="UTF-8">
        <title>暴走银行 | 注册</title>
        <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
        <!-- bootstrap 3.0.2 -->
        <link href="<%=request.getContextPath()%>/bankManage/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <!-- font Awesome -->
        <link href="<%=request.getContextPath()%>/bankManage/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <!-- Theme style -->
        <link href="<%=request.getContextPath()%>/bankManage/css/AdminLTE.css" rel="stylesheet" type="text/css" />

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
    </head>
    <body class="bg-black">

        <div class="form-box" id="login-box">
            <div class="header">注册</div>
            <form action="register_admin.do" method="post">
                <div class="body bg-gray">
                     <div class="form-group">
                       <font color="green">${EF.f}</font> 
                    </div>
                    <div class="form-group">
                        <input type="text" name="adminuser" class="form-control" placeholder="Username"  class="easyui-validatebox" required="true" missingMessage="姓名必须填写" value="${Muser.adminuser}"/>
                    </div>
                    <div class="form-group">
                        <input type="password" name="adminpassword" class="form-control" placeholder="Password"  class="easyui-validatebox" required="true" missingMessage="姓名必须填写"/>
                    </div>
                    <div class="form-group">
                        <input type="password" name="adminpassword_again" class="form-control" placeholder="Retype password"  class="easyui-validatebox" required="true" missingMessage="姓名必须填写"/>
                    </div>
					
                </div>
                <div class="footer">                    

                    <button type="submit" class="btn bg-olive btn-block">确定</button>

                    <a href="index.do" class="text-center">我已经有一个账号</a>
                </div>
            </form>

            <div class="margin text-center">
                <span>使用以下账号登录</span>
                <br/>
                <button class="btn bg-light-blue btn-circle"><i class="fa fa-facebook"></i></button>
                <button class="btn bg-aqua btn-circle"><i class="fa fa-twitter"></i></button>
                <button class="btn bg-red btn-circle"><i class="fa fa-google-plus"></i></button>

            </div>
        </div>


        <!-- jQuery 2.0.2 -->

        <!-- Bootstrap -->
        <script src="<%=request.getContextPath()%>/bankManage/js/bootstrap.min.js" type="text/javascript"></script>
		<script type="text/javascript">
	$(function() {		
		$("#nav_register").addClass("active");
		$("#nav_register").trigger("click");
        $("#nav_register_register").addClass("active");
	});
	</script>
    </body>
</html>