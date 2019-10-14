<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

 <div class="col-md-4"> 
          
          <!-- quick email widget -->
          <div class="box box-solid box-success">
            <div class="box-header"> <i class="fa  fa-thumbs-o-up"></i>
              <h3 class="box-title">理财产品推荐</h3>
            </div>
            <div class="box-body">
              <table class="table table-striped">
                <tr>
                  <th>名称</th>
                  <th>类型</th>
                  <th>预计收益</th>
                </tr>
                <tr>
                  <td><a href="#">宜信 - 宜人贷理财</a></td>
                  <td>
                                                        股票
                    </td>
                  <td><span class="badge bg-red">12.00%</span></td>
                </tr>
                <tr>
                  <td>有利网 - 有利网定存宝V</td>
                  <td>股票</td>
                  <td><span class="badge bg-yellow">12.98%</span></td>
                </tr>
                <tr>
                  <td>爱投资 - 新手小额项目</td>
                  <td>债卷</td>
                  <td><span class="badge bg-light-blue">12.98%</span></td>
                </tr>
                <tr>
                  <td>金海贷 - 企业经营贷（稳健型）</td>
                  <td>债卷</td>
                  <td><span class="badge bg-green">13.00%</span></td>
                </tr>
                <tr>
                  <td>广发基金 - 聚瑞股票基金</td>
                  <td>基金</td>
                  <td><span class="badge bg-green">15.00%</span></td>
                </tr>
                <tr>
                  <td>广发基金 - 天天红货币基金</td>
                  <td>基金</td>
                  <td><span class="badge bg-green">17.00%</span></td>
                </tr>
                <tr>
                  <td>信达新兴 - 重庆花溪半岛安置</td>
                  <td>信托</td>
                  <td><span class="badge bg-green">16.00%</span></td>
                </tr>
                <tr>
                  <td>翼龙贷 - 翼龙贷网理财产品</td>
                  <td>P2P</td>
                  <td><span class="badge bg-green">15.50%</span></td>
                </tr>
              </table>
            </div>
          </div>
          <!-- end widget --> 
          
        </div>
  <script type="text/javascript">
var name = '${user.obusername}';
document.getElementById("user_name3").innerHTML = name;
</script>
 

</script>