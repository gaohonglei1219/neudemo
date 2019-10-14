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
          <div class="box"> </div>
          <div> <small style="color:#666"> ©版权所有 中国建设银行版权所有&nbsp;&nbsp;京ICP备&nbsp;13030780号&nbsp;&nbsp;京公网安备&nbsp;&nbsp;110102000450&nbsp;&nbsp;中国建设银行&nbsp;&nbsp;建设现代生活&nbsp;&nbsp;总行地址：中国北京西城区金融大街25号&nbsp;&nbsp;邮编：100033 </small> </div>
        </div>
      </div>
      
      <div class="loading">
		 <div class="overlay"></div>
	     <div class="loading-img"></div>
     </div>