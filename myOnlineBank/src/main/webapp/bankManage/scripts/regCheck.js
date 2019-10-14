// 正则表示验证
//邮箱验证
function emailCheck(tmp)
{
	var myreg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
	
	if(!myreg.test(tmp))
	{
		 return false;
	}
	return true;
}
//数字字母验证
function numACheck(tmp)
{
	 var myreg = /^[0-9a-zA-Z]*$/g;
	 if(!myreg.test(tmp))
	{
		 return false;
	}
	return true;
	
}
//数字验证
function numCheck(tmp)
{
	var myreg = /^[0-9]*$/;
	 if(!myreg.test(tmp))
	{
		 return false;
	}
	return true;
	 
}
//有小数验证
function priceCheck(tmp)
{
	var myreg = /^([+-]?)\\d*\\.\\d+$/
	 if(!myreg.test(tmp))
	{
		 return false;
	}
	return true;
}

