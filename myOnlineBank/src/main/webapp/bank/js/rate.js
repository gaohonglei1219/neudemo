function getParentDepositType(selObj)
	{
			$.ajax({
				type:"POST",
				dataType:"json",
				url:"/OnlineBank/getParentDepositType.do",
				success:function(data){
					
					for(var i=0;i<data.length;i++)
						{
							var value = data[i].deposittypeid;
							var text = data[i].depositname;
							
							 selObj.append("<option value='"+value+"'>"+text+"</option>");  
						}
					
				},
				error:function(){		
				}
				
			});	
			
	}
		
	function getCurrencyList(selObj)
	{
		$.ajax({
			type:"POST",
			url:"/OnlineBank/getCurrencyList.do",
			dataType:"json",
			success:function(data){
				
				for(var i=0;i<data.length;i++)
				{
			
					var value = data[i].currencyid;
					var text = data[i].currencyname;
					 selObj.append("<option value='"+value+"'>"+text+"</option>");  
				}
				
			},
			error:function(){
				
			}
			
		});
	}
	
	function getDepositTypeByParentId(pid,selObj)
	{
		selObj.find("option").remove(); 
		selObj.append("<option value='0'>--请选择--</option>"); 
		
		$.ajax({
			type:"POST",
			url:"/OnlineBank/getDepositTypeByParentId.do",
			data:{"pId":pid},
			dataType:"json",
			success:function(data){
				
				for(var i=0;i<data.length;i++)
				{
			
					var value = data[i].deposittypeid;
					var text = data[i].dateName;
					selObj.append("<option value='"+value+"'>"+text+"</option>");  
				}
				
			},
			error:function(){}
			
			
		});
	}
	
	   function getParentDepositCurrencyTypeByCurrencyId(selObj,currencyId)
	   {
		    selObj.find("option").remove();
		   	selObj.append("<option value='-1'>请选择</option>");
		   	
		   $.ajax({
			   
			   url:"/OnlineBank/getParentDepositCurrencyTypeByCurrencyId.do",
			   type:"POST",
			   data:{"currencyId":currencyId},
			   dataType:"JSON",
			   success:function(data){
				   
				   for(var i=0;i<data.length;i++)
					{
				
						var value = data[i].parentId;
						var text = data[i].depositName;
						var tmp = data[i].rate;
						var depositId = data[i].depositId;
						var minmoney = data[i].minmoney;
						 selObj.append("<option minmoney='"+minmoney+"' depositId='"+depositId+"' rate='"+tmp+"' value='"+value+"'>"+text+"</option>");  
					}
			   },
			   error:function(){
			   }   
		   });
	   }
	   
	   function getDepositCurrencyTypeByParentId(selObj,pId)
	   {
	 	   selObj.find("option").remove();
	 	   	selObj.append("<option value='-1' rate=''>请选择</option>");
	 	  
	 	  $.ajax({
	 		  url:"/OnlineBank/getDepositCurrencyTypeByParentId.do",
	 		  type:"POST",
	 		  dataType:"JSON",
	 		  data:{"pId":pId},
	 		  success:function(data){
	 			  
	 			  for(var i=0;i<data.length;i++)
	 			{
	 				  var value = data[i].cdtpyeid;
	 				  var text = data[i].dataName;
	 				  var rate = data[i].rate;
	 				  var minmoney = data[i].minmoney;
	 				 var datenum = data[i].datenum;
	 				  console.info(rate+" "+minmoney);
	 				 selObj.append("<option minmoney='"+minmoney+"' datenum='"+datenum+"'   rate='"+rate+"' value='"+value+"'>"+text+"</option>"); 
	 			}
	 			  
	 			  
	 		  },
	 		  error:function(){
	 			  
	 		  }
	 		  
	 		  
	 	  });
	   }
		