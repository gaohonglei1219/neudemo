	$(function(){
        		
        		$('#myModal').modal({
          			backdrop:'static',
          			show:false	
          		});
        		
        		getCurrencyList($("#currencyList"));
        		$("#currencyList").change(function(){
        			
        			 var currency = $("#currencyList option:selected").val();
        			 getParentDepositCurrencyTypeByCurrencyId($("#depositList"),currency);
        			 //getCurrencyList($("#currencyList"));
        		});
        		
        		  $("#depositList").change(function(){
        			   
        			   var pid = $("#depositList option:selected").val();
        			   var depositId =$(this).find("option:selected").attr("depositId");
        			   if(depositId==192)//活期存款
        				{
        				   $("#date").hide();
        				   $("input[name='obDepositCurrencyType.cdtpyeid']").val($("#depositList option:selected").val());
        				   $("input[disabled='true'][name='rate']").val($("#depositList option:selected").attr("rate"));
        				   $("input[disabled='true'][name='minmoney']").val($("#depositList option:selected").attr("minmoney"));
        				   
        				}
        			   else
        				{$("#date").show();
        			      getDepositCurrencyTypeByParentId($("#dateList"),pid);
        				}
        		   });
        		  
        		   $("#dateList").change(function(){
        			   
        			   $("input[name='obDepositCurrencyType.cdtpyeid']").val($("#dateList option:selected").val());
        			   $("input[disabled='true'][name='rate']").val($("#dateList option:selected").attr("rate"));
        			   $("input[disabled='true'][name='minmoney']").val($("#dateList option:selected").attr("minmoney"));
        			   
        		   });
        		   
        		   $("#addBtn").click(function(){
        			   
        			   var result = val.form();
        			   if(result)
        			   {
        				   var depositType = $("#depositList option:selected").attr("depositId");
        				   if(depositType==192)
        				   {
        					   addAccount();
        				   }
        				   else if(depositType==190)
        				   {
        					   addZCLQ();
        				   }
        				   else if(depositType==193)
        				   {
        					   addZCZQ(); 
        				   }
        				   else if(depositType==195)
        				   {
        					   addLCZQ();
        				   }
        				   else if(depositType==196)
        				   {
        					   alert("定活两便");
        				   }
        				   else if(depositType==197)
        				   {
        					   addCBQX();
        				   }
        				   else if(depositType==198)
        				  {
        					   addDay();
        				  }	   
        				   
        				  
        			   }
        			   
        			   return false;
        		   });
        		   
        		   $.validator.addMethod('minmoney',function(value,element,params){
        			// alert(value+"--"+params);
        		    var a = Number(value)
        		    var b = Number($("input[disabled='true'][name='minmoney']").val());
        			 return a>=b;
        			 
        			  },'金额必须高于或等于起存金额');
        		   
        		   var val =  $('#takeMoney').validate({  
         	            errorElement : 'span',  
         	            errorClass : 'help-block',  
         	            focusInvalid : false,  
         	            rules : { 
         	            	'obCard.obuserid' : {  
         	                    required : true
         	                },currencyList:{
         	                	min:0
         	                },
         	                depositList:{
         	                	min:0
         	                },
         	                dateList:{
         	                	
         	                	min:0
         	                },
         	                
         	                money:{
         	                	required:true,
         	                	number:true,
         	                	minmoney:true
         	                }
         	                
         	            },  
         	            messages : {  
         	            	'obCard.obuserid' : {  
         	                    required : "卡号不能为空"
         	                },currencyList:{
         	                	min:"请选择币种"
         	                },
         	                depositList:{
         	                	min:"请选择存款类型"
         	                },
         	                dateList:{
         	                	min:"请选择存款时限"
         	                },
         	                money :{
         	                	required:"存款金额不能为空",
         	                	number:"请输入正确的数字",
         	                	
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
        
        	//活期存款
        	function addAccount()
        	{
        		$(".loading").show();
        		$.ajax({
     			   
     			   url:"/OnlineBank/bankManage/addAccount",
     			   type:"POST",
     			   dataType:"JSON",
     			   data:{"obCard.obuserid":$("input[name='obCard.obuserid']").val(),"obDepositCurrencyType.cdtpyeid":$("input[name='obDepositCurrencyType.cdtpyeid']").val(),
     			   'remain':$("input[name='money']").val(),"obDepositCurrencyType.obCurrency.currencyid":$("#currencyList").val()},
     			   success:function(data){
     				  success(data);
     			   },
     			   error:function(){
     				   error();
     			   }   
     		   });
        	}
        	//整存整取
        	function addZCZQ()
        	{
        		$(".loading").show();
        		$.ajax({
      			   
      			   url:"/OnlineBank/bankManage/addZCZQ",
      			   type:"POST",
      			   dataType:"JSON",
      			   data:{"obCard.obuserid":$("input[name='obCard.obuserid']").val(),"obDepositCurrencyType.cdtpyeid":$("input[name='obDepositCurrencyType.cdtpyeid']").val(),
      			   'money':$("input[name='money']").val(),"obDepositCurrencyType.obCurrency.currencyid":$("#currencyList").val()},
      			   success:function(data){
      				  success(data);
      			   },
      			   error:function(){
      				   error();
      			   }   
      		   });
        		
        	}
        	//存本取息
        	function addCBQX()
        	{
        		$(".loading").show();
        		$.ajax({
       			   
       			   url:"/OnlineBank/bankManage/addCBQX",
       			   type:"POST",
       			   dataType:"JSON",
       			   data:{"obCard.obuserid":$("input[name='obCard.obuserid']").val(),"obDepositCurrencyType.cdtpyeid":$("input[name='obDepositCurrencyType.cdtpyeid']").val(),
       			   'money':$("input[name='money']").val(),"obDepositCurrencyType.obCurrency.currencyid":$("#currencyList").val()},
       			   success:function(data){
       				  success(data);
       			   },
       			   error:function(){
       				   error();
       			   }   
       		   });
        		
        	}
        	//零存整取
        	function addLCZQ()
        	{
        		$(".loading").show();
        		$.ajax({
        			   
        			   url:"/OnlineBank/bankManage/addLCZQ",
        			   type:"POST",
        			   dataType:"JSON",
        			   data:{"obCard.obuserid":$("input[name='obCard.obuserid']").val(),"obDepositCurrencyType.cdtpyeid":$("input[name='obDepositCurrencyType.cdtpyeid']").val(),
        			   'everyMonth':$("input[name='money']").val(),"obDepositCurrencyType.obCurrency.currencyid":$("#currencyList").val()},
        			   success:function(data){
        				  success(data);
        			   },
        			   error:function(){
        				   error();
        			   }   
        		   });
        		
        	}
        	
        	//通知存款
        	function addDay()
        	{
        		$(".loading").show();
        		$.ajax({
     			   
     			   url:"/OnlineBank/bankManage/addDay",
     			   type:"POST",
     			   dataType:"JSON",
     			   data:{"obCard.obuserid":$("input[name='obCard.obuserid']").val(),"obDepositCurrencyType.cdtpyeid":$("input[name='obDepositCurrencyType.cdtpyeid']").val(),
     			   'money':$("input[name='money']").val(),"obDepositCurrencyType.obCurrency.currencyid":$("#currencyList").val()},
     			   success:function(data){
     				  success(data);
     			   },
     			   error:function(){
     				   error();
     			   }   
     		   });
        	}
        	function addZCLQ()
        	{
        		$(".loading").show();
        		$.ajax({
      			   
      			   url:"/OnlineBank/bankManage/addZCLQ",
      			   type:"POST",
      			   dataType:"JSON",
      			   data:{"obCard.obuserid":$("input[name='obCard.obuserid']").val(),"obDepositCurrencyType.cdtpyeid":$("input[name='obDepositCurrencyType.cdtpyeid']").val(),
      			   'money':$("input[name='money']").val(),"obDepositCurrencyType.obCurrency.currencyid":$("#currencyList").val()},
      			   success:function(data){
      				  success(data);
      			   },
      			   error:function(){
      				   error();
      			   }   
      		   });
        		
        	}
        function success(data)
        {
        	$(".loading").hide();
			$("#msg").html(data.msg);
			$('#myModal').modal('show')
        }
        function error()
        {
        	$(".loading").hide();
			$("#msg").html("存款失败");
			$('#myModal').modal('show')
        }