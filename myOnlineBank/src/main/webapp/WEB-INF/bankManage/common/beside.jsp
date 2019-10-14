<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

  <aside class="left-side sidebar-offcanvas"> 
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar"> 
      <!-- Sidebar user panel -->
      <div class="user-panel">
        <div class="pull-left image"> <img src="<%=request.getContextPath()%>/bankManage/img/avatar3.png" class="img-circle" alt="User Image" /> </div>
        <div class="pull-left info">
          <p>Hello, ${ sessionScope.admin.username}</p>
          <a href="../login.html"><i class="fa fa-circle text-success"></i> Online</a> </div>
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
        <li> <a href="/OnlineBank/bankManage/index"> <i class="fa fa-dashboard"></i> <span>首页</span> </a> </li>
        <li class="treeview"> <a id="nav_mmProductManage" href="#"> <i class="fa fa-dollar"></i> <span>理财产品管理</span> <i class="fa fa-angle-left pull-right"></i> </a>
          <ul class="treeview-menu">
            <li><a id="nav_mmProductManage_add" href="/OnlineBank/bankManage/mmProductManage/addProductManager"><i class="fa fa-angle-double-right"></i> 理财产品添加</a></li>
            <li><a id="nav_mmProductManage_list" href="/OnlineBank/bankManage/mmProductManage/mmProductList"><i class="fa fa-angle-double-right"></i> 理财产品列表</a></li>
             <li><a id="nav_mmProductManage_income" href="/OnlineBank/bankManage/mmProductManage/mmProductIncome"><i class="fa fa-angle-double-right"></i> 理财产品收益</a></li>                
          </ul>
        </li>		
				
		<li class="treeview"> <a id="nav_networkManage" href="#"> <i class="fa fa-sitemap"></i> <span>网点管理</span> <i class="fa fa-angle-left pull-right"></i> </a>
          <ul class="treeview-menu">
            <li><a id="nav_networkManage_add" href="/OnlineBank/bankManage/networkManage/networkAdd"><i class="fa fa-angle-double-right"></i> 网点添加</a></li>
            <li><a id="nav_networkManage_list" href="/OnlineBank/bankManage/networkManage/networkList"><i class="fa fa-angle-double-right"></i> 网点列表</a></li>            
          </ul>
        </li>
		
		<li class="treeview"> <a id="nav_news" href="#"> <i class="fa fa-camera"></i> <span>新闻管理</span> <i class="fa fa-angle-left pull-right"></i> </a>
          <ul class="treeview-menu">
            <li><a id="nav_news_add" href="/OnlineBank/bankManage/newsManage/newsAdd"><i class="fa fa-angle-double-right"></i> 新闻添加</a></li>
            <li><a id="nav_news_list" href="/OnlineBank/bankManage/newsManage/newsList"><i class="fa fa-angle-double-right"></i> 新闻列表</a></li>            
          </ul>
        </li>
		
		<li class="treeview"> <a id="nav_cardCategoryManage" href="#"> <i class="fa fa-qrcode"></i> <span>卡类管理</span> <i class="fa fa-angle-left pull-right"></i> </a>
          <ul class="treeview-menu">
            <li><a id="nav_cardCategoryManage_add" href="/OnlineBank/bankManage/cardCategoryManage/cardCategoryAdd"><i class="fa fa-angle-double-right"></i> 卡类添加</a></li>
            <li><a id="nav_cardCategoryManage_list" href="/OnlineBank/bankManage/cardCategoryManage/cardCategoryList"><i class="fa fa-angle-double-right"></i> 卡类列表</a></li>            
          </ul>
        </li>
		
		<li class="treeview"> <a id="nav_cardManage" href="#"> <i class="fa fa-money"></i> <span>储蓄卡业务</span> <i class="fa fa-angle-left pull-right"></i> </a>
          <ul class="treeview-menu">
            <li><a id="nav_cardManage_apply" href="/OnlineBank/bankManage/cardManage/cardApply"><i class="fa fa-angle-double-right"></i> 申请储蓄卡</a></li>
			<li><a id="nav_cardManage_takePutMoney" href="/OnlineBank/bankManage/cardManage/cardTakePutMoney"><i class="fa fa-angle-double-right"></i> 存款取款</a></li>
          </ul>
        </li>
		
		<li class="treeview"> <a id="nav_creditCardManage" href="#"> <i class="fa fa-credit-card"></i> <span>信用卡业务</span> <i class="fa fa-angle-left pull-right"></i> </a>
          <ul class="treeview-menu">
             <li><a id="nav_creditCardManage_apply" href="/OnlineBank/bankManage/creditCardManage/creditCardApply"><i class="fa fa-angle-double-right"></i> 申请信用卡</a></li>
			<li><a id="nav_creditCardManage_takePutMoney" href="/OnlineBank/bankManage/creditCardManage/creditCardTakePutMoney"><i class="fa fa-angle-double-right"></i> 存款取款</a></li>           
          </ul>
        </li>
		
		<li class="treeview"> <a id="nav_dealTypeManage" href="#"> <i class="fa fa-suitcase"></i> <span>交易类型管理</span> <i class="fa fa-angle-left pull-right"></i> </a>
          <ul class="treeview-menu">
            <li><a id="nav_dealTypeManage_add" href="/OnlineBank/bankManage/dealTypeManage/dealTypeAdd"><i class="fa fa-angle-double-right"></i> 交易类型添加</a></li>
            <li><a id="nav_dealTypeManage_list" href="/OnlineBank/bankManage/dealTypeManage/dealTypeList"><i class="fa fa-angle-double-right"></i> 交易类型列表</a></li>            
          </ul>
        </li>
		
		<li class="treeview"> <a id="nav_rateManage" href="#"> <i class="fa fa-bar-chart-o"></i> <span>利率管理</span> <i class="fa fa-angle-left pull-right"></i> </a>
          <ul class="treeview-menu">
             <li><a id="nav_rateManage_add" href="/OnlineBank/bankManage/rateManage/rateAdd"><i class="fa fa-angle-double-right"></i> 利率添加</a></li>
            <li><a id="nav_rateManage_list" href="/OnlineBank/bankManage/rateManage/rateList"><i class="fa fa-angle-double-right"></i> 历史利率查找</a></li>           
          </ul>
        </li>
		
		<li class="treeview"> <a id="nav_register" href="#"> <i class="fa fa-user"></i> <span>管理员管理</span> <i class="fa fa-angle-left pull-right"></i> </a>
          <ul class="treeview-menu">
          <li><a id="nav_register_register" href="/OnlineBank/bankManage/register"><i class="fa fa-angle-double-right"></i> 管理员注册</a></li>
          </ul>
        </li>
        
      </ul>
    </section>
    <!-- /.sidebar --> 
  </aside>