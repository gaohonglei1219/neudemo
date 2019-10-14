			 var name = '${user.obusername}'; //拿到session的用戶名
			 var c=0;
			 var table;
			 var jk=0;
			 var table_product;
			 table_product = $('#table_product').DataTable({
			    	
		         "bServerSide": true,
		         "sAjaxSource": "../list_product",
		         "sServerMethod": "POST",
		         "bFilter": false,  //是否使用内置的过滤功能
		         "bProcessing": true, //当datatable获取数据时候是否显示正在处理提示信息。
		         "bLengthChange": true, //是否允许自定义每页显示条数.
		         "iDisplayLength":10, //每页显示10条记录
		         "aoColumns": [
						{ "sTitle":"编号","sClass": "center", "mDataProp": "financingname" ,"bSearchable": false,"bSortable": false,"bVisible": false },
						{ "sTitle": "金融名称","sClass": "center", "mDataProp": "financingname","bSearchable": false,"bSortable": false },
						{ "sTitle": "类型","sClass": "center", "mDataProp": "financingtype","bSearchable": false,"bSortable": false},
						{ "sTitle": "周期","sClass": "center", "mDataProp": "daynum","bSearchable": false,"bSortable": false},
						{ "sTitle": "购买量","sClass": "center", "mDataProp": "minbuy","bSearchable": false,"bSortable": false},
						{ "sTitle": "风险","sClass": "center", "mDataProp": "risk","bSearchable": false,"bSortable": false},
						{ "sTitle": "预测","sClass": "center", "mDataProp": "expect","bSearchable": false,"bSortable": false},
						{ //自定义列
							"sTitle":"操作",
							"sClass": "center",
							"mDataProp": "financingid",
							"bSearchable": false,
							"bSortable": false,
							"fnRender": function (obj) {
						//	console.info(obj.aData.financingid);
							//'<a class="ajaxify" href=\"/admin/Article/edit?Id=' + obj.aData.financingid + '\">编辑</a> '
							// + ' <a href=\"#\" onclick=\"DeleteArticle('+obj.aData[0]+')\">删除</a>';
							return '<button onclick="editbuttion('+obj.aData.financingid+')" class="btn btn-primary btn-sm" data-toggle="modal" data-backdrop="static"   >购买</button>&nbsp;&nbsp;'
							+ ' <button onclick="delbuttion('+obj.aData.financingid+')" class="btn btn-primary btn-sm" data-toggle="modal" data-backdrop="static"  >详情</button>'
							}
						}
		                     ],
		    "oLanguage" : {
				"sLengthMenu" : "每页显示 _MENU_ 条记录",
				"sZeroRecords" : "抱歉， 没有找到",
				"sInfo" : "从 _START_ 到 _END_ /共 _TOTAL_ 条数据",
				"sInfoEmpty" : "没有数据",
				"sInfoFiltered" : "(从 _MAX_ 条数据中检索)",
				"oPaginate" : {
					"sFirst" : "首页",
					"sPrevious" : "前一页",
					"sNext" : "后一页",
					"sLast" : "尾页"
				},
				"sZeroRecords" : "没有检索到数据",
			// "sProcessing" : "<img src='./loading.gif' />"
			},
			"fnServerParams" : function(aoData) {
		//	aoData.push({"name":"search_name","value":$("#search_name").val()});
		//	aoData.push({"name":"search_type","value":$("#search_type").val()});
		//	aoData.push({"name":"search_risk","value":$("#search_risk").val()});
		//	aoData.push({"name":"search_expect","value":$("#search_expect").val()});
		//	aoData.push({"name":"search_fdate","value":$("#search_fdate").val()});	
			}

		    });
			 
			 
			 
			 function editbuttion(Integer){                              //选择购买
				 console.info(Integer);
				 console.info(Integer);
				 var ischoice=$("#cardid option:selected").val()
				 if (ischoice!=-1)
					 { 
					 $("#compose-product").modal('show');
					 $.ajax(
							 {

								 url : '../list_product_edit',
								 type : 'POST',
								 data :{productid:Integer},
								 cache : false,
								 closable : false,
								 dataType : 'json',		
								 success : function(r) {	
								 document.getElementById("edit_name").innerHTML = r.financingname;
								 document.getElementById("edit_type").innerHTML = r.financingtype;
								 document.getElementById("edit_risk").innerHTML = r.risk;
								 document.getElementById("edit_dateb").innerHTML = r.begindate;
								 document.getElementById("edit_datee").innerHTML = r.enddate;
								 $('#buy_productid').val(r.financingid);
								 $('#min_money').val(r.minbuy);
								 $('#buy_cardid').val($("#cardid option:selected").val());
								 //document.getElementById("x2").innerHTML = r.financingtype;
								 //document.getElementById("x2").innerHTML = r.financingtype;
								 console.info(r.begindate);
//								 $('#edit_type').val(r.financingtype);
//								 $('#edit_name').val(r.financingname);
//								 $('#edit_begindate').val(r.begindate);
//								 $('#edit_enddate').val(r.enddate);
//								 $('#edit_daynum').val(r.daynum);
//								 $('#edit_expect').val(r.expect);
//								 $('#edit_minbuy').val(r.minbuy);
//								 $('#edit_risk').val(r.risk);
//								 $('#edit_id').val(r.financingid);
								 }
								 }//ajax
								 );}
			 else
				 {
				 
				 document.getElementById("mySpan").innerHTML = "请选择你要付款的卡号";
					document.getElementById("myModalLabel").innerHTML = "错误操作";
					$('#myModal').modal('show');
					setTimeout("test()", 3000);
				 
				 }
			 }
			     
			     
			 
			 
			 
			     $("#btn_buy").click(
			    		
			    		 function() {
			    			 var productid = $('#buy_productid').val(); 
				    		 var money = $('#buy_money').val(); 
				    		 var result1 = val3.form();
				    		 console.info("rrr"+result1);
				    		 
				    		 if (result1)
				    			 {
				    			 $("#compose-product").modal('hide');
				    			 $(".loading").show();
				    			 $.ajax({
										type : "post",
										url : "../buy_product",									
										data :  $('#buy_product').serialize(),
										dataType : "json",
										error : function() {
										},
										success : function(json) {
											//	console.info("xxxx");
											$(".loading").hide();
											
											console.info(json.model.result.message);
											document.getElementById("mySpan").innerHTML = json.model.result.content;
											document.getElementById("myModalLabel").innerHTML = json.model.result.message;
											 var cardid = $("#cardid option:selected").val();
											 table.fnDraw();//重载
											 getCardMoneyBycardId(cardid);
											$('#myModal').modal('show');
											setTimeout("test()", 3000);

										},

									});	
				    			 return false;
				    			 }
			    			  
			    			 
			    			 
			    			 
			    		 }
			    		 
			    		 
			    		 
			    		 );
			    		 
			    		 
			    		 
			    		 
				 function delbuttion(Integer){                               //详情
				 console.info("xx"+Integer);
				 $("#compose-product_detail").modal('show');		 //modal 弹出	
//				 document.getElementById('change_change').style.display = "none";
//				 document.getElementById('change_detail').style.display = "";
				 }
//				 $.ajax(
//				 {
//
//				 url : '../list_product_edit.do?id='+Integer+'',
//				 type : 'POST',
//				 cache : false,
//				 closable : false,
//				 dataType : 'json',		
//				 success : function(r) {	
//				 $('#edit_id2').val(r.financingid);
//				 document.getElementById("edit_name1").innerHTML = r.financingname;
//				 document.getElementById("edit_type1").innerHTML = r.financingtype;
//				 document.getElementById("edit_begindate1").innerHTML = r.begindate;
//				 document.getElementById("edit_daynum1").innerHTML = r.daynum;
//				 document.getElementById("edit_expect1").innerHTML = r.expect;
//				 document.getElementById("edit_minbuy1").innerHTML = r.minbuy;
//				 document.getElementById("edit_risk1").innerHTML = r.risk;
//				 document.getElementById("edit_enddate1").innerHTML = r.enddate;
//				 document.getElementById("edit_id1").innerHTML = r.financingid;
//
//
//				  }
//				 }//ajax
//				 );}
			 
		//	 <thead>
		//		<th><input type="checkbox"></th>
		//		<th>产品名称</th>
		//		<th>产品类型</th>				
		//		<th>闭封期</th>												
		//		<th>预期收益率</th>
		//		<th>首次购买起点</th>
		//		<th>起息日 | 到期日</th>
		//		<th>操作</th>
		//	<thead> 
		
			  table = $('#table_id').DataTable({
			    	
		         "bServerSide": true,
		         "sAjaxSource": "/OnlineBank/bank/getDealProduct",
		         "sServerMethod": "POST",
		        /* "sPaginationType" : "full_numbers",*/
		         "bFilter": false,  //是否使用内置的过滤功能
		         "bProcessing": true, //当datatable获取数据时候是否显示正在处理提示信息。
		         "bLengthChange": false, //是否允许自定义每页显示条数.
		         "iDisplayLength":8, //每页显示10条记录
		         "aoColumns": [
						{ "sTitle":"编号","sClass": "center", "mDataProp": "ddid" ,"bSearchable": false,"bSortable": false,"bVisible": false },
						{ "sTitle": "交易币种","sClass": "center", "mDataProp": "currencyName","bSearchable": false,"bSortable": false },
						{ "sTitle": "交易卡号","sClass": "center", "mDataProp": "cardId","bSearchable": false,"bSortable": false },
						{ "sTitle": "交易概要","sClass": "center", "mDataProp": "summary","bSearchable": false,"bSortable": false},
						{ "sTitle": "交易金额","sClass": "center", "mDataProp": "money","bSearchable": false,"bSortable": false},
						{ "sTitle": "交易时间","sClass": "center", "mDataProp": "dealtime","bSearchable": false,"bSortable": false}
						
		                     ],
		        "oLanguage" : {
				"sLengthMenu" : "每页显示 _MENU_ 条记录",
				"sZeroRecords" : "抱歉， 没有找到",
				"sInfo" : "从 _START_ 到 _END_ /共 _TOTAL_ 条数据",
				"sInfoEmpty" : "没有数据",
				"sInfoFiltered" : "(从 _MAX_ 条数据中检索)",
				"oPaginate" : {
					"sFirst" : "首页",
					"sPrevious" : "前一页",
					"sNext" : "后一页",
					"sLast" : "尾页"
				},
				"sZeroRecords" : "没有检索到数据",
			// "sProcessing" : "<img src='./loading.gif' />"
			},
			"fnServerParams" : function(aoData) {
				aoData.push({"name":"cardId","value":$("#cardid option:selected").val()});
		//		aoData.push({"name":"date","value":$("#date").val()});
			}

		}
	);
		
		 
	
		function showdeal()
		{		
		document.getElementById("div1").style.display="";
		table.fnDraw();//重载
		}
		function hidedeal()
		{		
		document.getElementById("div1").style.display="none";
		}
		 $("#search").click(function(){	
			 if (c==0)
				 {showdeal();
				 c=1;
				 }
			 else
				 {
				 hidedeal();
				 c=0;
				 }
				 
			 		
		 });
		
		function getcard()                       //拿到卡ID
		{
		  $.ajax({
				type : "post",
				url : "../fresh_user.do",
		        dataType : "json",
		        data :"obusername="+'${user.obusername}',                                              
				error : function() {
				},
				success : function(json) {
				var data=json.model.cards;
				var selObj=$("#cardid");
				for(var i=0;i<data.length;i++)
				{
				var value = data[i].cardid;
				var text = data[i].cardtype;
				var vardhao=data[i].obuserid;
									
				selObj.append("<option value='"+value+"' >"+vardhao+"     "+text+"</option>");  //插入select
				}
				$(".loading").hide();                     
		       },
		       });
		}
		$(document).ready(function () {                     
				getcard();
			
		});
		$("#cardid").change(function(){                //select 了一个项目，然后触发
			
			 var cardid = $("#cardid option:selected").val();
			 table.fnDraw();//重载
			 getCardMoneyBycardId(cardid);
			
		});
		
		function getCardMoneyBycardId(cardid)             //得到卡里的钱
		{
		$.ajax({
			type:"POST",
			url:"/OnlineBank/bank/get_card_money",
			data:{"cardid":cardid},
			dataType:"json",
			success:function(json){
			var data=json.obj;
			var html="";
			var justice=0;
			document.getElementById("remain_money").innerHTML=null;
			for (var j=0;j<data.length;j++)
			{
			document.getElementById("remain_money").innerHTML =html+ "<span id='currency1' style='font-size:20px;  '></span><span id='money1' style='font-family:楷书; color:blue; '></span> 元 |";
			$("#currency1").html(data[j].currencyName);
			$("#money1").html(data[j].remain);
			$("#currency1").attr("id","currency_"+j); 
			$("#money1").attr("id","money_"+j); 
			html=document.getElementById("remain_money").innerHTML;
			console.info(data[j].currencyName);
			if (data[j].currencyName=="人民币")
				{					
				justice=1;
				$("#most_money").val(data[j].remain);
				}
			}
			if (justice==0)
				{
				$("#most_money").val(0);
				}
			if (data.length==0)
				{
				
				document.getElementById("remain_money").innerHTML ="<span id='currency1'>账号没有余额</span>|";
				}
			},//success
			
			error:function(){}
			
			
		});
		}
		function test()
	    {
	        $('#myModal').modal('hide');
	    }    
		//-----------------验证---------------------------------------
		
		
		
		
		  $.validator.addMethod('lessmoney',function(value,element,params){
 			// alert(value+"--"+params);
 		    var a = Number(value)//输入的钱
 		    var b = Number($("input[name='most_money']").val());
 			 return a<=b;
 			 
 			  },'卡内人民币金额不足');
		  $.validator.addMethod('minbuy',function(value,element,params){
	 			// alert(value+"--"+params);
	 		    var a = Number(value)
	 		    var b = Number($("input[name='min_money']").val());
	 			 return a>=b;
	 			 
	 			  },'不能低于最低购买量');
               //存款计算器校验
	var val3 =  $('#buy_product').validate({  
				errorElement : 'span',  
				errorClass : 'help-block',  
				focusInvalid : false,  
				rules : { 
					buy_money: {  
				 	    required:true,
				    	number:true,
				    	lessmoney:true,
				    	minbuy:true
				    	
				   }
				   
				},  
				messages : {  
				
					buy_money: 
				   {  
				 	required:"购买金额不能为空",
				    number:"请输入正确的数字",
				   }
				
				},  
				 
				
				
				highlight : function(element) {  
				  
					$(element).closest('.form-group').addClass('has-error');  
				},  
				
				
				errorPlacement : function(error, element) {  
				
					
					element.parents('.form-group').append(error);  
				
				},  
				
				submitHandler : function(form) {  
				   form.submit();  
				}  
				});  
						
					