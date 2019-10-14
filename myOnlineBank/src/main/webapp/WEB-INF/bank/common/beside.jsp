<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

  <aside class="left-side sidebar-offcanvas"> 
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar"> 
      <!-- Sidebar user panel -->
      <div class="user-panel">
        <div class="pull-left image"> <img src="../img/avatar3.png" class="img-circle" alt="User Image" /> </div>
        <div class="pull-left info">
          <p><span id="user_name3" class="userName"></span></p>
          <a href="login"><i class="fa fa-circle text-success"></i> Online</a> </div>
      </div>
      <!-- search form -->
      <form action="#" method="get" class="sidebar-form">
        <div class="input-group">
          <input type="text" name="q" class="form-control" placeholder="Search..."/>
          <span class="input-group-btn">
          <button type='submit' name='seach' id='search-btn' class="btn btn-flat"><i class="fa fa-search"></i></button>
          </span> </div>
      </form>
      <!-- /.search form --> 
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu">
        <li> <a href="/OnlineBank/bank/index"> <i class="fa fa-dashboard"></i> <span>首页</span> </a> </li>
        <li class="treeview"> <a id="nav_clientService" href="#"> <i class="fa fa-user"></i> <span>客户服务</span> <i class="fa fa-angle-left pull-right"></i> </a>
          <ul class="treeview-menu">
            <li><a id="nav_clientService_personManage" href="/OnlineBank/bank/clientService/personManage"><i class="fa fa-angle-double-right"></i> 个人信息管理</a></li>
            <li><a id="nav_clientService_loanCalculate" href="/OnlineBank/bank/clientService/loanCalculate"><i class="fa fa-angle-double-right"></i> 贷款计算器</a></li>
            <li><a id="nav_clientService_depositCalculate" href="/OnlineBank/bank/clientService/depositCalculate"><i class="fa fa-angle-double-right"></i> 存款计算器</a></li>
            <li><a id="nav_clientService_appointment" href="/OnlineBank/bank/clientService/appointment"><i class="fa fa-angle-double-right"></i> 大额取款预约</a></li>
          </ul>
        </li>
        <li class="treeview"> <a id="nav_accountManage" href="#"> <i class="fa fa-laptop"></i> <span>账户服务</span> <i class="fa fa-angle-left pull-right"></i> </a>
          <ul class="treeview-menu">
             <li><a id="nav_accountManage_accountManage" href="/OnlineBank/bank/accountService/accountManage"><i class="fa fa-angle-double-right"></i> 账户管理</a></li>
            <li><a id="nav_accountManage_accountLoss" href="/OnlineBank/bank/accountService/accountLoss"><i class="fa fa-angle-double-right"></i> 账户挂失</a></li>
            <li><a id="nav_accountManage_accountDetail" href="/OnlineBank/bank/accountService/accountDetail"><i class="fa fa-angle-double-right"></i> 账户详情</a></li>
            <li><a id="nav_accountManage_accountPassword" href="/OnlineBank/bank/accountService/accountPassword"><i class="fa fa-angle-double-right"></i> 账户密码修改</a></li>
            <li><a id="nav_accountManage_accountDeal" href="/OnlineBank/bank/accountService/accountDeal"><i class="fa fa-angle-double-right"></i> 账户明细查询</a></li>
          </ul>
        </li>
        <li class="treeview"> <a id="nav_creditCard" href="#"> <i class="fa fa-credit-card"></i> <span>信用卡</span> <i class="fa fa-angle-left pull-right"></i> </a>
          <ul class="treeview-menu">
            <li><a id="nav_creditCard" href="/OnlineBank/bank/creditCard/creditCardManage"><i class="fa fa-angle-double-right"></i> 信用卡管理</a></li>
            <li><a id="nav_creditCard_pro" href="/OnlineBank/bank/creditCard/creditCardProgress"><i class="fa fa-angle-double-right"></i> 申请进度查询</a></li>
            <li><a href="#"><i class="fa fa-angle-double-right"></i> 已出账单查询</a></li>
            <li><a href="#"><i class="fa fa-angle-double-right"></i> 未出账单查询</a></li>
			<li><a href="#"><i class="fa fa-angle-double-right"></i> 信用卡对账单</a></li>
          </ul>
        </li>
        <li class="treeview"> <a id="nav_transfer" href="#"> <i class="fa fa-money"></i> <span>转账汇款</span> <i class="fa fa-angle-left pull-right"></i> </a>
          <ul class="treeview-menu">
            <li><a id="nav_transfer_takeTransfer" href="/OnlineBank/bank/transfer/takeTransfer"><i class="fa fa-angle-double-right"></i> 转账与汇款</a></li>
            <li><a id="nav_transfer_transferSearch" href="#"><i class="fa fa-angle-double-right"></i> 转账查询</a></li>
            <li><a id="nav_transfer_receiverList" href="#"><i class="fa fa-angle-double-right"></i> 收款人名册管理</a></li>
          </ul>
        </li>
        <li class="treeview"> <a id="nav_hnlc" href="#"> <i class="fa fa-link"></i> <span>行内理财</span> <i class="fa fa-angle-left pull-right"></i> </a>
          <ul class="treeview-menu">
            <li><a id="nav_hnlc_lccp" href="/OnlineBank/bank/hnlc/lccp"><i class="fa fa-angle-double-right"></i> 理财产品</a></li>
            <li><a id="nav_hnlc_dhhz" href="/OnlineBank/bank/hnlc/dhhz"><i class="fa fa-angle-double-right"></i> 定活互转</a></li>
            <li><a id="nav_hnlc_tzck" href="/OnlineBank/bank/hnlc/tzck"><i class="fa fa-angle-double-right"></i> 通知存款业务</a></li>
          </ul>
        </li>
        <li class="treeview"> <a href="#"> <i class="fa fa-table"></i> <span>公共服务</span> <i class="fa fa-angle-left pull-right"></i> </a>
          <ul class="treeview-menu">
			<li><a href="/OnlineBank/bank/publicService/pay.html"><i class="fa fa-angle-double-right"></i> 缴费支付</a></li>
            <li><a href="/OnlineBank/bank/publicService/yejs.html"><i class="fa fa-angle-double-right"></i> 业务介绍</a></li>
            <li><a href="/OnlineBank/bank/publicService/networkSearch.html"><i class="fa fa-angle-double-right"></i> 网点查询</a></li>
            <li><a href="/OnlineBank/bank/publicService/help.html"><i class="fa fa-angle-double-right"></i> 帮助中心</a></li>
            <li><a href="#"><i class="fa fa-angle-double-right"></i> 投诉与建议</a></li>
          </ul>
        </li>
      </ul>
    </section>
    <!-- /.sidebar --> 
  </aside>
  <script type="text/javascript">
var name = '${user.obusername}';
document.getElementById("user_name3").innerHTML = name;
</script>
 

</script>