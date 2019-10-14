function check() {
	if ($("#login_username").val() == "") {
		$("#loginTip").text("用户名不能为空。");
		$("#loginTip").addClass("color");
		$("#login_username").focus();
		return false;
	}
	if ($("#login_password").val() == "") {
		$("#loginTip").text("密码不能为空。");
		$("#loginTip").addClass("color");
		$("#login_password").focus();
		return false;

	}
	if ($("#code").val() == "") {
		$("#loginTip").text("验证码不能为空。");
		$("#loginTip").addClass("color");
		$("#code").focus();
		return false;
	}
	var CookieCode = $.cookie("verifyCode").toLowerCase().trim();
	if ($("#code").val().toLowerCase().trim() != CookieCode) {
		$("#loginTip").text("验证码错误");
		$("#loginTip").addClass("color");
		$("#code").val("");
		$("#code").focus();
		return false;
	}
}