 

//前台的 个人信息管理的校验
var val1 =  $('#userForm').validate({  
        	            errorElement : 'span',  
        	            errorClass : 'help-block',  
        	            focusInvalid : false,  
        	            rules : { 
        	                username: {  
        	                    required : true
        	                }, 
        	            	cardname : {  
        	                    required : true
        	                }, 
        	                certificatenum :{
        	                	required:true
        	                },
        	                cardpassword : {
        	                	required:true
        	                },
        	                 cardpassword2 : {
        	                	equalTo: "#cardpassword"
        	                },
        	                 'obCardtype.cardtypeid':{
        	                	 
        	                	 min:0	
        	                },
        	                'obNetwork.networkid':{
        	                	
        	                	min:0
        	                },
        	                phonenum:{
        	                	required:true
        	                },
        	                EMail:{
        	                	
        	                	required:true,
        	                	email:true	
        	                },
  							postcode:{
        	            
        	                	required:true
        	                }
        	                
        	            },  
        	            messages : {  
        	               username: {  
        	                    required : "姓名不能为空"
        	                }, 
        	            	cardname : {  
        	                    required : "姓名不能为空"
        	                },
        	                certificatenum : {
        	                	
        	                	 required : "证件号码不能为空"
        	                },
        	                cardpassword :{
        	                	
        	                	required:"取款密码不能为空"
        	                },
        	                cardpassword2:{
        	                	
        	            		equalTo:"密码不一致"
        	                },
        	                'obCardtype.cardtypeid':{
        	                	
        	                	min:"卡类型不能为空"
        	                } ,
        	                'obNetwork.networkid':{
        	                	
        	                	min:"请选择开户行"
        	                }, phonenum:{
        	                	required:"移动电话不能为空"
        	                },EMail:{
        	                	required:"电子邮箱不能为空",
        	                	email:"请输入正确邮箱"
        	                },
        	                postcode:{
        	                	required:"邮政编码不能为空"
        	              
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
  var val3 =  $('#userForm3').validate({  
      errorElement : 'span',  
      errorClass : 'help-block',  
      focusInvalid : false,  
      rules : { 
          password: {  
              required : true
          }, 
      	new1 : {  
              required : true
          }, 
          new2:{
          	required:true,
          	equalTo: "#new1"
          }
        
          
      },  
      messages : {  
         password: {  
              required : "不能为空"
          }, 
      	new1: {  
              required : "不能为空"
          },
          new2: {
          	
        	  equalTo:"两次密码不一致"
          		 
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
  var val3 =  $('#userForm3').validate({  
      errorElement : 'span',  
      errorClass : 'help-block',  
      focusInvalid : false,  
      rules : { 
          password: {  
              required : true
          }, 
      	new1 : {  
              required : true
          }, 
          new2:{
          	required:true
          }
        
          
      },  
      messages : {  
         password: {  
              required : "不能为空"
          }, 
      	new1: {  
              required : "不能为空"
          },
          new2: {
          	
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
  var val2 =  $('#userForm2').validate({  
      errorElement : 'span',  
      errorClass : 'help-block',  
      focusInvalid : false,  
      rules : { 
         email: {  
        	 required:true,
          	email:true	
          }, 
      	phone : {  
              required : true
          }
         
        
          
      },  
      messages : {  
         email: {  
        	required:"电子邮箱不能为空",
         	email:"请输入正确邮箱"
        	
          }, 
      	phone: {  
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
  //存款计算器校验
  var val =  $('#deposit').validate({  
      errorElement : 'span',  
      errorClass : 'help-block',  
      focusInvalid : false,  
      rules : { 
          depositmoney: {  
              required : true
          }, 
      	currency: {  
              required : true
          }, 
          deposit_type :{
          	required:true
          },
          minmoney : {
          	required:true
          },
           cycle : {
        	 required:true
          },
          deposit_rate:{
          	 
        	required:true
          }
          
      },  
      messages : {  
       
          depositmoney: {  
        	  required : "不能为空"
          }, 
      	 currency: {  
      		required : "不能为空"
          }, 
          deposit_type :{
        	  required : "不能为空"
          },
          minmoney : {
        	  required : "不能为空"
          },
           cycle : {
        	   required : "不能为空"
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
  var vala = $('#card_add').validate({  
      errorElement : 'span',  
      errorClass : 'help-block',  
      focusInvalid : false,  
      rules : { 
          cardnum: {  
              required : true
          }, 
      	cardpassword : {  
              required : true
          }, 
          cardalias :{
          	required:true
          },
          certificatetype : {
          	required:true
          },
           certificatenum : {
          	required:true
          }
          
          
      },  
      messages : {  
           cardnum: {  
              required :"卡号不能为空"
          }, 
      	cardpassword : {  
              required : "密码不能为空"
          }, 
          cardalias :{
          	required:"姓名不能为空"
          },
          certificatetype : {
          	required:"证件类型不能为空"
          },
           certificatenum : {
          	required:"证件号不能为空"
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
