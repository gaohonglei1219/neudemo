$(function(){
	
				$('#myModal').modal({
						
						backdrop:'static',
						show:false
					});
     
        		var changePass =  $('#changePass').validate({  
    	            errorElement : 'span',  
    	            errorClass : 'help-block',  
    	            focusInvalid : false,  
    	            rules : {  
    	            	cardpassword : {  
    	                    required : true
    	                },
    	                newcardpassword :{
    	                	required:true
    	                },
    	                newcardpassword2:{
    	                	
    	                	equalTo:"#newcardpassword"
    	                }
    	            },  
    	            messages : {  
    	                
    	                cardpassword:{
    	                	required:"请输入旧密码"
    	                },
    	                newcardpassword:{
    	                	required:"请输入新密码"
    	                },
    	                newcardpassword2:{
    	                	equalTo:"两次密码不一致"
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
        		
        		
        		var updateState =  $('#updateState').validate({  
    	            errorElement : 'span',  
    	            errorClass : 'help-block',  
    	            focusInvalid : false,  
    	            rules : {  
    	            	cardpassword : {  
    	                    required : true
    	                },
    	               
    	            },  
    	            messages : {  
    	                
    	                cardpassword:{
    	                	required:"请输入密码"
    	                },
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
        		
        		
        		
        		var addLink =  $('#addLink').validate({  
    	            errorElement : 'span',  
    	            errorClass : 'help-block',  
    	            focusInvalid : false,  
    	            rules : {  
    	            	cardnum : {  
    	                    required : true
    	                },
    	                cardpassword:{
    	                	required:true
    	                },
    	                certificatenum:{
    	                	required:true
    	                },cardname:{
    	                	
    	                	required:true
    	                }
    	               
    	            },  
    	            messages : {  
    	            	
    	            	cardnum : {  
    	                    required : '请输入信用卡账号'
    	                },
    	                cardpassword:{
    	                	required:"请输入密码"
    	                },
    	                certificatenum:{
    	                	required:"请输入证件号码"
    	                },cardname:{
    	                	
    	                	required:"请输入开户名"
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
        		
        		
        		
        		$("#changePassBtn").click(function(){
        			
        			var result = changePass.form();
        			if(result)
        			{
        				
        				changeCardPass();
        			}
        			
        			return false;	
        		});
        		
        		$("#updateStateBtn").click(function(){
        			
        			var result = updateState.form();
        			if(result)
        			{
        				
        				updateCardState();
        			}
        			
        			return false;
        		});
        		
        		$("#addLinkBtn").click(function(){
        			
        			var result = addLink.form();
        			if(result)
        			{
        				addCreditCardLink();
        			}
        			return false;
        		});
        		
        		$(".link").click(function(){
   					
   					$("#detail input[name='cardId']").val($(this).attr("value"));
   					$("#detail").submit();
   				});
        		
        		
        		$(".del").click(function(){
    				
					var arr = new Array() ;
					
					
				
					$("#tbody input[type='checkbox']").each(function(index, domEle){
						if($(this).prop("checked"))
						{
							arr.push($(this).attr("value"));
						}
					});
					if(arr.join()!="")
					{
						alert("cao");
						delLink(arr.join());
					}
			});
        		
      })
      function changeCardPass()
	 {
		
	
		$(".loading").show();
		$.ajax({
			url:"/OnlineBank/bank/changeCardPass",
			type:"POST",
			data: $('#changePass').serialize(),
			dataType:"JSON",
			success:function(data){
				$(".loading").hide();
				$("#msg").html(data.msg);
				$('#myModal').modal('show');
				$("#tip").hide();
			},
		error:function(){
			
			$(".loading").hide();
			$("#msg").html("更改失败");
			$('#myModal').modal('show');
			$("#tip").hide();
			
		}
		
		});
	 }

	function updateCardState()
	{
		
	
		$(".loading").show();
		$.ajax({
			url:"/OnlineBank/bank/updateState",
			type:"POST",
			data: $('#updateState').serialize(),
			dataType:"JSON",
			success:function(data){
				$(".loading").hide();
				$("#msg").html(data.msg);
				$('#myModal').modal('show');
				$("#tip").hide();
			},
		error:function(){
			
			$(".loading").hide();
			$("#msg").html("挂失失败");
			$('#myModal').modal('show');
			$("#tip").hide();
			
		}
		
		});
	}
	
	//添加信用卡关联
	function  addCreditCardLink()
	{
		
		$("#load").show();
    	$.ajax({
    		url:"/OnlineBank/bank/creditCard/addCreditCard",//加do与事物延迟关闭有关
    		data:$("#addLink").serialize(),
    		dataType:"JSON",
    		type:"POST",
    		success:function(data){
    			
    			$("#load").hide();
    			$("#msg").html(data.msg);
    			$('#myModal').modal('show');
    			if(data.code==0)
    			{
    				$("#tip").hide();
    				location.reload();
    			}
				
    			},
    		error:function(){
    			$("#load").hide();
    			$("#msg").html("添加失败");
    			
    		}
  
    	});
		
		
	}

	

		function  delLink(id)
		{
			
			$(".loading").show();
	    	$.ajax({
	    		url:"/OnlineBank/bank/delLink",//加do与事物延迟关闭有关
	    		data:{"id":id},
	    		dataType:"JSON",
	    		type:"POST",
	    		success:function(data){
	    			
	    			$("#load").hide();
	    			$("#msg").html(data.msg);
	    			$('#myModal').modal('show');
	    			if(data.code==0)
	    			{
	    				$("#tip").hide();
	    				location.reload();
	    			}
					
	    			},
	    		error:function(){
	    			$(".loading").hide();
	    			$("#msg").html("删除失败");
	    			
	    		}
	  
	    	});
		}


   		
   			