<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>暴走银行 | 汇款转账</title>
<meta
	content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no'
	name='viewport'>
<link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link rel="shortcut icon" href="../images/logofa.png" />



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
                        转账汇款
                        <small></small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> 首页</a></li>
						<li><a href="#"><i class="fa fa-dashboard"></i> 转账汇款</a></li>
                        <li class="active">转账汇款</li>
                    </ol>
                </section>

                <!-- Main content -->
                <section class="content">
				
				<div class="row">
					<div class="col-lg-9 col-md-9 col-sm-9">
						
						 <div class="nav-tabs-custom">
                                <ul class="nav nav-tabs pull-right">
                                    <li ><a href="#tab_1-1" data-toggle="tab">跨行汇款</a></li>
                                    <li class="active"><a href="#tab_2-2" data-toggle="tab">行内转账</a></li>
                                    <li class="pull-left header"><i class="fa fa-th"></i> 汇款方式</li>
                                </ul>
                                <div class="tab-content">
                                    <div class="tab-pane" id="tab_1-1">
                                        <form action="#" id="otherBank" method="post">
                        <div class="modal-body">
                          
                            
                            <div class="row">
									  		<div class="col-lg-9">
												 <div class="form-group">
							 							 <div class="input-group">
                                           					<span class="input-group-addon">付款账号：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                           						 <select id="pageCard2" class="form-control" name="payId">
																	<option value="-1">加载中……</option>
                                            				</select>
														</div><!-- input-group -->
											</div> <!--  form-group -->
									  </div> <!--  col -->
									</div> <!--  row -->
									
										<input type="hidden" name="consume" />
										<input type="hidden" name="transerType" />
									
									 <div class="row">
									  		<div class="col-lg-9">
												 <div class="form-group">
							 							 <div class="input-group">
                                           					<span class="input-group-addon">收款人账号：&nbsp;&nbsp;&nbsp;&nbsp;</span>
															<input name="target" value="201124134104"  type="text" class="form-control" placeholder="请输入收款人账号">
                     	 
														</div><!-- input-group -->
												</div> <!--  form-group -->
									 		 </div> <!--  col -->
									</div> <!--  row -->
									
									
									 <div class="row">
									  		<div class="col-lg-9">
												 <div class="form-group">
							 							 <div class="input-group">
                                           					<span class="input-group-addon">收款人姓名：&nbsp;&nbsp;&nbsp;&nbsp;</span>
															<input name="targetName" value="王先生"  type="text" class="form-control" placeholder="请输入收款人姓名">
                     	 
														</div><!-- input-group -->
												</div> <!--  form-group -->
									 		 </div> <!--  col -->
									</div> <!--  row -->
									
									 <div class="row">
									  		<div class="col-lg-9">
												 <div class="form-group">
							 							 <div class="input-group">
                                           					<span class="input-group-addon">收款人开户行：</span>
															<input name="bank" value="中国建设银行广州分行"  type="text" class="form-control" placeholder="请输入收款人开户行">
                     	 
														</div><!-- input-group -->
												</div> <!--  form-group -->
									 		 </div> <!--  col -->
									</div> <!--  row -->
									
									<div class="row">
									  		<div class="col-lg-9">
												 <div class="form-group">
							 							 <div class="input-group">
                                           					<span class="input-group-addon">转账币种：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                           						 <select id="currencyList2" class="form-control" name="currencyid">
																	<option value="-1">请选择</option>
                                            				</select>
														</div><!-- input-group -->
											</div> <!--  form-group -->
									  </div> <!--  col -->
									</div> <!--  row -->
									
									
									<div class="row">
									  		<div class="col-lg-9">
												 <div class="form-group">
							 							 <div class="input-group">
                                           					<span class="input-group-addon">转账金额：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
															<input name="money" value="10000"  type="text" class="form-control" placeholder="请输入转账金额">
                     	 
														</div><!-- input-group -->
												</div> <!--  form-group -->
									 		 </div> <!--  col -->
									</div> <!--  row -->
									
									<div class="row">
									  		<div class="col-lg-9">
												 <div class="form-group">
							 							 <div class="input-group">
                                           					<span class="input-group-addon">转账留言：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
															<input name="summary" value="零花钱" type="text" class="form-control" placeholder="请输入转账留言">
                     	 
														</div><!-- input-group -->
												</div> <!--  form-group -->
									 		 </div> <!--  col -->
									</div> <!--  row -->
	                        </div>
                       <div class="modal-footer clearfix">
							<button type="submit" id="otherBankBtn" type="button" style="padding-left: 20px; padding-right: 20px;" class="btn btn-primary pull-left"  ><i class="fa fa-check"></i> 提交</button>
							<button type="reset"  style="padding-left: 30px; padding-right: 30px;" class="btn btn-danger pull-left" ><i class="fa fa-times"></i> 重置</button>
						</div>
                    </form>
                                    </div><!-- /.tab-pane -->
                                    <div class="tab-pane  active" id="tab_2-2">
                                      		 <form  id="sameBank" action="#" method="post">
                        <div class="modal-body">
                           
								   <div class="row">
									  		<div class="col-lg-9">
												 <div class="form-group">
							 							 <div class="input-group">
                                           					<span class="input-group-addon">付款账号：&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                           						 <select id="pageCard1" name="payId" class="form-control" name="certificatetype">
																	<option value="-1">加载中……</option>
                                            				</select>
														</div><!-- input-group -->
											</div> <!--  form-group -->
									  </div> <!--  col -->
									</div> <!--  row -->
									
									 <div class="row">
									  		<div class="col-lg-9">
												 <div class="form-group">
							 							 <div class="input-group">
                                           					<span class="input-group-addon">收款人账号：</span>
															<input name="target" value="1000001410141923329409"  type="text" class="form-control" placeholder="请输入收款人账号">
                     	 
														</div><!-- input-group -->
												</div> <!--  form-group -->
									 		 </div> <!--  col -->
									</div> <!--  row -->
									
									<input type="hidden" name="consume" />
									<input type="hidden" name="transerType" />
									
									 <div class="row">
									  		<div class="col-lg-9">
												 <div class="form-group">
							 							 <div class="input-group">
                                           					<span class="input-group-addon">收款人姓名：</span>
															<input name="targetName" value="Chane"  type="text" class="form-control" placeholder="请输入收款人姓名">
                     	 
														</div><!-- input-group -->
												</div> <!--  form-group -->
									 		 </div> <!--  col -->
									</div> <!--  row -->
									
									
									<div class="row">
									  		<div class="col-lg-9">
												 <div class="form-group">
							 							 <div class="input-group">
                                           					<span class="input-group-addon">转账币种：&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                           						 <select name="currencyid" id="currencyList1" class="form-control" name="">
																	<option value="-1">请选择</option>
                                            				</select>
														</div><!-- input-group -->
											</div> <!--  form-group -->
									  </div> <!--  col -->
									</div> <!--  row -->
									
									
									<div class="row">
									  		<div class="col-lg-9">
												 <div class="form-group">
							 							 <div class="input-group">
                                           					<span class="input-group-addon">转账金额：&nbsp;&nbsp;&nbsp;&nbsp;</span>
															<input name="money" value="10000"  type="text" class="form-control" placeholder="请输入转账金额">
                     	 
														</div><!-- input-group -->
												</div> <!--  form-group -->
									 		 </div> <!--  col -->
									</div> <!--  row -->
									
									
									<div class="row">
									  		<div class="col-lg-9">
												 <div class="form-group">
							 							 <div class="input-group">
                                           					<span class="input-group-addon">转账留言：&nbsp;&nbsp;&nbsp;&nbsp;</span>
															<input name="summary" value="零花钱"  type="text" class="form-control" placeholder="请输入转账留言">
                     	 
														</div><!-- input-group -->
												</div> <!--  form-group -->
									 		 </div> <!--  col -->
									</div> <!--  row -->
								
                        </div>
                       <div class="modal-footer clearfix">
							<button type="submit" id="sameBankBtn" type="button" style="padding-left: 20px; padding-right: 20px;" class="btn btn-primary pull-left"  ><i class="fa fa-check"></i> 提交</button>
							<button type="reset"  style="padding-left: 30px; padding-right: 30px;" class="btn btn-danger pull-left" ><i class="fa fa-times"></i> 重置</button>
						</div>
                    </form>
                    
                                    </div><!-- /.tab-pane -->
                                </div><!-- /.tab-content -->
                            </div><!-- nav-tabs-custom -->
						
					</div>
					
					
					
					
					<div class="col-lg-3 col-md-3 col-sm-3">
							
							 <div class="box  box-solid box-info">
                                <div class="box-header">
                                    <i class="fa fa-heart-o"></i>
                                    <h3 class="box-title">温馨提示</h3>
									<!-- tools box -->
                                    <div class="pull-right box-tools">
                                        <button class="btn btn-info btn-sm" data-widget="remove" data-toggle="tooltip" title="关闭"><i class="fa fa-times"></i></button>
                                    </div><!-- /. tools -->
                                </div>
                                <div class="box-body">
                                   
								     <ul class="todo-list">
									 	<li class="callout callout-info">
											1.请尽量使用专用电脑操作网上银行，并定期更新操作系统安全补丁和杀毒软件。
										</li>
										
										<li>
											2.请通过建行网站访问网上银行，不要通过电子邮件、不明网站等链接登录网上银行。
										</li>
										<li>
											3.请在使用网上银行完毕后，点击页面右上角的“退出系统”，以确保安全退出。
										</li>
										<li>
											4.如果您是网银盾客户，请在退出网上银行后，立即拔出您的网银盾，并妥善保管。
										</li>
									 </ul>
							
                                </div>
                             
                            </div>  <!-- end widget -->
						 <!-- quick email widget -->
							
					</div>
				
				</div>
				
				<div style="height:100px">
				</div>
					<%@ include file="../common/foot.jsp"%>
                </section><!-- /.content -->
            </aside><!-- /.right-side -->
        </div><!-- ./wrapper -->
        
 
        
 <div class="modal fade" id="myModal">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title"><i class="fa fa-share-square-o"></i>&nbsp;&nbsp;转账汇款</h4>
      </div>
      <div class="modal-body">
        <h4 id="msg" style="color:red"></h4>
        <div id="tip" class="box-body">
              <table class="table table-striped">
                <tbody>
                <tr>
                  <td>交易类型：</td>
                  <td><span id="tdealType"></span></td>
                </tr>
                 <tr>
                  <td>付款账号：</td>
                  <td><span id="tpayId"></span></td>
                </tr>
                <tr>
                  <td>收款人账号：</td>
                  <td><span id="ttargetId"></span></td>
                </tr>
                 <tr>
                  <td>收款人姓名：</td>
                  <td><span id="ttargetName"></span></td>
                </tr>
                  <tr>
                  <td>币种：</td>
                  <td><span id="tcurrencyName"></span></td>
                </tr>
                 <tr>
                  <td>金额：</td>
                  <td><span id="tmoney"></span></td>
                </tr>
                 <tr>
                  <td>手续费：</td>
                  <td><span id="tconsume"></span></td>
                </tr>
              </tbody></table>
               <div class="modal-footer clearfix">
					<button type="submit" id="confirm" type="button" style="padding-left: 20px; padding-right: 20px;" class="btn btn-primary pull-left"  ><i class="fa fa-check"></i> 确认</button>
					<button type="reset"  style="padding-left: 30px; padding-right: 30px;" class="btn btn-danger pull-left" data-dismiss="modal"><i class="fa fa-times"></i> 取消</button>
				</div>
            </div>
        
      </div>
       <div id="load" class="loading">
		 <div class="overlay"></div>
	     <div class="loading-img"></div>
     </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->


        <!-- jQuery 2.0.2 -->
        <script src="../js/jquery.min.js"></script>
        <!-- Bootstrap -->
        <script src="../js/bootstrap.min.js" type="text/javascript"></script>
        <!-- AdminLTE App -->
        <script src="../js/AdminLTE/app.js" type="text/javascript"></script>
        <!-- AdminLTE for demo purposes -->
        <script src="../js/AdminLTE/demo.js" type="text/javascript"></script>
        <script type="text/javascript" src="../js/jquery.validate.js"></script>
        <script type="text/javascript" src="../js/transfer.js"></script>
         <script type="text/javascript">
         	
         	$(function(){
         		$("#nav_transfer").addClass("active");
				$("#nav_transfer").trigger("click");
        		$("#nav_transfer_takeTransfer").addClass("active");	
         	
         	})
         	
         
         </script>
    </body>
</html>
