
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>--%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%
    String path = request.getContextPath() ;
%>
<!DOCTYPE html>
<head>
    <title>首页</title>
    <link rel="stylesheet" href="css/show.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/search.css">
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
                <li>
                    <a href="/DataFFF_war_exploded/GetAllPersonServlet">首页</a>
                </li>
                <li >
                    <a href="modify.jsp">人员注册</a>
                </li>
                <li>
                    <a href="search.jsp">人员查询</a>
                </li>
                <li>
                    <a href="card.jsp">志愿者打卡</a>
                </li>
                <li>
                    <a href:="chat.jsp">数据一览</a>
                </li>
            </ul>
        </div>
    </div>

    <div class="content col-xs-11 col-sm-11 col-md-11 col-lg-11s">
        <h1>修改信息</h1>
        <form action="/DataFFF_war_exploded/DoUpdateOrAddPersonServlet" method="post" class="form-inline">
            <table>
                <tr>
                    <%--                    <td class="col1">--%>
                    <%--                        <label>人员编号:</label>--%>
                    <%--                    </td>--%>
                    <%--                    <td>--%>
                    <%--                        <input type="text" class="form-control" name = "pid" value="${person.pid}" placeholder="请输入人员编号">--%>
                    <%--                    </td>--%>
<%--                    <td class="col1">--%>
<%--                        <label>人员编号:</label>--%>
<%--                    </td>--%>
<%--                    <td>--%>
<%--                        <input type="text" class="form-control" name = "pid" value="${person.pid}" placeholder="请输入人员编号">--%>
<%--                    </td>--%>
                    <td class="col1">
                        <label>姓名:</label>
                    </td>
                    <td>
                        <input type="text" class="form-control" name = "pname" value="${person.pname}" placeholder="请输入姓名">
                    </td>

                    <td class="col1">
                        <label>年龄:</label>
                    </td>
                    <td>
                        <input type="text" class="form-control" name = "psex" value="${person.psex}" placeholder="请输入年龄">
                    </td>


                    <td class="col1">
                        <label>出生年月日：</label>
                    </td>

                    <td>
                        <input type="date" class="form-control" name = "pbirth" value="${person.pbirth}" placeholder="请选择出生年月">
                    </td>

                </tr>

                <tr>
                    <td class="col1">
                        <label>性别:</label>
                    </td>
                    <td>
                        <input type="text" class="form-control" name = "pnational" value="${person.pnational}" placeholder="请输入性别">
                    </td>

                    <td class="col1">
                        <label>所属社区:</label>
                    </td>
                    <td>
                        <input type="text" class="form-control" name = "pnativeplace" value="${person.pnativeplace}" placeholder="请输入所属社区">
                    </td>

                    <td class="col1">
                        <label>核酸检测结果:</label>
                    </td>
                    <td>
                        <input type="text" class="form-control" name = "ppoliticalstatus" value="${person.ppoliticalstatus}" placeholder="请输入核酸检测结果">
                    </td>

                </tr>
                <tr>
                    <td class="col1">
                        <label>民族:</label>
                    </td>
                    <td>
                        <input type="text" class="form-control" name = "pworkplace" value="${person.pworkplace}" placeholder="请输入民族">
                    </td>

                    <td class="col1">
                        <label>籍贯:</label>
                    </td>
                    <td>
                        <input type="text" class="form-control" name = "pxueli" value="${person.pxueli}" placeholder="请输入籍贯">
                    </td>
                    <td class="col1">
                        <label>负责事项:</label>
                    </td>
                    <td>
                        <input type="text" class="form-control" name = "pxuewei" value="${person.pxuewei}" placeholder="请输入负责事项">
                    </td>

                </tr>

                <tr>
                    <td class="col1">
                        <label>身体健康状况</label>
                    </td>
                    <td>
                        <input type="text" class="form-control" name = "pzhicheng" value="${person.pzhicheng}" placeholder="请输入身体健康状况">
                    </td>

                    <td class="col1">
                        <label>志愿者编号：</label>
                    </td>
                    <td>
                        <input type="text" class="form-control" name = "pcurrentposition" value="${person.pcurrentposition}" placeholder="请输入志愿者编号">
                    </td>

                    <td class="col1">
                        <label>上次参加志愿活动时间</label>
                    </td>
                    <td>
                        <input type="date" class="form-control" value="${person.pTenureOfTheSameRank}" name = "pTenureOfTheSameRank" placeholder="选择上次参加志愿活动时间">
                    </td>
                </tr>
                <tr>
                    <td class="col1">
                        <label>加入志愿者时间</label>
                    </td>
                    <td>
                        <input type="date" class="form-control" value="${person.pLengthOfTenure}" name = "pLengthOfTenure" placeholder="选择加入志愿者时间">
                    </td>
                    <td class="col1">
                        <label>联系电话</label>
                    </td>
                    <td>
                        <input type="text" class="form-control" value="${person.psocialwork}" name = "psocialwork" placeholder="输入联系电话">
                    </td>

                    <td class="col1">
                        <label>第一次参加志愿活动时间:</label>
                    </td>
                    <td>
                        <input type="date" class="form-control" value="${person.pjoinworktime}" name = "pjoinworktime" placeholder="选择第一次参加志愿活动时间">
                    </td>
                </tr>

                <tr>
                    <td class="col1">
                        <label>上次核酸检测时间:</label>
                    </td>
                    <td>
                        <input type="date" class="form-control" value="${person.pjoinpartytime}" name = "pjoinpartytime" placeholder="请输入上次核酸检测时间">
                    </td>

                    <td class="col1">
                        <label>QQ:</label>
                    </td>
                    <td>
                        <input type="text" class="form-control" value="${person.phonor}" name = "phonor" placeholder="请输入QQ">
                    </td>
                    <td class="col1">
                        <label>家庭住址:</label>
                    </td>
                    <td>
                        <input type="text" class="form-control" value="${person.pcanzhengyizheng}" name = "pcanzhengyizheng" placeholder="请输入家庭住址">
                    </td>
                </tr>
                <tr>

                    <td class="col1">
                        <label>参加防疫志愿工作次数:</label>
                    </td>
                    <td>
                        <input type="text" class="form-control" value="${person.pcontactnum}" name = "pcontactnum" placeholder="请输入参加防疫志愿工作次数">
                    </td>
                </tr>

                <tr>
                    <td class="col1">
                        <label>个人简介：</label>
                    </td>
                </tr>

                <tr>
                    <td colspan="4">
                        <textarea class="form-control" name="ptraining"  cols="75" rows="3">${person.ptraining}</textarea>
                    </td>
                </tr>

                <tr>
                    <td class="col1"><label>备注：</label></td>
                </tr>
                <tr>
                    <td colspan="4"><textarea class="form-control" name="pinfor" cols="75" rows="3">${person.pinfor}</textarea></td>
                </tr>
                <tr>
                    <td></td>
                    <td style="text-align: right;">
                        <input class="btn btn-primary" type="reset" value="重置">
                    </td>
                    <td>
                        <input class="btn btn-primary" type="submit" value="确定">
                    </td>
                </tr>
            </table>
        </form>

    </div>
</div>

</body>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>


</html>







<%--<td class="col1">    联系方式：</td>--%>
<%--<td><input type="text" name="pcontactnum" value="${person.pcontactnum}"></td></tr>--%>
<%--<td class="col1">   培训情况：</td>--%>
<%--<td><input type="text" name="ptraining" value="${person.ptraining}"></td></tr>--%>
<%--<tr>--%>
<%--    <td class="col1">备注 ：</td>--%>
<%--    <td><input type="text" name="pinfor" value="${person.pinfor}"></td></tr>--%>