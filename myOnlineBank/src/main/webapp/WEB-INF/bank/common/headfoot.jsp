<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	 <style type="text/css">
		   .loading{
		 	
		 	display:none;
		   
		   }
		   .overlay {
		    z-index: 1010;
		    background: none repeat scroll 0% 0% rgba(255, 255, 255, 0.7);
		    }
			.loading-img {
		    z-index: 1020;
		    background: url('../img/ajax-loader1.gif') no-repeat scroll 50% 50% transparent;
		   }
		   
		  .overlay,.loading-img {
		    position: absolute;
		    top: 0px;
		    left: 0px;
		    width: 100%;
		    height: 160%;
		}
	</style>
	 <div class="row">
        <div class="col-lg-12">
        <!--color:info style="border-top: 2px solid #00c0ef;" -->
        <div style="border-top: 2px solid #00c0ef;" class="box box-success"> </div>
        <div style="" class="box-footer"> <small style="color:#999"> &nbsp;© 版权所有 暴走银行版权所有  京ICP备 13030780号  京公网安备  110102000450 总行地址：广东省肇庆市端州区肇庆学院中巴软件园  邮编：100033 &nbsp;联系客服： 10086 </small> </div>
      </div>
      </div>
      
      <div class="loading">
		 <div class="overlay"></div>
	     <div class="loading-img"></div>
     </div>