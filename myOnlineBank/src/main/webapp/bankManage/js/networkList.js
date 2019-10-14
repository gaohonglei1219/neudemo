 var flag = false;	
$(function(){
		
		
		 getProvince($("#province"));//获取省份
		 getProvince($("#province2"));
		
		 		 
		 $("#btn").click(function(){
				
				table.fnDraw();//重新加载
			});
		 
		 $('#myModal').modal({
   			
   			backdrop:'static',
   			show:false
   			
		 });
		 
		 $('#myModal2').modal({
	   			
	   			backdrop:'static',
	   			show:false
	   			
			 });
		 
		 $('#myModal,#myModal2').on('hide.bs.modal', function () {
			  
				if(flag)
				{
					table.fnDraw();
					flag = false;
				}
				$("#msg").html("");
				$("#msg2").html("");
			});
		 
		 $("#updateBtn").click(function(){
			 
			 var result = val.form();
			 $("#msg").html("");
			 
			 if(result)
			 {
				 $(".loading").show();
				 $.ajax({
		  				url:"/OnlineBank/updateNetwork.do",
		  				data:$("#editNetwork").serialize(),
		  				type:"POST",
		  				dataType:"json",
		  				success:function(data){
		  					$(".loading").hide();
		  					$("#msg").html(data.msg);
		  					$('#myModal').modal('show')
		  					if(data.code==0)
		  					{
		  						flag =true;
		  					}
		  				},
		  				error:function(){
		  					$(".loading").hide();
		  					$("#msg").html("更新失败");
		  					$('#myModal').modal('show')
		  				}
		  			});
			 }
			
			 return false;
			 
		 });
		
		$("#province").change(function(){
			table.fnDraw();
  			var pId = $(this).children('option:selected').val(); 
  			getCity(pId,$("#city"));
		
			});
		
		$("#province2").change(function(){
			table.fnDraw();
  			var pId = $(this).children('option:selected').val(); 
  			getCity(pId,$("#city2"));
		
		});
			$("#city").change(function(){
				
				table.fnDraw();
			});
		
		 var table = $('#table_id').DataTable({
		    	
	         "bServerSide": true,
	         "sAjaxSource": "/OnlineBank/getNetwork.do",
	         "sServerMethod": "POST",
	        /* "sPaginationType" : "full_numbers",*/
	         "bFilter": false,  //是否使用内置的过滤功能
	         "bProcessing": true, //当datatable获取数据时候是否显示正在处理提示信息。
	         "bLengthChange": false, //是否允许自定义每页显示条数.
	         "iDisplayLength":5, //每页显示10条记录
	         "aoColumns": [
					{ "sTitle":"编号","sClass": "center", "mDataProp": "networkid" ,"bSearchable": false,"bSortable": false,"bVisible": false },
					{ "sTitle": "网点名称","sClass": "center", "mDataProp": "networkname","bSearchable": false,"bSortable": false },
					{ "sTitle": "网点地址","sClass": "center", "mDataProp": "address","bSearchable": false,"bSortable": false},
					{ "sTitle": "联系电话","sClass": "center", "mDataProp": "phone","bSearchable": false,"bSortable": false},
					{ "sTitle": "周边环境","sClass": "center", "mDataProp": "around","bSearchable": false,"bSortable": false},
					{ //自定义列
						"sTitle":"操作",
						"sClass": "center",
						"mDataProp": "networkid",
						"bSearchable": false,
						"bSortable": false,
						"fnRender": function (obj) {
						var value = obj.aData.networkid;
						
						return '<a  href=\"#\" onclick=\"editNetwork(' + value+ '\)">编辑</a> ' + ' <a href=\"#\" onclick=\"delNetwork('+value+')\">删除</a>';
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
			aoData.push({"name" : "provinceId","value" : $("#province").children('option:selected').val(),});
			aoData.push({"name":"cityId","value":$("#city").children('option:selected').val()});
			aoData.push({"name":"name","value":$("#name").val()});
		}

	    });
		 
		 
		 var val =  $('#editNetwork').validate({  
	            errorElement : 'span',  
	            errorClass : 'help-block',  
	            focusInvalid : false,  
	            rules : {  
	            	networkname : {  
	                    required : true
	                },'obCity.cityid' :
	                {
	                	min:"1"        	                	
	                },
	                address : {
	                	required :true
	                },
	                around :{
	                	required : true
	                },
	                phone:{
	                	required:true
	                }
	                
	                
	       
	                
	            },  
	            messages : {  
	            	networkname : {  
	                    required : "网点名称不能为空"
	                },
	                'obCity.cityid' :
	                {
	                	min:"请选择所属城市"        	                	
	                },
	                address:{
	                	required:"联系地址不能为空"
	                },
	                around:{
	                	required:"周边环境不能为空"
	                },phone:{
	                	required:"联系电话不能为空"
	                }
	                
	                
	        
	            },  
	  
	            highlight : function(element) {  
	               
	            	$(element).closest('.form-group').addClass('has-error');  
	            },  
	  
	            success : function(label) {  
	                label.closest('.form-group').removeClass('has-error');  
	                label.remove();  
	            },  
	  
	            errorPlacement : function(error, element) {  
	            
	            	
	            	element.parents('.form-group').append(error);  

	            },  
	  
	            submitHandler : function(form) {  
	                form.submit();  
	            }  
	        });  
		
		
	});
  function editNetwork(id)
  {
	 $.ajax({
		 
		 url:"/OnlineBank/getNetworkById.do",
		 type:"POST",
		 data:{"id":id},
		 dataType:"json",
		 success:function(data){
			 
			 giveVal(data);
		 },
		 error:function(){
			 
		 }
	 });
  }
  function delNetwork(id)
  {
	  $(".loading").show();
	 $.ajax({
		 url:"/OnlineBank/delNetwork.do",
		 type:"POST",
		 data:{"id":id},
		 dataType:"json",
		 success:function(data){
			 
			    $(".loading").hide();
				$("#msg2").html(data.msg);
				$('#myModal2').modal('show');
				if(data.code==0)
					{
						flag =true;
					}
				
		 },
		 error:function(){
			 
			   $(".loading").hide();
				$("#msg2").html("删除失败");
				$('#myModal2').modal('show')
		 }
	 });
  }
  
  function giveVal(data)
  {
	  $("#editNetwork input[name='networkid']").val(data.networkid);
	  $("#editNetwork input[name='networkname']").val(data.networkname);
	  $("#editNetwork input[name='phone']").val(data.phone);
	  $("#editNetwork input[name='around']").val(data.around);
	  $("#editNetwork input[name='address']").val(data.address); 
	  getSelectProvince(data.provinceId,data.cityId);
	  $('#myModal').modal('show');
	  
  }
  function getSelectProvince(pId,cityId)
  {
	  $("#province2").val(pId);	  
	  getCity(pId,$("#city2"),cityId);
	 
  }