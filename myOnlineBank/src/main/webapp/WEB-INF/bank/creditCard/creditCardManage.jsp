<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>暴走银行 | 信用卡管理</title>
<meta
	content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no'
	name='viewport'>
<link rel="shortcut icon" href="../images/logofa.png" />
<link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css" />


<!-- font Awesome -->
<link href="../css/font-awesome.min.css" rel="stylesheet"
	type="text/css" />
<!-- Ionicons -->
<link href="../css/ionicons.min.css" rel="stylesheet" type="text/css" />
<!-- daterange picker -->
<link href="../css/daterangepicker/daterangepicker-bs3.css"
	rel="stylesheet" type="text/css" />
<!-- iCheck for checkboxes and radio inputs -->
<link href="../css/iCheck/all.css" rel="stylesheet" type="text/css" />
<!-- Bootstrap Color Picker -->
<link href="../css/colorpicker/bootstrap-colorpicker.min.css"
	rel="stylesheet" />
<!-- Bootstrap time Picker -->
<link href="../css/timepicker/bootstrap-timepicker.min.css"
	rel="stylesheet" />
<!-- Theme style -->
<link href="../css/AdminLTE.css" rel="stylesheet" type="text/css" />


<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
</head>
<body class="skin-blue">
	<!-- header logo: style can be found in header.less -->
	<%@ include file="../common/head.jsp"%>
	<div class="wrapper row-offcanvas row-offcanvas-left">
		<!-- Left side column. contains the logo and sidebar -->

		<%@ include file="../common/beside.jsp"%>



            <!-- Right side column. Contains the navbar and content of the page -->
            <aside class="right-side">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                        信用卡管理
                        <small></small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> 首页</a></li>
						 <li><a href="#"><i class="fa fa-credit-card"></i> 信用卡</a></li>
                        <li class="active">信用卡管理</li>
                    </ol>
                </section>

                <!-- Main content -->
                <section class="content">
					
					<div class="row">
						
							<div class="col-lg-12 col-sm-11 col-xs-11 col-md-12">
							
								 <div class="nav-tabs-custom">
                                <ul class="nav nav-tabs pull-right">
                                    <li><a href="#tab_1-1" data-toggle="tab">卡片挂失</a></li>
									<li><a href="#tab_2-2" data-toggle="tab">卡片激活</a></li>
									<li><a href="#tab_3-3" data-toggle="tab">查询密码设置</a></li>
									 <li class="active"><a href="#tab_5-5" data-toggle="tab">关联信用卡</a></li>
                                    <li class="pull-left header"><i class="fa fa-th"></i> 操作</li>
                                </ul>
                                <div class="tab-content">
                                    <div class="tab-pane" id="tab_1-1">
                                    	<form id="updateState">
									<div class="modal-body">	
									  <div class="row">
									  		<div class="col-lg-8">
												 <div class="form-group">
							 							 <div class="input-group">
                                           					<span class="input-group-addon">挂失账号：</span>
                                           					<select class="form-control" name="cardid" style="width: 487px;">
                                            					<c:forEach var="card" items="${creditCardList}">
                                                					<option value='${card.cardid }'>${card.obuserid }</option>
                                                					</c:forEach>		
                                            				</select>
														</div><!-- input-group -->
											</div> <!--  form-group -->
									  </div> <!--  col -->
									  <input type="hidden" name="state" value="1" />
									  
									</div> <!--  row -->
									
										  <div class="row">
									  		<div class="col-lg-8">
												 <div class="form-group">
							 							 <div class="input-group">
                                           					<span class="input-group-addon">查询密码：</span>
															<input name="cardpassword" type="password" class="form-control" placeholder="请输入查询密码" style="width: 487px;">
                                           						 
														</div><!-- input-group -->
											</div> <!--  form-group -->
									  </div> <!--  col -->
									</div> <!--  row -->
									
									
									
									</div>
									
								<div class="modal-footer clearfix">
								<button type="submit" id="updateStateBtn" style="padding-left: 30px; padding-right: 30px;" class="btn btn-primary pull-left"><i class="fa fa-check"></i> 提交</button>
							</div>
						</form>

                                        
                                    </div><!-- /.tab-pane -->
                                    <div class="tab-pane" id="tab_3-3">
									<form id="changePass">
									<div class="modal-body">
										<div class="row">
									  		<div class="col-lg-8">
												 <div class="form-group">
							 							 <div class="input-group">
                                           					<span class="input-group-addon">选择账号：&nbsp &nbsp </span>
                                           						 <select class="form-control" name="cardid" id="cardid" style="width: 487px;">
	                                                				<c:forEach var="card" items="${creditCardList}">
	                                                					<option value='${card.cardid }'>${card.obuserid }</option>
	                                                					</c:forEach>
                                            				</select>
														</div><!-- input-group -->
											</div> <!--  form-group -->
									  </div> <!--  col -->
									</div> <!--  row -->
									 
									 <div class="row">
									  		<div class="col-lg-8">
												 <div class="form-group">
							 							 <div class="input-group">
                                           					<span class="input-group-addon">旧查询密码：</span>
															<input name="cardpassword" type="password" class="form-control" placeholder="请输入旧查询密码" style="width: 487px;">
                                           						 
														</div><!-- input-group -->
											</div> <!--  form-group -->
									  </div> <!--  col -->
									</div> <!--  row -->
									
									
									 <div class="row">
									  		<div class="col-lg-8">
												 <div class="form-group">
							 							 <div class="input-group">
                                           					<span class="input-group-addon">新查询密码：</span>
															<input name="newcardpassword" id="newcardpassword" type="password" class="form-control" placeholder="请输入新查询密码" style="width: 487px;">
                                           						 
														</div><!-- input-group -->
											</div> <!--  form-group -->
									  </div> <!--  col -->
									</div> <!--  row -->
									
									 <div class="row">
									  		<div class="col-lg-8">
												 <div class="form-group">
							 							 <div class="input-group">
                                           					<span class="input-group-addon">新查询密码：</span>
															<input name="newcardpassword2" type="password" class="form-control" placeholder="请确认新查询密码" style="width: 487px;">
                                           						 
														</div><!-- input-group -->
											</div> <!--  form-group -->
									  </div> <!--  col -->
									</div> <!--  row -->
								
								
									</div>
									
										<div class="modal-footer clearfix">
										<button type="submit" id="changePassBtn" style="padding-left: 30px; padding-right: 30px;" class="btn btn-primary pull-left"><i class="fa fa-check"></i> 提交</button>
									</div>
								</form>
								
                                    </div><!-- /.tab-pane -->
									<div class="tab-pane" id="tab_2-2">
										
										<div class="modal-body">
										 <div class="row">
									  		<div class="col-lg-8">
												 <div class="form-group">
							 							 <div class="input-group">
                                           					<span class="input-group-addon">卡号：&nbsp;&nbsp;&nbsp;&nbsp;</span>
															<input name="email_to" type="text" class="form-control" placeholder="请输入信用卡卡号" style="width: 487px;">
                                           						 
														</div><!-- input-group -->
											</div> <!--  form-group -->
									  </div> <!--  col -->
									</div> <!--  row -->
									
									
									 <div class="row">
									  		<div class="col-lg-8">
												 <div class="form-group">
							 							 <div class="input-group">
                                           					<span class="input-group-addon">激活码：</span>
															<input name="email_to" type="email" class="form-control" placeholder="请输入激活码" style="width: 487px;">
                                           						 
														</div><!-- input-group -->
											</div> <!--  form-group -->
									  </div> <!--  col -->
									</div> <!--  row -->
										
										
									</div>
											
									<div class="modal-footer clearfix">
										<button type="submit" style="padding-left: 30px; padding-right: 30px;" class="btn btn-primary pull-left"><i class="fa fa-check"></i> 立即激活</button>
									</div>
										
								
                                    </div><!-- /.tab-pane -->
									
									
									
									
									<div class="tab-pane active" id="tab_5-5">
									
										
										<div class="row">
					
						<div class="col-lg-11 col-sm-11 col-xs-11 col-md-10">
							
						   <div class="box box-solid">
							 <div class="modal-body">
							     
								
									<table class="table table-striped">
											<thead>
												<th></th>
												<th>账号</th>
												<th>账户别名</th>
												<th>人民币额度</th>
												<th>美元额度</th>
												<th>人民币可用额度</th>
												<th>美元可用额度</th>
												<th>操作</th>
											<thead>
											<tbody id="tbody">
											<c:forEach var="card" items="${creditCardList}">
												<tr>
												    <td><input type="checkbox" value='${card.cardid }'></td>
													<td>${card.obuserid }</td>
													<td>${card.cardalias }</td>
													<td>${card.obCreditcard.RMBQuota }</td>
													<td>${card.obCreditcard.dollorQuota}</td>
													<td>${card.obCreditcard.RMBRemain }</td>
													<td>${card.obCreditcard.dollorRemain}</td>
													<td><a class="link" href="javascript:void(0)" value='${card.cardid}'>交易明细</a></td>
												</tr>	
											</c:forEach>											
  									　　　</tbody>
										</table>
                                <div class="box-footer clearfix">
									
									  <a href="#" class="btn btn-primary" data-toggle="modal" data-backdrop="static"  data-target="#myModal">新增关联账户</a>
								      <a href="#" class="btn btn-primary del">删除关联账户</a>
                                </div>		
								
								 
						     </div> <!-- body -->
						   </div> <!-- box -->
						   
						   
					</div> <!-- col -->
						
					</div> <!-- row --> 

									
										
								
                                    </div><!-- /.tab-pane -->
									
									
                                </div><!-- /.tab-content -->
                            </div><!-- nav-tabs-custom -->
							
							</div> <!-- col -->
							
							
					
					</div> <!-- row -->
					

						<div style="height:200px"> </div>
							<%@ include file="../common/foot.jsp"%>
                </section><!-- /.content -->
            </aside><!-- /.right-side -->
        </div><!-- ./wrapper -->
		
		
<div class="modal fade" id="myModal">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title"><i class="fa fa-credit-card"></i>&nbsp;&nbsp;信用卡管理</h4>
      </div>
      <div class="modal-body">
        <h4 id="msg" style="color:red"></h4>
        <div id="tip">
        		<form id="addLink">
        							<div class="row">
									  		<div class="col-lg-10">
												 <div class="form-group">
							 							 <div class="input-group">
                                           					<span class="input-group-addon">信用卡卡号：</span>
															<input name="cardnum" type="text" class="form-control" placeholder="请输入信用卡卡号">
                                           						 
														</div><!-- input-group -->
											</div> <!--  form-group -->
									  </div> <!--  col -->
									</div> <!-- row -->
									
									<div class="row">
									  		<div class="col-lg-10">
												 <div class="form-group">
							 							 <div class="input-group">
                                           					<span class="input-group-addon">信用卡密码：</span>
															<input name="cardpassword" type="text" class="form-control" placeholder="请输入信用卡查询密码">
                                           						 
														</div><!-- input-group -->
											</div> <!--  form-group -->
									  </div> <!--  col -->
									</div> <!-- row -->
									
									
									<div class="row">
									  		<div class="col-lg-10">
												 <div class="form-group">
							 							 <div class="input-group">
                                           					<span class="input-group-addon">开户名：</span>
															<input name="cardname" type="text" class="form-control" placeholder="请输入开户名">
                                           						 
														</div><!-- input-group -->
											</div> <!--  form-group -->
									  </div> <!--  col -->
									</div> <!-- row -->
									
									
									
									
									
									<div class="row">
									  		<div class="col-lg-10">
												 <div class="form-group">
							 							 <div class="input-group">
                                           					<span class="input-group-addon">证件类型：&nbsp &nbsp </span>
                                           						 <select class="form-control" name="certificatetype" id="cardid">
	                                                				 <option value="身份证">身份证</option>
						                                                <option value="军人身份证">军人身份证</option>
						                                                <option value="护照">护照</option>               
                                            				</select>
														</div><!-- input-group -->
											</div> <!--  form-group -->
									  </div> <!--  col -->
									</div> <!--  row -->
									
									
									
									<div class="row">
									  		<div class="col-lg-10">
												 <div class="form-group">
							 							 <div class="input-group">
                                           					<span class="input-group-addon">证件号码：</span>
															<input name="certificatenum" type="text" class="form-control" placeholder="请输入证件号码">
                                           						 
														</div><!-- input-group -->
											</div> <!--  form-group -->
									  </div> <!--  col -->
									</div> <!-- row -->
									
									
									<div class="row">
									  		<div class="col-lg-10">
												 <div class="form-group">
							 							 <div class="input-group">
                                           					<span class="input-group-addon">账户别名：</span>
															<input name="cardalias" type="text" class="form-control" placeholder="请输入账户别名">
                                           						 
														</div><!-- input-group -->
											</div> <!--  form-group -->
									  </div> <!--  col -->
									</div> <!-- row -->
									
								
				<div class="modal-footer clearfix">
					<button type="submit" id="addLinkBtn" type="button" style="padding-left: 20px; padding-right: 20px;" class="btn btn-primary pull-left"  ><i class="fa fa-check"></i> 确认</button>
					<button type="reset"  style="padding-left: 30px; padding-right: 30px;" class="btn btn-danger pull-left" data-dismiss="modal"><i class="fa fa-times"></i> 取消</button>
				</div>
				
              </form>
            </div>
        
      </div>
       <div id="load" class="loading">
		 <div class="overlay"></div>
	     <div class="loading-img"></div>
     </div>
     <div class="modal-footer">
       
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
        
        
        
	
        
        <form id="detail" method="post" action="/OnlineBank/bank/creditCard/accountDeal">
			<input type="hidden" name="cardId" />
		</form>



        <!-- jQuery 2.0.2 -->
        <script src="../js/jquery.min.js"></script>
        <!-- Bootstrap -->
        <script src="../js/bootstrap.min.js" type="text/javascript"></script>
        <!-- AdminLTE App -->
        <script src="../js/AdminLTE/app.js" type="text/javascript"></script>
        <!-- AdminLTE for demo purposes -->
        <script src="../js/AdminLTE/demo.js" type="text/javascript"></script>
        <script type="text/javascript" src="../js/jquery.validate.js"></script>
         <script src="../js/creditCardManage.js" type="text/javascript"></script>
         <script type="text/javascript">
         	
         	$(function(){
         		$("#nav_creditCard").addClass("active");
				$("#nav_creditCard").trigger("click");
        		$("#nav_creditCardr").addClass("active");	
         	
         	})
         	
         
         </script>
    </body>
</html>
