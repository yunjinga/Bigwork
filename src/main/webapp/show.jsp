<%@ page import="java.text.SimpleDateFormat" %><%--
  Created by IntelliJ IDEA.
  User: 10706
  Date: 2022/4/17
  Time: 13:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>--%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    String path = request.getContextPath() ;
%>
<!DOCTYPE html>
<head>
    <title>首页</title>
    <link rel="stylesheet" href="css/show.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
</head>

<script type="text/javascript">
    function gotoReg(){
        location.href = "/modify.jsp"
    }
</script>

<body>
 <%
        //      这里用于显示数据
        request.getAttribute("list") ;
    %>
<div class="head">
    <i></i>
    <p class="title"> 防疫志愿者人员信息管理</p>
    <p>当前用户：${pname}</p>
    <div class="weather">
        <p id="showTime"></p>
    </div>
    <script>
        var t = null;
        t = setTimeout(time, 1000);//開始运行
        function time() {
            clearTimeout(t);//清除定时器
            dt = new Date();
            var y = dt.getFullYear();
            var mt = dt.getMonth() + 1;
            var day = dt.getDate();
            var h = dt.getHours();//获取时
            var m = dt.getMinutes();//获取分
            var s = dt.getSeconds();//获取秒
            document.getElementById("showTime").innerHTML = y + "年" + mt + "月" + day + "日" + "-" + h + ":" + m + ":" + s;
            t = setTimeout(time, 1000); //设定定时器，循环运行
        }
    </script>
</div>
<div class="row">
    <div class="nav col-xs-1 col-sm-1 col-md-1 col-lg-1">
        <div class="sidebar">
            <ul>
                <li>
                    <h4 style="text-align: center;">人员管理</h4>
                </li>
                <li class="cur">
                    <a href="/DataFFF_war_exploded/GetAllPersonServlet">首页</a>
                </li>
                <li>
                    <a href="register.jsp">人员注册</a>
                </li>
                <li>
                    <a href="search.jsp">人员查询</a>
                </li>
                <li>
                    <a href="card.jsp">志愿者打卡</a>
                </li>
                <li>
                    <a href="chat.jsp">数据一览</a>
                </li>

            </ul>
        </div>
    </div>
    <div class="content col-xs-11 col-sm-11 col-md-11 col-lg-11s">
        <!-- 上面的功能栏 -->
        <div class="funcbar">
            <form action="/DataFFF_war_exploded/SelectByConditionServlet" method="post" class="form-inline">
                <div class="form-group">
                    <label >姓名</label>
                    <input type="text" class="form-control" name = "pname" placeholder="请输入姓名">
                </div>
                <div class="form-group">
                    <label>核酸检测结果</label>
                    <input type="text" class="form-control" name="ppoliticalstatus" placeholder="请输入核酸检测结果">
                </div>
                <div class="form-group">
                    <label>身体健康状况</label>
                    <input type="text" class="form-control" name="pzhicheng" placeholder="请输入身体健康状况">
                </div>
                <div class="form-group">
                    <label>联系电话</label>
                    <input type="text" class="form-control" name="psocialwork" placeholder="请输入联系电话">
                </div>
                <button type="submit" class="btn btn-success"><i class="glyphicon glyphicon-search"></i>搜索</button>
            </form>
            <!--进行增加删除等操作  -->
            <div class="btns">
                <form class="form-inline" action="register.jsp" method="post" name="zhuce">
                    <input type="submit" class="btn btn-primary" name="xinzeng" value="新增">
                </form>
                <form class="form-inline">
                    <a class="btn btn-danger" href="javascript:void(0);" id="delSelected" >删除选中</a>
                </form>
                    <input type="submit" class="btn btn-info"  onClick="msgbox(1)"  value="导出到Excel">

                <form class="form-inline" action="ExcelUpLoadServlet" method="post" enctype="multipart/form-data">
                    <input type="submit"  class="btn btn-success btn-file2" value="上传Excel数据">
                    <div class="form-group">
                    <input type="file"  name="file"></div>

                </form>

                <script>
                    function msgbox(n){
                        document.getElementById('inputbox').style.display=n?'block':'none';     /* 点击按钮打开/关闭 对话框 */
                    }
                </script>

                <div id='inputbox' class="box">
                    <h4>请选择要导出的字段</h4>
                    <a class='x' href=''; οnclick="msgbox(0); return false;">关闭</a>
                    <form action="/DataFFF_war_exploded/ExcelDownServlet">
                        <table class = "fieldtab">
                            <tr>
                                <td><input type="checkbox" name="opt" value="pid"><label>人员编号</label></td>
                                <td><input type="checkbox" name="opt" value="pname"> <label>姓名</label></td>
                                <td><input type="checkbox"  name="opt" value="psex"> <label>年龄</label></td>
                                <td><input type="checkbox" name="opt" value="pbirth"><label>出生年月日</label></td>
                                <td><input type="checkbox" name="opt" value="pnational"> <label>性别</label></td>
                            </tr>
                            <tr>
                                <td><input type="checkbox" name="opt" value="pnativeplace"><label>所属社区</label></td>
                                <td><input type="checkbox" name="opt" value="ppoliticalstatus"> <label>核酸检测结果</label></td>
                                <td><input type="checkbox"  name="opt" value="pworkplace"> <label>民族</label></td>
                                <td><input type="checkbox" name="opt" value="pxueli"> <label>家庭住址</label></td>
                                <td><input type="checkbox" name="opt" value="pxuewei"> <label>负责事项</label></td>
                            </tr>
                            <tr>
                                <td><input type="checkbox" name="opt" value="pzhicheng"><label>身体健康状况</label></td>
                                <td><input type="checkbox" name="opt" value="pcurrentposition"><label>志愿者编号</label></td>
<%--任同职级时间--%>              <td><input type="checkbox" name="opt" value="pTenureOfTheSameRank"><label>上次参加志愿者活动</label></td>
<%--任现职级时间--%>              <td><input type="checkbox" name="opt" value="pLengthOfTenure"><label>加入志愿者时间</label></td>
                                <td><input type="checkbox" name="opt" value="psocialwork"> <label>联系电话</label></td>
                            </tr>
                            <tr>政治面貌
                                <td><input type="checkbox"  name="opt" value="pjoinworktime"> <label>第一次参加志愿者活动时间</label></td>
                                <td><input type="checkbox" name="opt" value="pjoinpartytime"><label>上次核酸检测时间</label></td>
                                <td><input type="checkbox" name="opt" value="phonor"> <label>QQ</label></td>
                                <td><input type="checkbox" name="opt" value="ptraining"><label>参与志愿工作次数</label></td>
                                <td><input type="checkbox" name="opt" value="pcanzhengyizheng"> <label>家庭住址</label></td>
                            </tr>
                            <tr>
                                <td><input type="checkbox"  name="opt" value="pcontactnum"> <label>参加防疫志愿工作次数</label></td>
                                <td><input type="checkbox" name="opt" value="pinfor"><label>备注</label></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td colspan="3" style="text-align: center"><input class="btn btn-primary field-btn" type="submit" value="确定"></td>
                                <td></td>
                            </tr>


                        </table>



                    </form>
                </div>



            </div>
        </div>

        <div class="wrap">
            <div class="table-responsive">
                <table class="table table-hover">
                    <tr>
                        <th>编号</th>
                        <th>姓名</th>
                        <th>年龄</th>
                        <th>出生年月日</th>
                        <th>性别</th>
                        <th>核酸检测结果</th>
                        <th>身体健康状况</th>
                        <th>联系方式</th>
                        <th>参加防疫志愿工作次数</th>
                        <th colspan="3">操作</th>
                    </tr>
            <c:forEach items="${personList}" var = "person">
                <tr>
                    <td>${person.pid}</td>
                    <td>${person.pname}</td>
                    <td>${person.psex}</td>

                    <td><fmt:formatDate value="${person.pbirth}" pattern="yyyy-MM-dd"/></td>
                    <td>${person.pnational}</td>
                    <td>${person.ppoliticalstatus}</td>
                    <td>${person.pzhicheng}</td>
                    <td>${person.psocialwork}</td>
                    <td>${person.pcontactnum}</td>
                    <td><a href="<%=path%>/getPersonByIdServlet?pid=${person.pid}" >详细信息</a></td>
                    <td><a href="<%=path%>/undatePersonServlet?pid=${person.pid}" class="change"><i class="glyphicon glyphicon-pencil"></i>修改</a></td>
                    <td><a href="<%=path%>/DeletePersonByIdServlet?pid=${person.pid}" class="delete" onclick="if(confirm('是否确定删除？')===false)return false"><i class="glyphicon glyphicon-trash"></i>删除</a></td>
                </tr>
            </c:forEach>
                </table>
                </form>
            </div>
        </div>
    </div>
</div>

</body>
<script src="js/show.js"></script>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>


</html>
