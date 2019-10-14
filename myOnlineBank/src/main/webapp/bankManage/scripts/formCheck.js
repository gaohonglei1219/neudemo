function check() 
{
	
	if ($("#title").val() == "") {
		$("#loginTip").text("请输入新闻标题。");
		$("#loginTip").addClass("color");
		$("#title").focus();
		return false;
	}
	if ($("#textfield").val() == "") {
		$("#loginTip").text("请选择新闻图片。");
		$("#loginTip").addClass("color");
		$("#textfield").focus();
		return false;

	}
	if (CKEDITOR.instances.content.getData() == "") {
		$("#loginTip").text("请输入新闻内容。");
		$("#loginTip").addClass("color");
		$("#content").focus();
		return false;
	}
	
}	