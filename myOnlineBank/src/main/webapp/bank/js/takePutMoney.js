	$(function(){
        		
        		$('#myModal').modal({
          			backdrop:'static',
          			show:false	
          		});
        		
        		getCurrencyList($("#currency"));
        		$("#currency").change(function(){
        			
        			 var currency = $("#currency option:selected").val();
        			 getParentDepositCurrencyTypeByCurrencyId($("#deposit_type"),currency);
        			 //getCurrencyList($("#currencyList"));
        		});
        		
        		  $("#deposit_type").change(function(){
        			   
        			   var pid = $("#deposit_type option:selected").val();
        			   var depositId =$(this).find("option:selected").attr("depositId");
        			   if(depositId==192)//存款
        				{
        				   $("#date").hide();
        				   $("#deposit_time").show();
        				   $("input[name='obDepositCurrencyType.cdtpyeid']").val($("#deposit_type option:selected").val());
        				   $("input[disabled='true'][name='deposit_rate']").val($("#deposit_type option:selected").attr("rate"));
        				   $("input[disabled='true'][name='minmoney']").val($("#deposit_type option:selected").attr("minmoney"));
        				   
        				}
        			   
        			   else
        				{$("#date").show();
        			      getDepositCurrencyTypeByParentId($("#cycle"),pid);
        				}
        		   });
        		  
        		   $("#cycle").change(function(){
        			   console.info("xx");
      //  			   console.info()
        			   $("input[name='obDepositCurrencyType.cdtpyeid']").val($("#cycle option:selected").val());
        			   $("input[disabled='true'][name='deposit_rate']").val($("#cycle option:selected").attr("rate"));
        			   $("input[disabled='true'][name='minmoney']").val($("#cycle option:selected").attr("minmoney"));
        			   
        		   });
        		   
        		   $("#btn").click(function(){
        			  
        			   var result = val.form();
        			   console.info(result);
        			  
        			   if(result)
        			   {
        				   $(".loading").show();
        				   var depositType = $("#deposit_type option:selected").attr("depositId");
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
        		   
        		
        		  
        	});
        
        	//活期存款
        	function addAccount()
        	{
        		$.ajax({
     			   
        		   url:"/OnlineBank/bank/addAccount",
     			   type:"POST",
     			   dataType:"JSON",
     			  data:{"cdtpyeid":$("input[name='obDepositCurrencyType.cdtpyeid']").val(),"cycle":$("input[name='timing']").val(),
         			   'depositmoney':$("input[name='depositmoney']").val(),"deposit_rate":$("#deposit_rate").val()},
     			   success:function(data){
     				  success(data);
      				  document.getElementById("message").innerHTML = data.model.result.message;
      				 document.getElementById("interest").innerHTML = data.model.data.interest;
      				 document.getElementById("sum").innerHTML = data.model.data.sum;
      				  show();
     			   },
     			   error:function(){
     				   error();
     			   }   
     		   });
        	}
        	//整存整取
        	function addZCZQ()
        	{
        	//	console.info($("#obDepositCurrencyType.cdtpyeid").val());
        		$.ajax({
      			   
      			   url:"/OnlineBank/bank/addZCZQ",
      			   type:"POST",
      			   dataType:"JSON",
      			   data:{"cdtpyeid":$("input[name='obDepositCurrencyType.cdtpyeid']").val(),"cycle":$("#cycle option:selected").attr("datenum"),
      			   'depositmoney':$("input[name='depositmoney']").val(),"deposit_rate":$("#deposit_rate").val()},
      			   success:function(data){
      				  success(data);
      				  document.getElementById("message").innerHTML = data.model.result.message;
      				 document.getElementById("interest").innerHTML = data.model.data.interest;
      				 document.getElementById("sum").innerHTML = data.model.data.sum;
      				  show();
      			   },
      			   error:function(){
      				   error();
      			   }   
      		   });
        		
        	}
        	//存本取息
        	function addCBQX()
        	{
        		$.ajax({
       			   
       			   url:"/OnlineBank/bank/addCBQX",
       			   type:"POST",
       			   dataType:"JSON",
       			 data:{"cdtpyeid":$("input[name='obDepositCurrencyType.cdtpyeid']").val(),"cycle":$("#cycle option:selected").attr("datenum"),
        			   'depositmoney':$("input[name='depositmoney']").val(),"deposit_rate":$("#deposit_rate").val()},
        			   success:function(data){
        				  success(data);
        				  document.getElementById("message").innerHTML = data.model.result.message;
        				 document.getElementById("interest").innerHTML = data.model.data.interest;
        				 document.getElementById("sum").innerHTML = data.model.data.sum;
        				  show();
        			   },
        			   error:function(){
        				   error();
        			   }   
       		   });
        		
        	}
        	//零存整取
        	function addLCZQ()
        	{
        		$.ajax({
        			   
        			   url:"/OnlineBank/bank/addLCZQ",
        			   type:"POST",
        			   dataType:"JSON",
        			   data:{"cdtpyeid":$("input[name='obDepositCurrencyType.cdtpyeid']").val(),"cycle":$("#cycle option:selected").attr("datenum"),
              			   'depositmoney':$("input[name='depositmoney']").val(),"deposit_rate":$("#deposit_rate").val()},
              			   success:function(data){
              				  success(data);
              				  document.getElementById("message").innerHTML = data.model.result.message;
              				 document.getElementById("interest").innerHTML = data.model.data.interest;
              				 document.getElementById("sum").innerHTML = data.model.data.sum;
              				  show();
              			   },
              			   error:function(){
              				   error();
              			   }   
        		   });
        		
        	}
        	
        	//通知存款
        	function addDay()
        	{
        		$.ajax({
     			   
     			   url:"/OnlineBank/bank/addDay",
     			   type:"POST",
     			   dataType:"JSON",
     			  data:{"cdtpyeid":$("input[name='obDepositCurrencyType.cdtpyeid']").val(),"cycle":$("#cycle option:selected").attr("datenum"),
         			   'depositmoney':$("input[name='depositmoney']").val(),"deposit_rate":$("#deposit_rate").val()},
         			   success:function(data){
         				  success(data);
         				  document.getElementById("message").innerHTML = data.model.result.message;
         				 document.getElementById("interest").innerHTML = data.model.data.interest;
         				 document.getElementById("sum").innerHTML = data.model.data.sum;
         				  show();
         			   },
         			   error:function(){
         				   error();
         			   }   
     		   });
        	}
        	//整存领取
        	function addZCLQ()
        	{
        		$.ajax({
      			   
      			   url:"/OnlineBank/bank/addZCLQ",
      			   type:"POST",
      			   dataType:"JSON",
      			 data:{"cdtpyeid":$("input[name='obDepositCurrencyType.cdtpyeid']").val(),"cycle":$("#cycle option:selected").attr("datenum"),
        			   'depositmoney':$("input[name='depositmoney']").val(),"deposit_rate":$("#deposit_rate").val()},
        			   success:function(data){
        				  success(data);
        				  document.getElementById("message").innerHTML = data.model.result.message;
        				 document.getElementById("interest").innerHTML = data.model.data.interest;
        				 document.getElementById("sum").innerHTML = data.model.data.sum;
        				  show();
        			   },
        			   error:function(){
        				   error();
        			   }   
      		   });
        		
        	}
        function success(data)
        {
        //	console.info("hide");
        	$(".loading").hide();
			$("#msg").html(data.msg);
			$('#myModal').modal('show');
        }
        function error()
        {
        	$(".loading").hide();
			$("#msg").html("存款失败");
			$('#myModal').modal('show');
        }