<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>暴走银行-网银注册</title>
<link href="css/smart_wizard.css" rel="stylesheet" type="text/css">
<link rel="shortcut icon" href="images/logofa.png" />
<link href="css/register.css" rel="stylesheet" type="text/css">
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-2.0.2.min.js"></script>
<script type="text/javascript" src="js/jquery.smartWizard-2.0.min.js"></script>
<style type = “text/css”>

a {font-size:16px}
a:link {color: blue; text-decoration:none;} //未访问：蓝色、无下划线
a:active:{color: red; } //激活：红色
a:visited {color:purple;text-decoration:none;} //已访问：purple、无下划线
a:hover {color: red; text-decoration:none;} //鼠标移近：红色、下划线

</style>
		<!-- jQuery Configuration -->
		<script src="js/bootstrap.min.js" type="text/javascript"></script>

		<!-- Bootstrap -->
		<script type="text/javascript">
			var _gaq = _gaq || [];
			_gaq.push([ '_setAccount', 'UA-18629864-1' ]);
			_gaq.push([ '_trackPageview' ]);

			(function() {
				var ga = document.createElement('script');
				ga.type = 'text/javascript';
				ga.async = true;
				ga.src = ('https:' == document.location.protocol ? 'https://ssl'
						: 'http://www')
						+ '.google-analytics.com/ga.js';
				var s = document.getElementsByTagName('script')[0];
				s.parentNode.insertBefore(ga, s);
			})();
		</script>

		<script type="text/javascript">
			var jk = 0;
			$(document).ready(function() {
				// Smart Wizard     	
				$('#wizard').smartWizard({
					transitionEffect : 'slideleft',
					onLeaveStep : leaveAStepCallback,
					onFinish : onFinishCallback,
					enableFinishButton : true
				});

				function leaveAStepCallback(obj) {
					var step_num = obj.attr('rel');
					return validateSteps(step_num);
				}

				function onFinishCallback() {
					if (validateAllSteps()) {
						$('form').submit();
					}
				}

			});
			function form_first() {
				var isValid = false;
				$.ajax({
					type : "post",
					url : "add_userjson_first",
					dataType : "json",
					data : $('#userForm').serialize(),
					async : false,
					error : function() {

					},
					success : function(json) {
						if (json.message == "成功") {
							isValid = true;
						} else {
							isValid = false;
						}
					},
				});
				return isValid;
			}
			function form_second() {
				var isValid = false;
				$.ajax({
					type : "post",
					url : "add_userjson_second",
					dataType : "json",
					data : $('#third').serialize(),
					async : false,
					error : function() {

					},
					success : function(json) {
						if (json.message == "成功") {
							isValid = true;
						} else {
							isValid = false;
						}
					},
				});
				return isValid;
			}

			function validateAllSteps() {
				var isStepValid = true;

				if (validateStep2() == false) {
					isStepValid = false;
					$('#wizard').smartWizard('setError', {
						stepnum : 2,
						iserror : true
					});
				} else {
					$('#wizard').smartWizard('setError', {
						stepnum : 2,
						iserror : false
					});
				}

				if (validateStep3() == false) {
					isStepValid = false;
					$('#wizard').smartWizard('setError', {
						stepnum : 3,
						iserror : true
					});
				} else {
					$('#wizard').smartWizard('setError', {
						stepnum : 3,
						iserror : false
					});
				}

				if (!isStepValid) {
					$('#wizard').smartWizard('showMessage',
							'過程中有錯誤，請改正后，按完成鍵');
				}

				return isStepValid;
			}

			//有没有验证成功
			function validateSteps(step) {
				var isStepValid = true;
				// validate step 1
				if (step == 2) {
					if (validateStep2() == false) {
						// console.info("xxxx");
						isStepValid = false;
					$('#wizard').smartWizard('setError', {
							stepnum : step,
							iserror : true
						});
					} else {
						$('#wizard').smartWizard('setError', {
							stepnum : step,
							iserror : false
						});
					

					}
				}

				// validate step3
				if (step == 3) {
					if (validateStep3() == false) {
						isStepValid = false;
						
						$('#wizard').smartWizard('setError', {
							stepnum : step,
							iserror : true
						});
					} else {
						$('#wizard').smartWizard('setError', {
							stepnum : step,
							iserror : false
						});
					}
				}

				return isStepValid;
			}
			//方法二
			function validateStep2() {
				var isValid = true;
				var username= $('#username').val();
				var certificatenum = $('#certificatenum').val();
				var cardnum = $('#cardnum').val();
				var password = $('#password').val();
				// Validate Username
				var un = $('#username').val();
				if (!un && un.length <= 0) {
					isValid = false;
                 $('#wizard').smartWizard(
								'showMessage',
								'用戶名不能为空.');
				} else {
					
				}
                if (!certificatenum && certificatenum.length <= 0) {
					isValid = false;
                 $('#wizard').smartWizard(
								'showMessage',
								'證件號碼不能为空.');
				} else {
					
				}
				if (!cardnum && cardnum.length <= 0) {
					isValid = false;
                 $('#wizard').smartWizard(
								'showMessage',
								'卡號碼不能为空.');
				} else {
					
				}
				if (!password && password.length <= 0) {
					isValid = false;
                 $('#wizard').smartWizard(
								'showMessage',
								'密碼不能为空.');
				} else {
					
				}
								
                if(isValid==true)
                {
                if (form_first() == false) {
					isValid = false;
					 $('#wizard').smartWizard(
								'showMessage',
								'信息有误.');
				}}
				
				return isValid;
			}

			//方法三
			function validateStep3() {
				var isValid = true;
				//validate email  email
				var username_register =$('#username2').val();
				var email = $('#email').val();
				var pw = $('#passwordd').val();
				var cpw = $('#repassword').val();
				var ph = $('#phonenumm').val();
				if (!username_register && username_register.length <= 0) {
					isValid = false;
					$('#wizard').smartWizard(
								'showMessage',
								'用户名不能为空.');
				} else {
					$('#msg_password').html('').hide();
				}
				if (!pw && pw.length <= 0) {
					isValid = false;
					$('#wizard').smartWizard(
								'showMessage',
								'密码不能为空.');
				} else {
					$('#msg_password').html('').hide();
				}
				if (!ph && ph.length <= 0) {
					isValid = false;
					$('#wizard').smartWizard(
								'showMessage',
								'手机不能为空.');
				} else {
					$('#msg_password').html('').hide();
				}
				if (!cpw && cpw.length <= 0) {
					isValid = false;
					$('#wizard').smartWizard(
								'showMessage',
								'重复密码不能为空.');
				} else {
					$('#msg_cpassword').html('').hide();
				}
			//	console.info(isValid);
				// validate password match
				if (pw && pw.length > 0 && cpw && cpw.length > 0) {
					if (pw != cpw) {
						isValid = false;
						$('#wizard').smartWizard(
								'showMessage',
								'两次密码不一样.');
					} else {
						$('#msg_cpassword').html('').hide();
					}
				}
				
				
			   if(email && email.length > 0){
				     if(!isValidEmailAddress(email)){
				        isValid = false;
				      $('#wizard').smartWizard(
								'showMessage',
								'邮箱错误.');           
				     }
				   
				    }
				    
				    else{
				      isValid = false;
				      $('#msg_email').html('Please enter email').show();
				  } 
				  if (isValid ==true)
				  {if (form_second() == false) {
					isValid = false;
					 $('#wizard').smartWizard(
								'showMessage',
								'失败,已经存在用户名有冲突.');
				
				}      }
				  
				return isValid;
			}

			// Email Validation
			function isValidEmailAddress(emailAddress) {
				var pattern = new RegExp(
						/^(("[\w-\s]+")|([\w-]+(?:\.[\w-]+)*)|("[\w-\s]+")([\w-]+(?:\.[\w-]+)*))(@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$)|(@\[?((25[0-5]\.|2[0-4][0-9]\.|1[0-9]{2}\.|[0-9]{1,2}\.))((25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\.){2}(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\]?$)/i);
				return pattern.test(emailAddress);
			}
		</script>
</head>
<body>

	<div id="topmenu">
		<div class="rigesterheader">
			<h1>
				暴走银行 <small>个人网上银行注册</small><span style=" padding-left:450px;"> <span style="color:blue; text-align:center;width:100px"><small> <a href="login.jsp" class="text-center">返回登陆界面</a></small></span> 
			</h1>
		</div>
	</div>

	<table align="center" border="0" cellpadding="0" cellspacing="0">
		<tr>
			<td><h3><strong>注册  分4个步骤 </strong></h3>  <!-- Tabs -->
					<div id="wizard" class="swMain">
						<ul>
							<li><a href="#step-1"> <label class="stepNumber">1</label>
									<span class="stepDesc"> 第一步 注册须知<br /> <small>register
											message</small> </span> </a>
							</li>
							<li><a href="#step-2"> <label class="stepNumber">2</label>
									<span class="stepDesc"> 第二步 身份信息<br /> <small>Profile
											Details</small> </span> </a>
							</li>

							<li><a href="#step-3"> <label class="stepNumber">3</label>
									<span class="stepDesc"> 第三步 账号信息<br /> <small>Fill
											your contact details</small> </span> </a>
							</li>
							<li><a href="#step-4"> <label class="stepNumber">4</label>
									<span class="stepDesc"> 第四步 注册成功<br /> <small>register
											success</small> </span> </a>
							</li>

						</ul>
						<div id="step-1">
							<h2 class="StepTitle">第一步 客户注册须知</h2>

							<div class="step-1-content">

								<div class="noticeinfotitle">
									<strong>暴走银行网上银行个人客户网上自助注册须知</strong>
								</div>
								<div class="noticeinfocontent">
									一、用户注册条件
									<p>
										凡拥有暴走银行电子借记卡、暴走银信用卡或暴走信用卡的客户均可通过中国银行网站自助注册成为暴走银行网上银行用户。</p>

									&nbsp 二、网上自助注册步骤
									<p>1、客户在线阅读《暴走银行网上银行个人客户服务协议》(自助注册版)并完全接受协议中的各项条款；</p>
									<p>
										2、客户根据网上银行的提示如实填写包括本人暴走银行长城电子借记卡、暴走信用卡或暴走信用卡的卡号及本人在开立上述银行卡时所使用的有效身份证件号码等信息，并设定网上银行登录用户名及密码；
									</p>
									<p>3、客户正确填写本人真实姓名、常用电话等个人资料，并设置网银预留问题及登录后的网银欢迎信息；</p>
									<p>4、客户在自助注册成功后，当日即可使用我行网上银行提供的相关服务。</p>
									<p>如客户在网上自助注册过程需要相关服务咨询，请拨打我行客户服务热线。</p>
								</div>
							</div>
						</div>
						<div id="step-2">
							<h2 class="StepTitle">第二步 核实身份信息</h2>

							<div class="step-2-content">

								<form id="userForm" class="form-horizontal" role="form">

									<div class="form-group">
										<label for="firstname" class="col-sm-2 control-label">*姓名</label>

										<div class="col-sm-4">
											<input type="text" value="Chane" name="username" id="username"
												class="form-control" placeholder="用户名/证件号码"
												class="easyui-validatebox" required="true"
												missingMessage="姓名必须填写" />


										</div>
									</div>

									<div class="form-group">
										<label for="name" class="col-sm-2 control-label">*证件类型</label>
										<div class="col-sm-4">
											<select id="certificatetype" class="form-control"
												name="certificatetype">
												<option value="身份证">身份证</option>
												<option value="军人身份证">军人身份证</option>
												<option value="护照">护照</option>
												<option value="其他证件">其他证件</option>
											</select>
										</div>
									</div>
									<div class="form-group">
										<label for="lastname" class="col-sm-2 control-label">*证件号码</label>
										<div class="col-sm-4">
											<input type="text" value="445281199207281234" class="form-control" id="certificatenum"
												name="certificatenum" placeholder="请输入正确的证件号码">
										</div>
									</div>

									<div class="form-group">
										<label for="firstname" class="col-sm-2 control-label">*银行卡号</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" id="cardnum"
												name="cardnum" placeholder="请输入银行卡号">
										</div>
									</div>
									<div class="form-group">
										<label for="lastname" class="col-sm-2 control-label">*取款密码</label>
										<div class="col-sm-4">
											<input type="password" value="123456" class="form-control" id="password"
												name="password" placeholder="请输入取款密码">
										</div>
									</div>

									<div class="form-group">
										<div class="col-sm-offset-2 col-sm-4">
											<div class="checkbox">
												<label> <input type="checkbox"> 我已阅读并接受 <a
														href="">《网银用户协议》</a>
												</label>
											</div>
										</div>
									</div>

								</form>

							</div>

						</div>
						<div id="step-3">
							<h2 class="StepTitle">第三步 设置用户名和密码</h2>

							<div class="step-3-content">

								<form class="form-horizontal" role="form" id="third">

									<div class="form-group">
										<label for="firstname" class="col-sm-2 control-label">*用户名</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" id="username2"
												name="username" placeholder="请创建网银登录的用户名">
										</div>
									</div>

									<div class="form-group">
										<label for="lastname" class="col-sm-2 control-label">*密码</label>
										<div class="col-sm-4">
											<input type="password" class="form-control" id="passwordd"
												name="password" value="123456" placeholder="请创建网银登录密码">
										</div>
									</div>
									<div class="form-group">
										<label for="lastname" class="col-sm-2 control-label">*确认密码</label>
										<div class="col-sm-4">
											<input type="password" value="123456" class="form-control" id="repassword"
												placeholder="请重复输入密码">
										</div>
									</div>

									<div class="form-group">
										<label for="firstname" class="col-sm-2 control-label">*手机号码</label>
										<div class="col-sm-4">
											<input type="text" value="13226799648" class="form-control" id="phonenumm"
												name="certificatenum" placeholder="请输入您的手机号码">
										</div>
									</div>
									<div class="form-group">
										<label for="firstname" class="col-sm-2 control-label">*邮箱</label>
										<div class="col-sm-4">
											<input type="text" value="378646744@qq.com" class="form-control" id="email"
												name="email" placeholder="请输入您的邮箱">
										</div>
									</div>

									<div class="form-group">
										<label for="firstname" class="col-sm-2 control-label">*手机验证码</label>
										<div class="col-sm-3">
											<input type="text" value="5258" class="form-control" id="phone"
												placeholder="请输入手机验证码">
										</div>

										<a href="">免费获取</a>

									</div>

								</form>

							</div>
						</div>
						<div id="step-4">
							<h2 class="StepTitle">第四步 注册成功</h2>

							<div class="step-4-content">

								<div class="alert alert-success">恭喜你，注册成功了。</div>

							</div>

						</div>
					</div>

					</div> <!-- End SmartWizard Content -->
			</td>
		</tr>
	</table>

	<center>
		<br />&nbsp;
		<script type="text/javascript">
		<!--
			google_ad_client = "pub-8226185437441708";
			/* TechDemoBottom 728x90 */
			google_ad_slot = "4801936038";
			google_ad_width = 728;
			google_ad_height = 90;
		//-->
		</script>
	
		<br />&nbsp;
	</center>

</body>
</html>
