//获取卡类信息
          	function getCardType(cardType)
          	{
          		
          		$.ajax({
          			url:"/OnlineBank/getCardTypeList.do",
          			type:"POST",
          			data:{"cardType":cardType},
          			dataType:"JSON",
          			success:function(data){
          				
          				for(var i=0;i<data.length;i++)
        				{
        					var value = data[i].cardtypeid;
        					var text = data[i].cardname;
        					 $("#cardTypeList").append("<option value='"+value+"'>"+text+"</option>");  
        				}
          			},
          			error:function(){}
          			
          		});
          	}
          	
          	//获取省份信息
          	function getProvince(selObj)
          	{
          		
          		$.ajax({
          			type:"GET",
          			url:"/OnlineBank/getProvince.do",
          			dataType:"json",
          			success:function(data){
          				
          				for(var i=0;i<data.length;i++)
          					{
          					    var value=data[i].provinceid;  
          					    var text=data[i].provincename;  
          					    selObj.append("<option value='"+value+"'>"+text+"</option>");  
          					}
          				console.log(selObj);
          			},
          			error:function(){}	
          		});
          	}

          	//获取城市
          	function getCity(pId,selObj,selectId)
          	{
          		 selObj.find("option").remove(); 
          		 selObj.append("<option value='0'>---请选择城市---</option>"); 
          		$.ajax({
          			type:"POST",
          			url:"/OnlineBank/getCity.do",
          			data:{"pId":pId},
          			dataType:"json",
          			success:function(data){
          				
          				for(var i=0;i<data.length;i++)
          					{
          					    var value=data[i].cityid;  
          					    var text=data[i].cityname; 
          					    var code =data[i].citycode
          					    if(selectId==value)
          					    {
          					      selObj.append("<option selected=\"true\" code='"+code+"' value='"+value+"'>"+text+"</option>");  
          					    	
          					    }
          					    else
          					    selObj.append("<option code='"+code+"' value='"+value+"'>"+text+"</option>");  
          					}
          			}
          			
          		});
          	}
          	
          	//获取网点
          	function getNetwork(cityId)
          	{
          		 var selObj = $("#network"); 
          		 selObj.find("option").remove(); 
          		 selObj.append("<option value='0'>---请选择网点---</option>"); 
          		  $.ajax({
          			type:"POST",
          			url:"/OnlineBank/getNetwork.do",
          			data:{"cityId":cityId},
          			dataType:"json",
          			success:function(data){
          				
          				for(var i=0;i<data.aaData.length;i++)
          					{
          					    var value=data.aaData[i].networkid;  
          					    var text=data.aaData[i].networkname;  
          					    selObj.append("<option value='"+value+"'>"+text+"</option>");  
          					}
          			},
          			error:function(){
          				alert("cao");
          			}
          			
          		});
          		
          	}
          	