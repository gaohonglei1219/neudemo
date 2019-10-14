<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>暴走银行 | 首页</title>
<meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
<!-- bootstrap 3.0.2 -->
<link rel="shortcut icon" href="images/logofa.png" />
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<!-- font Awesome -->
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<!-- Ionicons -->
<link href="css/ionicons.min.css" rel="stylesheet" type="text/css" />
<!-- Theme style -->
<link href="css/AdminLTE.css" rel="stylesheet" type="text/css" />
<link href="css/index.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-2.0.2.min.js"></script>
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
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
</head>
<body class="skin-blue">
<%@ include file="common/headindex.jsp"%>
<!-- header logo: style can be found in header.less -->
<div class="wrapper row-offcanvas row-offcanvas-left"> 
  <!-- Left side column. contains the logo and sidebar -->
  <%@ include file="common/besideindex.jsp"%>
  
  <!-- Right side column. Contains the navbar and content of the page -->
  <aside class="right-side"> 
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1> 我的账户 <small>Control panel</small> </h1>
      <ol class="breadcrumb">
        <li class="active"><i class="fa fa-dashboard"></i> 首页</li>
      </ol>
    </section>
    
    <!-- Main content -->
    
    <section class="content">
      <div id="showlast1"  class="row">
       
        <!-- ./col -->
        
       
      </div>
      <!-- /.count - row -->
      
      <div class="row">
        <div class="col-lg-12  col-xs-12 .col-md-12">
          <div> <span style="font-size:24px">便捷服务</span>
            <div class="row quickService">
              <div class="col-lg-12 col-md-12">
                <div class="row">
                  <div class="col-lg-1 col-md-1 col-xs-1">
                    <div style="text-align:center"> <a href="#"> <img class="" src="img/quickService1.gif"> <br />
                      手机客户端 </a> </div>
                  </div>
                  <div class="col-lg-1 col-md-1 col-xs-1">
                    <div style="text-align:center"> <a href="#"> <img class="" src="img/quickService2.gif" > <br />
                      服务价格 </a> </div>
                  </div>
                  <div class="col-lg-1 col-md-1 col-xs-1">
                    <div style="text-align:center"> <a href="#"> <img class="" src="img/quickService4.gif"> <br />
                      在线开通 </a> </div>
                  </div>
                  <div class="col-lg-1 col-md-1 col-xs-1">
                    <div style="text-align:center"> <a href="#"> <img class="" src="img/quickService5.gif"> <br />
                      自助填单 </a> </div>
                  </div>
                  <div class="col-lg-1 col-md-1 col-xs-1">
                    <div style="text-align:center"> <a style="cursor:pointer" data-toggle="modal" data-backdrop="static" data-target="#compose-modal" > <img class="" src="img/quickService6.gif"> <br />
                      申请信用卡 </a> </div>
                  </div>
                  <div class="col-lg-1 col-md-1 col-xs-1">
                    <div style="text-align:center"> <a style="cursor:pointer" data-toggle="modal" data-backdrop="static" data-target="#compose-modal" > <img class="" src="img/quickService7.gif"> <br />
                      长城国际卡 </a> </div>
                  </div>
                  <div class="col-lg-1 col-md-1 col-xs-1">
                    <div style="text-align:center"> <a style="cursor:pointer" data-toggle="modal" data-backdrop="static" data-target="#compose-modal" > <img class="" src="img/quickService8.gif"> <br />
                      企业年金 </a> </div>
                  </div>
                  <div class="col-lg-1 col-md-1 col-xs-1">
                    <div style="text-align:center"> <a style="cursor:pointer" data-toggle="modal" data-backdrop="static" data-target="#compose-modal" > <img class="" src="img/quickService9.gif"> <br />
                      回单验证 </a> </div>
                  </div>
                  <div class="col-lg-1 col-md-1 col-xs-1">
                    <div style="text-align:center"> <a style="cursor:pointer" data-toggle="modal" data-backdrop="static" data-target="#compose-modal" > <img class="" src="img/quickService10.gif"> <br />
                      网上边贸 </a> </div>
                  </div>
                  <div class="col-lg-1 col-md-1 col-xs-1">
                    <div style="text-align:center"> <a style="cursor:pointer" data-toggle="modal" data-backdrop="static" data-target="#compose-modal" > <img class="" src="img/quickService11.gif"> <br />
                      计算器 </a> </div>
                  </div>
                  <div class="col-lg-1 col-md-1 col-xs-1">
                    <div style="text-align:center"> <a style="cursor:pointer" data-toggle="modal" data-backdrop="static" data-target="#compose-modal" > <img class="" src="img/quickService12.gif"> <br />
                      民生缴费 </a> </div>
                  </div>
                </div>
                <!-- row --> 
              </div>
              <!-- col --> 
              
            </div>
            <!-- row --> 
            
          </div>
        </div>
        <!-- ./col --> 
      </div>
      <!-- /.fast -- row -->
      
      <div style="height:20px"> </div>
      <div class="row">
        <div class="col-lg-7 col-xs-12"> 
          
          <!-- quick email widget -->
          <div class="box box-solid box-info">
            <div class="box-header"> <i class="fa fa-envelope"></i>
              <h3 class="box-title">银行新闻</h3>
            </div>
            <div class="box-body">
              <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                  <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                  <li data-target="#carousel-example-generic" data-slide-to="1" class=""></li>
                  <li data-target="#carousel-example-generic" data-slide-to="2" class=""></li>
                </ol>
                <div class="carousel-inner">
                  <div class="item active"> <img width=100%; src="images/news_07.jpg" alt="First slide" >
                    <div class="carousel-caption"> 暴走银行帝国大厦年底投入使用 </div>
                  </div>
                  <div class="item"> <img width=100%; src="images/news_01.jpg" alt="Second slide">
                    <div class="carousel-caption"> 暴走银行带你了解李克强经济学 </div>
                  </div>
                  <div class="item"> <img width=100%; src="images/news_04.jpg" alt="Third slide">
                    <div class="carousel-caption"> 幸福，在你手中 </div>
                  </div>
                </div>
                <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"></span> </a> <a class="right carousel-control" href="#carousel-example-generic" data-slide="next"> <span class="glyphicon glyphicon-chevron-right"></span> </a> </div>
            </div>
          </div>
          <!-- end widget --> 
          
        </div>
        
        <div class="col-lg-5 col-xs-12"> 
          
          <!-- quick email widget -->
          <div class="box box-solid box-success">
            <div class="box-header"> <i class="fa  fa-thumbs-o-up"></i>
              <h3 class="box-title">理财产品推荐</h3>
            </div>
            <div class="box-body">
              <table class="table table-striped">
                <tr>
                  <th>名称</th>
                  <th>类型</th>
                  <th>预计收益</th>
                </tr>
                <tr>
                  <td><a href="#">宜信 - 宜人贷理财</a></td>
                  <td>
                                                        股票
                    </td>
                  <td><span class="badge bg-red">12.00%</span></td>
                </tr>
                <tr>
                  <td>有利网 - 有利网定存宝V</td>
                  <td>股票</td>
                  <td><span class="badge bg-yellow">12.98%</span></td>
                </tr>
                <tr>
                  <td>爱投资 - 新手小额项目</td>
                  <td>债卷</td>
                  <td><span class="badge bg-light-blue">12.98%</span></td>
                </tr>
                <tr>
                  <td>金海贷 - 企业经营贷（稳健型）</td>
                  <td>债卷</td>
                  <td><span class="badge bg-green">13.00%</span></td>
                </tr>
                <tr>
                  <td>广发基金 - 聚瑞股票基金</td>
                  <td>基金</td>
                  <td><span class="badge bg-green">15.00%</span></td>
                </tr>
                <tr>
                  <td>广发基金 - 天天红货币基金</td>
                  <td>基金</td>
                  <td><span class="badge bg-green">17.00%</span></td>
                </tr>
                <tr>
                  <td>信达新兴 - 重庆花溪半岛安置</td>
                  <td>信托</td>
                  <td><span class="badge bg-green">16.00%</span></td>
                </tr>
                <tr>
                  <td>翼龙贷 - 翼龙贷网理财产品</td>
                  <td>P2P</td>
                  <td><span class="badge bg-green">15.50%</span></td>
                </tr>
              </table>
            </div>
          </div>
          <!-- end widget --> 
          
        </div>
       
      </div>
      <!-- /.fast -- row -->
      
      <div class="row">
        
        <div class="col-md-7"> 
          
          <!-- quick email widget -->
          <div class="box  box-solid box-info">
            <div class="box-header"> <i class="fa fa-heart-o"></i>
              <h3 class="box-title">温馨提示</h3>
              <!-- tools box -->
              <div class="pull-right box-tools">
                <button class="btn btn-info btn-sm" data-widget="remove" data-toggle="tooltip" title="关闭"><i class="fa fa-times"></i></button>
              </div>
              <!-- /. tools --> 
            </div>
            <div class="box-body">
              <ul class="todo-list bankReminder">
                <li class="callout callout-info"> 1.请尽量使用专用电脑操作网上银行，并定期更新操作系统安全补丁和杀毒软件。 </li>
                <li> 2.请通过建行网站访问网上银行，不要通过电子邮件、不明网站等链接登录网上银行。 </li>
                <li> 3.请在使用网上银行完毕后，点击页面右上角的“退出系统”，以确保安全退出。 </li>
                <li> 4.如果您是网银盾客户，请在退出网上银行后，立即拔出您的网银盾，并妥善保管。 </li>
                <li> 5.如果您是网银盾客户，请在退妥善保管。 </li>
              </ul>
            </div>
          </div>
          <!-- end widget --> 
          
        </div>
        
         <div class="col-md-5"> 
          
          <!-- quick email widget -->
          <div class="box box-solid box-info">
            <div class="box-header"> <i class="fa fa-envelope"></i>
              <h3 class="box-title">银行公告</h3>
            </div>
            <div class="box-body">
             
              <ul class="todo-list banknotice">
                <li> <a href="#">1.请尽量使用专用电脑操作网上银行.请尽量使用专用电脑操作。</a> </li>
                <li> <a href="#">2.请尽量使用专用电脑操作。</a> </li>
                <li> <a href="#">3.请使用专用电脑操作网上银行。</a> </li>
                <li> <a href="#">4.关于2014年财务财务报告苏丹红佛山等回复搜房华盛顿。</a> </li>
              </ul>
            </div>
          </div>
          <!-- end widget --> 
          
        </div>
      </div>
      <!-- end row -->
      <div style="height:100px"></div>
     <%@ include file="common/headfoot.jsp"%>
    </section>
    <!-- /.content --> 
  </aside>
  <!-- /.right-side --> 
</div>
<!-- ./wrapper --> 

<!-- COMPOSE MESSAGE MODAL -->

<div class="modal fade" id="compose-add"  tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title"><i class="fa fa-pencil"></i> 新增|绑定卡操作</h4>
                    </div>
                    
                        <div class="modal-body">
						
							 <div class="row">
									<div class="col-lg-11">
						<form id="card_add" method="post">
                        <div class="modal-body">
                            <div class="form-group">
                                <div class="input-group">
                                    <span class="input-group-addon">卡账号:</span>
                                    <input name="cardnum" id ="cardnum"  type="text" class="form-control" >
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="input-group">
                                    <span class="input-group-addon">卡密码:</span>
                                    <input name="cardpassword"  id="cardpassword" type="text" class="form-control" >
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="input-group">
                                    <span class="input-group-addon">账号别名:</span>
                                    <input name="cardname" id="cardalias"  type="text" class="form-control" >
                                </div>
                            </div>
													
							 <div class="form-group">
							 	 <div class="input-group">
                                           <span class="input-group-addon">绑定的证件</span>
										   <div class="row">
										   		<div class="col-lg-4">
                                            <select class="form-control" name="certificatetype" id="certificatetype">
                                                <option value="身份证">身份证</option>
                                                <option value="军人身份证">军人身份证</option>
                                                <option value="护照">护照</option>                                             
                                            </select>
												</div>										
											</div>
									</div>
                               </div>
                                           <div class="form-group">
                                <div class="input-group">
                                    <span class="input-group-addon">证件号:</span>
                                    <input name="certificatenum" id="certificatenum"
                                     type="text" class="form-control" >
                                </div>
                            </div>
                          
                        </div>
                        <div class="modal-footer clearfix">

                            <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="fa fa-times"></i> 取消</button>

                           <input type="button" style="padding-left: 30px; padding-right: 30px;" class="btn btn-primary pull-left" value="提交" class="button" id="userFormSubmitBtn" />
                        </div>
                    </form>
									</div>
								
							</div> <!-- row -->
                            
                        </div>
                       
              
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
 </div><!-- /.modal -->
 
 
 
 <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title" id="myModalLabel"><center></center></h4>
      </div>
      <div class="modal-body">
        <span id="mySpan" style="color:blue;font-size:18px;"></span>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
       
      </div>
    </div>
  </div>
</div>	












<div class="modal fade" id="compose-modal" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title"><i class="fa fa-cog"></i> 快捷菜单设置</h4>
      </div>
      <div class="modal-body">
        <div class="row">
          <div class="col-lg-2 .col-md-2 col-xs-3">
            <div style="text-align:center"> <img class="" src="img/a.png"> <br />
              <input type="checkbox" class="minimal"/>
              <span>&nbsp;&nbsp;转账</span> </div>
          </div>
          <div class="col-lg-2 .col-md-2 col-xs-3">
            <div style="text-align:center"> <img class="" src="img/a.png"> <br />
              <input type="checkbox" class="minimal"/>
              <span>&nbsp;&nbsp;转账</span> </div>
          </div>
          <div class="col-lg-2 .col-md-2 col-xs-3">
            <div style="text-align:center"> <img class="" src="img/a.png"> <br />
              <input type="checkbox" class="minimal"/>
              <span>&nbsp;&nbsp;转账</span> </div>
          </div>
          <div class="col-lg-2 .col-md-2 col-xs-3">
            <div style="text-align:center"> <img class="" src="img/a.png"> <br />
              <input type="checkbox" class="minimal"/>
              <span>&nbsp;&nbsp;转账</span> </div>
          </div>
          <div class="col-lg-2 .col-md-2 col-xs-3">
            <div style="text-align:center"> <img class="" src="img/a.png"> <br />
              <input type="checkbox" class="minimal"/>
              <span>&nbsp;&nbsp;转账</span> </div>
          </div>
          <div class="col-lg-2 .col-md-2 col-xs-3">
            <div style="text-align:center"> <img class="" src="img/a.png"> <br />
              <input type="checkbox" class="minimal"/>
              <span>&nbsp;&nbsp;转账</span> </div>
          </div>
          <div class="col-lg-2 .col-md-2 col-xs-3">
            <div style="text-align:center"> <img class="" src="img/a.png"> <br />
              <input type="checkbox" class="minimal"/>
              <span>&nbsp;&nbsp;转账</span> </div>
          </div>
          <div class="col-lg-2 .col-md-2 col-xs-3">
            <div style="text-align:center"> <img class="" src="img/a.png"> <br />
              <input type="checkbox" class="minimal"/>
              <span>&nbsp;&nbsp;转账</span> </div>
          </div>
          <div class="col-lg-2 .col-md-2 col-xs-3">
            <div style="text-align:center"> <img class="" src="img/a.png"> <br />
              <input type="checkbox" class="minimal"/>
              <span>&nbsp;&nbsp;转账</span> </div>
          </div>
          <div class="col-lg-2 .col-md-2 col-xs-3">
            <div style="text-align:center"> <img class="" src="img/a.png"> <br />
              <input type="checkbox" class="minimal"/>
              <span>&nbsp;&nbsp;转账</span> </div>
          </div>
        </div>
        <!-- row --> 
        
      </div>
      <div class="modal-footer clearfix">
        <button type="submit" class="btn btn-primary pull-left"><i class="fa fa-check" id="userFormSubmitBtn"></i> 确认</button>
        <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="fa fa-times"></i> 取消</button>
      </div>
    </div>
    <!-- /.modal-content --> 
  </div>
  <!-- /.modal-dialog --> 
</div>
<script type="text/javascript">

	var name = '${user.obusername}'; //拿到session的用戶名

	function getcard()
	{
		$.ajax({
		type : "post",
		url : "fresh_user.do",
		dataType : "json",
		data :"obusername="+'${user.obusername}',
		//$('#userForm').serialize()
		error : function() {				
		},
		success : function(json) {
		
		var data=json.model.cards;
	
		var turn=0;
		var htmlextra="<div class='col-lg-3 col-md-4 col-xs-6'> <div class='small-box bg-red'><div class='inner'><h2> + </h2> <p> 账户别名：无<br>账户余额：无 </p></div><div class='icon'> <i class='ion ion-pie-graph'></i> </div><a href='#' class='small-box-footer' data-toggle='modal' data-backdrop='static'  data-target='#compose-add'> 添加新卡 <i class='fa fa-arrow-circle-right'></i> </a> </div></div>";

		 for(var i=0; i<data.length;i++) 
		 {  
		  
					var html=document.getElementById("showlast1").innerHTML;
					
					
					if (turn==0)
					{
						turn=1;
						document.getElementById("showlast1").innerHTML=html+"<div class='col-lg-3 col-md-4 col-xs-6'> <div class='small-box bg-aqua'>  <div class='inner'> <h4>  <span id='card_num'></span></h4>    <p> 账户类型： <span id='card_type'></span><br>        账户余额： <span id='money'></span> </p>   </div>  <div class='icon'> <i class='ion ion-bag'></i> </div>  <a href='' class='small-box-footer'> 详情 <i class='fa fa-arrow-circle-right'></i> </a> </div> </div>";
					}
					else if (turn==2)
					{
						turn =0;
						document.getElementById("showlast1").innerHTML=html+"<div class='col-lg-3 col-md-4 col-xs-6'>  <div class='small-box bg-green'>  <div class='inner'>   <h4> <span id='card_num'></span> </h4>   <p> 账户类型： <span id='card_type'></span><br>  账户余额： <span id='money'></span> </p>   </div>  <div class='icon'> <i class='ion ion-pie-graph'></i> </div> <a href='' class='small-box-footer'> 详情 <i class='fa fa-arrow-circle-right'></i> </a> </div> </div>";
					}
					else if (turn==1)
					{
						turn=2;
						document.getElementById("showlast1").innerHTML=html+"<div class='col-lg-3 col-md-4 col-xs-6'>  <div class='small-box bg-yellow'>  <div class='inner'>   <h4> <span id='card_num'></span> </h4>   <p> 账户类型： <span id='card_type'></span><br>  账户余额： <span id='money'></span> </p>   </div>  <div class='icon'> <i class='ion ion-social-designernews'></i> </div> <a href='' class='small-box-footer'> 详情 <i class='fa fa-arrow-circle-right'></i> </a> </div> </div>";
					}
					
				 	document.getElementById("money").innerHTML = data[i].fixphone;
				 	$("#money").attr("id","money_"+data[i].buserid);
				 	document.getElementById("card_type").innerHTML = data[i].cardtype; 
				 	$("#card_type").attr("id","card_type_"+data[i].obuserid); 
				 	document.getElementById("card_num").innerHTML = data[i].obuserid;   
				 	$("#card_num").attr("id","card_num_"+data[i].obuserid);         		     
			}   
				    
		 		var html=document.getElementById("showlast1").innerHTML;  
				document.getElementById("showlast1").innerHTML=html+htmlextra;
				
				},});
		}
		$(document).ready(function () {
				getcard();
			$('#userFormSubmitBtn').click(submitUserForm);
		});


//--------------添加卡綁定--------------------------------------------------

	    function test()
        {
        $('#myModal').modal('hide');
        }    
		function submitUserForm() {
			
		if (true) {
			
			
			$.ajax({
				type : "post",
				url : "card_add.do",
				dataType : "json",
				data : $('#card_add').serialize(),
				error : function() {
				},
				success : function(json) {
					
					document.getElementById("mySpan").innerHTML = json.model.result.content;
					document.getElementById("myModalLabel").innerHTML = json.model.result.message;
					$('#compose-add').modal('hide');
					
					$('#myModal').modal('show');
					setTimeout("test()",3000);
					if (json.model.result.message=="成功")
					{
//ajax					
					$.ajax({
							type : "post",
							url : "fresh_user.do",
							dataType : "json",
							data :"obusername="+'${user.obusername}',
							//$('#userForm').serialize()
							error : function() {				
							},
							success : function(json) {
							//	console.info("xxxx");
							//console.info(json.model.cards[0].cardid);
							var data=json.model.cards;
							//console.info(data.length);
							var turn=0;
							var htmlextra="<div class='col-lg-3 col-xs-6'> <div class='small-box bg-red'><div class='inner'><h2> + </h2> <p> 账户类型：无<br>账户余额：无 </p></div><div class='icon'> <i class='ion ion-pie-graph'></i> </div><a href='#' class='small-box-footer' data-toggle='modal' data-backdrop='static'  data-target='#compose-add'> 添加新卡 <i class='fa fa-arrow-circle-right'></i> </a> </div></div>";

						 for(var i=0; i<data.length;i++) 
						 {  
						    console.info("xx");
							console.info(data[i].cardid);
							var html;
							
							
							if (turn==0)
							{turn=1;
							//console.info("x1");
							document.getElementById("showlast1").innerHTML=html+"<div class='col-lg-3 col-xs-6'> <div class='small-box bg-aqua'>  <div class='inner'> <h4>  <span id='card_num'></span></h4>    <p> 账户类型： <span id='card_type'></span><br>    账户余额： <span id='money'></span> </p>   </div>  <div class='icon'> <i class='ion ion-bag'></i> </div>  <a href='' class='small-box-footer'> 详情 <i class='fa fa-arrow-circle-right'></i> </a> </div> </div>";
							}
							else if (turn==2)
							{turn =0;
							//console.info("x2");
							document.getElementById("showlast1").innerHTML=html+"<div class='col-lg-3 col-xs-6'>  <div class='small-box bg-green'>  <div class='inner'>   <h4> <span id='card_num'></span> </h4>   <p> 账户类型： <span id='card_type'></span><br>  账户余额： <span id='money'></span> </p>   </div>  <div class='icon'> <i class='ion ion-pie-graph'></i> </div> <a href='' class='small-box-footer'> 详情 <i class='fa fa-arrow-circle-right'></i> </a> </div> </div>";
							}
							else if (turn==1)
							{
							//console.info("x3");
							turn=2;
							document.getElementById("showlast1").innerHTML=html+"<div class='col-lg-3 col-xs-6'>  <div class='small-box bg-yellow'>  <div class='inner'>   <h4> <span id='card_num'></span> </h4>   <p> 账户类型： <span id='card_type'></span><br>  账户余额： <span id='money'></span> </p>   </div>  <div class='icon'> <i class='ion ion-social-designernews'></i> </div> <a href='' class='small-box-footer'> 详情 <i class='fa fa-arrow-circle-right'></i> </a> </div> </div>";
							}
						 	document.getElementById("money").innerHTML = 10000;
						 	$("#money").attr("id","money_"+data[i].buserid);
						 	console.info ("money_"+data[i].obuserid);  	
						 	document.getElementById("card_type").innerHTML = data[i].cardtype; 
						 	$("#card_type").attr("id","card_type_"+data[i].obuserid); 
						 	document.getElementById("card_num").innerHTML = data[i].obuserid;   
						 	$("#card_num").attr("id","card_num_"+data[i].obuserid);         		     
						 }   
					     var html=document.getElementById("showlast1").innerHTML;  
					     document.getElementById("showlast1").innerHTML=html+htmlextra;
				},});
					}					
				},
				
			});
		}
	}
//-----------------------------------------------------------------	
		





</script>



<!-- /.modal --> 

<!-- jQuery 2.0.2 --> 


</body>
</html>
