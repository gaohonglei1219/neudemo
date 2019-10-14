    var payId,money,targetId,money,targetName,currencyName,flag=0;
        $(function(){
        	
        	getCurrencyList($("#currencyList1"),$("#currencyList2"));//获取币种信息
        	getPageCard($("#pageCard1"),$("#pageCard2"));//获取关联卡号
        	$('#myModal').modal({
      			
      			backdrop:'static',
      			show:false
      		});
        	
        	
        	var var1 =  $('#sameBank').validate({  
	            errorElement : 'span',  
	            errorClass : 'help-block',  
	            focusInvalid : false,  
	            rules : {  
	            	payId : {  
	                    min:0
	                },
	                target :
	                {
	                	required:true       	                	
	                },
	               targetName : {
	                	required :true
	                },
	                currencyid :{
	                	min:0
	                },
	                money:{
	                	required:true,
	                	number:true
	                }
	            },  
	            messages : {  
	            	
	            	
	            	payId : {  
	                    min:'请选择付款账号'
	                },
	                target :
	                {
	                	required:'收款账号不能为空'     	                	
	                },
	               targetName : {
	                	required :'收款人姓名不能为空'
	                },
	                currencyid :{
	                	min:'请选择币种'
	                },
	                money:{
	                	required:'金额不能为空',
	                	number:'请输入正确金额'
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
        	
        	var val2 =  $('#otherBank').validate({  
	            errorElement : 'span',  
	            errorClass : 'help-block',  
	            focusInvalid : false,  
	            rules : {  
	            	payId : {  
	                    min:0
	                },
	                target :
	                {
	                	required:true       	                	
	                },
	               targetName : {
	                	required :true
	                },
	                bankName:{
	                	required:true
	                },
	                currencyid :{
	                	min:0
	                },
	                money:{
	                	required:true,
	                	number:true
	                }
	            },  
	            messages : {  
	            	
	            	
	            	payId : {  
	                    min:'请选择付款账号'
	                },
	                bankName:{
	                	required:"开户行不能为空"
	                },
	                target :
	                {
	                	required:'收款账号不能为空'     	                	
	                },
	               targetName : {
	                	required :'收款人姓名不能为空'
	                },
	                currencyid :{
	                	min:'请选择币种'
	                },
	                money:{
	                	required:'金额不能为空',
	                	number:'请输入正确金额'
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
        	
        	$("#sameBankBtn").click(function(){
        		
        		var result = var1.form();
        		flag =0;
        		if(result)
        		{
        			money = $("#sameBank input[name='money']").val();
        			targetName = $("#sameBank input[name='targetName']").val();
        			targetId= $("#sameBank input[name='target']").val();
        			payId = $("#sameBank select[name='payId'] option:selected").text();
        			currencyName=$("#sameBank select[name='currencyid'] option:selected").text();
        			
        			getTransferType($("#sameBank select[name='payId']").val(),$("#sameBank input[name='target']").val(),$("#sameBank input[name='targetName']").val(),$("#sameBank input[name='money']").val());
        		}
        		
        		return false;
        			
        	});
        	
        	
				$("#otherBankBtn").click(function(){
					
					
        		flag=1;
        		var result = val2.form();
        		if(result)
        		{
        			money = $("#otherBank input[name='money']").val();
        			targetName = $("#otherBank input[name='targetName']").val();
        			targetId= $("#otherBank input[name='target']").val();
        			payId = $("#otherBank select[name='payId'] option:selected").text();
        			currencyName=$("#otherBank select[name='currencyid'] option:selected").text();
        			
        			getTransferType2($("#otherBank select[name='payId']").val(),$("#otherBank input[name='target']").val(),$("#otherBank input[name='targetName']").val(),$("#otherBank input[name='bank']").val(),$("#otherBank input[name='money']").val());
        		}
        		
        		return false;
        			
        	});
        	
        	$("#confirm").click(function(){//确认按钮
        		if(flag==0)
        		sumbitTransfer($("#sameBank").serialize());
        		else if(flag==1)
        			sumbitTransfer($("#otherBank").serialize());
        	});
        	
        })
        function getCurrencyList(selObj1,selObj2)
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
    					 selObj1.append("<option value='"+value+"'>"+text+"</option>"); 
    					 selObj2.append("<option value='"+value+"'>"+text+"</option>"); 
    				}
    				
    			},
    			error:function(){
    				
    			}
    			
    		});
    	}
        
        function getPageCard(selObj1,selObj2)
        {
        	selObj1.find("option").remove();
        	selObj2.find("option").remove();
        	
        	$.ajax({
        		url:"/OnlineBank/bank/getPageCardList",
        		dataType:"json",
        		type:"POST",
        		success:function(data){
        		  if(data.code==1)
        		  {
        			alert(data.msg);	  
        		  }
        		  for(var i=0;i<data.length;i++)
  				{
  			
  					var value = data[i].cardid;
  					var text = data[i].obuserid;
  					selObj1.append("<option value='"+value+"'>"+text+"</option>"); 
  					selObj2.append("<option value='"+value+"'>"+text+"</option>"); 
  				}
        		  
        			
        		},
        		error:function(){
        			
        		}    		
        	});
        	
        }
        
        function getTransferType(source,target,targetName,money)
        {
        	$(".loading").show();
        	$.ajax({
        		url:"/OnlineBank/bank/getTransferType",
        		type:"POST",
        		data:{"source":source,"target":target,"money":money,"targetName":targetName},
        		dataType:"json",
        		success:function(data){
        			
        			$(".loading").hide();
        			if(data.code==1)
        			{
        				$("#msg").html(data.msg);
        			
        				$('#myModal').modal('show');
        				$("#tip").hide();
        			}
        			else if(data.code==0)
        			{
        				$("#tip").show();
        				$("#msg").html("");
        				$('#myModal').modal('show')
        				$("#tdealType").html(data.obj.dealname);
        				$("#tpayId").html(payId);
        				$("#ttargetId").html(targetId);
        				$("#ttargetName").html(targetName);
        				$("#tmoney").html(money);
        				$("#tcurrencyName").html(currencyName);
        				$("#tconsume").html(data.obj.max);
        				$("input[name='consume']").val(data.obj.max);
        				$("input[name='transerType']").val(data.obj.dealtypeid);
        			}
        			
        		},
        		error:function(){
        			
        			$("#msg").html("提交失败");
    				$('#myModal').modal('show');
    				$("#tip").hide();
        			
        		}
        	})
        	
        }
        
        function getTransferType2(source,target,targetName,otherNetwork,money)
        {
        	$(".loading").show();
        	$.ajax({
        		url:"/OnlineBank/bank/getTransferType2",
        		type:"POST",
        		data:{"source":source,"target":target,"money":money,"targetName":targetName,"otherNetwork":otherNetwork},
        		dataType:"json",
        		success:function(data){
        			
        			$(".loading").hide();
        			if(data.code==1)
        			{
        				$("#msg").html(data.msg);
        			
        				$('#myModal').modal('show');
        				$("#tip").hide();
        			}
        			else if(data.code==0)
        			{
        				$("#tip").show();
        				$("#msg").html("");
        				$('#myModal').modal('show')
        				$("#tdealType").html(data.obj.dealname);
        				$("#tpayId").html(payId);
        				$("#ttargetId").html(targetId);
        				$("#ttargetName").html(targetName);
        				$("#tmoney").html(money);
        				$("#tcurrencyName").html(currencyName);
        				$("#tconsume").html(data.obj.max);
        				$("input[name='consume']").val(data.obj.consume);
        				$("input[name='transerType']").val(data.obj.dealtypeid);
        			}
        			
        		},
        		error:function(){
        			
        			$("#msg").html("提交失败");
    				$('#myModal').modal('show');
    				$("#tip").hide();
        			
        		}
        	})
        	
        }
        
        function sumbitTransfer(obj)//提交转账汇款
        {
        	$("#load").show();
        	$.ajax({
        		url:"/OnlineBank/bank/addTransfer",
        		data:obj,
        		dataType:"JSON",
        		type:"POST",
        		success:function(data){
        			
        			$("#load").hide();
        			$("#msg").html(data.msg);
        			$('#myModal').modal('show');
    				$("#tip").hide();
        			},
        		error:function(){
        			$("#load").hide();
        			$("#msg").html("转账失败");
        			
        		}
      
        	});
        }
        
        