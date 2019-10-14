function check() 
{
	
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
	var strCookie = document.cookie;  
	//alert(strCookie); 
	var arrCookie=strCookie.split("; "); 
	var userId; 
	for(var i=0;i<arrCookie.length;i++)
	{
      var arr=arrCookie[i].split("="); 
       if("verifyCode"==arr[0]){
       userId=arr[1];
       break;
       }
    
     } 
  //   alert(userId); 
    
    if ($("#code").val()!= userId) 
    {
  //  alert(userId); 
     $("#loginTip").text("验证码错误");
	
	 $("#code").val("");
	 $("#code").focus();
	return false;
	}
}	