 

  $.validator.addMethod('minmoney',function(value,element,params){
        			// alert(value+"--"+params);
        		    var a = Number(value)
        		    var b = Number($("input[disabled='true'][name='minmoney']").val());
        			 return a>=b;
        			 
        			  },'金额必须高于或等于起存金额');
  //存款计算器校验
  var val =  $('#deposit').validate({  
      errorElement : 'span',  
      errorClass : 'help-block',  
      focusInvalid : false,  
      rules : { 
          depositmoney: {  
        	required:true,
           	number:true,
           	minmoney:true
          }, 
      	currency: {  
      		min:0
          }, 
          deposit_type :{
        	  min:0
          },
          minmoney : {
          	required:true
          },
           cycle : {
        	   min:0
          },
          deposit_rate:{
          	 
        	required:true
          }
          
      },  
      messages : {  
       
          depositmoney: {  
        	required:"存款金额不能为空",
           	number:"请输入正确的数字",
          }, 
      	 currency: {  
      		min:"请选择币种"
          }, 
          deposit_type :{
        	  min:"请选择存款类型"
          },
          minmoney : {
        	  required : "不能为空"
          },
           cycle : {
        	   min:"请选择存款时限"
          },
          deposit_rate:{
          	 
        	  required : "不能为空"
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