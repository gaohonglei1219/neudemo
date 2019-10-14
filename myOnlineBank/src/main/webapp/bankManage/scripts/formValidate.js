// JavaScript Document
//优惠信息添加
function posFormCheck() {
	if ($("#posIdenty").val() == "") {
		showError();
		$("#loginTip").html("请输入POS机编号");
		$("#posIdenty").focus();
		return false;
	}
	if ($("#busId").val() == "") {
		showError();
		$("#loginTip").html("请选择商家");
		$("#busId").focus();
		return false;
	}
	if ($("#posSumlimit").val() == "") {
		showError();
		$("#loginTip").html("请输入限制金额");
		$("#posSumlimit").focus();
		return false;
	}
	if ($("#posStatus").val() == "") {
		showError();
		$("#loginTip").html("请选择POS状态");
		$("#posStatus").focus();
		return false;
	}
	return true;
}
function businessFormCheck(){
	if ($("#busIdenty").val() == "") {
		showError();
		$("#loginTip").html("请输入商家编号");
		$("#busIdenty").focus();
		return false;
	}
	if ($("#busName").val() == "") {
		showError();
		$("#loginTip").html("请输入商家名称");
		$("#busName").focus();
		return false;
	}
	if ($("#busAddress").val() == "") {
		showError();
		$("#loginTip").html("请输入商家地址");
		$("#busAddress").focus();
		return false;
	}
	if ($("#busEmail").val() == "") {
		showError();
		$("#loginTip").html("请输入商家邮箱");
		$("#busEmail").focus();
		return false;
	}
	if (!emailCheck($("#busEmail").val())) {
		showError();
		$("#loginTip").html("请输入正确邮箱");
		$("#busEmail").focus();
		return false;
	}
	return true;
}
function userFormCheck(){
	if ($("#userName").val() == "") {
		showError();
		$("#loginTip").html("请输入用户账号");
		$("#userName").focus();
		return false;
	}
	if ($("#userRealname").val() == "") {
		showError();
		$("#loginTip").html("请输入用户名");
		$("#userRealname").focus();
		return false;
	}
	if ($("#userPasswd").val() == "") {
		showError();
		$("#loginTip").html("请输入用户密码");
		$("#userPasswd").focus();
		return false;
	}
	if ($("#userSex").val() == "") {
		showError();
		$("#loginTip").html("请选择性别");
		$("#userSex").focus();
		return false;
	}
	if ($("#userEmail").val() == "") {
		showError();
		$("#loginTip").html("请输入用户邮箱");
		$("#userEmail").focus();
		return false;
	}
	if (!emailCheck($("#userEmail").val())) {
		showError();
		$("#loginTip").html("请输入正确邮箱");
		$("#userEmail").focus();
		return false;
	}
	return true;
}
function changePwCheck(){
	if ($("#oldPw").val() == "") {
		showError();
		$("#loginTip").html("请输入当前密码");
		$("#oldPw").focus();
		return false;
	}
	if ($("#newPw").val() == "") {
		showError();
		$("#loginTip").html("请输入新密码");
		$("#newPw").focus();
		return false;
	}
	if ($("#rePw").val() == "") {
		showError();
		$("#loginTip").html("请重复输入新密码");
		$("#rePw").focus();
		return false;
	}
	if ($("#rePw").val() != $("#newPw").val()) {
		showError();
		$("#loginTip").html("两次输入的密码不正确");
		$("#newPw").focus();
		return false;
	}
	return true;
}
function showError() {
	$("#formError").show();
}
function closeError() {
	$("#formError").hide();
}