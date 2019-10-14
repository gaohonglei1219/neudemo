<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<header class="header"> <a href="index" class="logo" style="text-align: left;background-color:#f4f4f4;"> 
  <!-- Add the class icon to your logo image or logo icon to add the margining --> 
 <img src="/OnlineBank/bank/images/logo22.png">
  </a> 
  <!-- Header Navbar: style can be found in header.less -->
  <!-- Header Navbar: style can be found in header.less -->
  <nav class="navbar navbar-static-top" role="navigation" style="background-color:#00789d;"> 
    <!-- Sidebar toggle button--> 
    <a href="#" class="navbar-btn sidebar-toggle" data-toggle="offcanvas" role="button"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </a>
    <div class="navbar-right">
      <ul class="nav navbar-nav">
        <!-- Messages: style can be found in dropdown.less-->
				
        <!-- User Account: style can be found in dropdown.less -->
        <li class="dropdown user user-menu"> <a href="#" class="dropdown-toggle" data-toggle="dropdown"> <i class="glyphicon glyphicon-user"></i> <span id="user_name1">Jane Doe <i class="caret"></i></span> </a>
          <ul class="dropdown-menu">
            <!-- User image -->
            <li class="user-header bg-light-blue" > <img src="img/avatar3.png" class="img-circle" alt="User Image" />
              <p> <span id="user_name2">Jane Doe</span></p>
              
            </li>
            <!-- Menu Body -->
           <li class="user-body" style="padding-left:5px;">
              <div class="col-xs-4 text-center" style="padding-left:0px;"> <a href="#">我的理财</a> </div>
              <div class="col-xs-4 text-right"> <a href="#">账户</a> </div>
              <div class="col-xs-4 text-right" style="padding-right:5px;"> <a href="#">好友</a> </div>
            </li>
            <!-- Menu Footer-->
            <li class="user-footer">
              <div class="pull-left"> <a href="#" class="btn btn-default btn-flat">资料</a> </div>
              <div class="pull-right"> <a href="/OnlineBank/bank/signout_admin.do" class="btn btn-default btn-flat">退出</a> </div>
            </li>
          </ul>
        </li>
      </ul>
    </div>
  </nav>
</header>
<script type="text/javascript">
var name = '${user.obusername}';
document.getElementById("user_name1").innerHTML = name;
document.getElementById("user_name2").innerHTML = name;
</script>
 

</script>
