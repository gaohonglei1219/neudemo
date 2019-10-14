<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

 <div class="col-md-3"> 
          
          <!-- quick email widget -->
          <div class="box box-solid box-success">
            <div class="box-header"> <i class="fa  fa-thumbs-o-up"></i>
              <h3 class="box-title">理财产品推荐</h3>
            </div>
            <div class="box-body">
              <table class="table table-striped">
                <tbody><tr>
                  <th>名称</th>
                  <th>类型</th>
                  <th>预计收益</th>
                </tr>
                <tr>
                  <td><a href="#">黄金</a></td>
                  <td><div class="progress xs">
                      <div style="width: 55%" class="progress-bar progress-bar-danger"></div>
                    </div></td>
                  <td><span class="badge bg-red">55%</span></td>
                </tr>
                <tr>
                  <td>白银</td>
                  <td><div class="progress xs">
                      <div style="width: 70%" class="progress-bar progress-bar-yellow"></div>
                    </div></td>
                  <td><span class="badge bg-yellow">70%</span></td>
                </tr>
                <tr>
                  <td>外币</td>
                  <td><div class="progress xs progress-striped active">
                      <div style="width: 30%" class="progress-bar progress-bar-primary"></div>
                    </div></td>
                  <td><span class="badge bg-light-blue">30%</span></td>
                </tr>
                <tr>
                  <td>黄金</td>
                  <td><div class="progress xs progress-striped active">
                      <div style="width: 90%" class="progress-bar progress-bar-success"></div>
                    </div></td>
                  <td><span class="badge bg-green">90%</span></td>
                </tr>
                <tr>
                  <td>白银</td>
                  <td><div class="progress xs progress-striped active">
                      <div style="width: 70%" class="progress-bar progress-bar-success"></div>
                    </div></td>
                  <td><span class="badge bg-green">70%</span></td>
                </tr>
                <tr>
                  <td>外币</td>
                  <td><div class="progress xs progress-striped active">
                      <div style="width: 80%" class="progress-bar progress-bar-success"></div>
                    </div></td>
                  <td><span class="badge bg-green">80%</span></td>
                </tr>
                <tr>
                  <td>黄金</td>
                  <td><div class="progress xs progress-striped active">
                      <div style="width: 90%" class="progress-bar progress-bar-success"></div>
                    </div></td>
                  <td><span class="badge bg-green">90%</span></td>
                </tr>
                <tr>
                  <td>黄金</td>
                  <td><div class="progress xs progress-striped active">
                      <div style="width: 90%" class="progress-bar progress-bar-success"></div>
                    </div></td>
                  <td><span class="badge bg-green">90%</span></td>
                </tr>
              </tbody></table>
            </div>
          </div>
          <!-- end widget --> 
          
        </div>
  <script type="text/javascript">
var name = '${user.obusername}';
document.getElementById("user_name3").innerHTML = name;
</script>
 

</script>