<%--
  Created by IntelliJ IDEA.
  User: fjq
  Date: 2022/4/11
  Time: 14:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录成功</title>
</head>
<body>
<h1>欢迎<% out.print(session.getAttribute("username").toString()); %>登录</h1>
<%--<h1>--%>
<%--    成功欢迎你--%>
<%--    <%--%>
<%--        Object obj = session.getAttribute("username");--%>
<%--        if(obj!=null){--%>
<%--            out.print("obj.toString");--%>
<%--        }--%>
<%--    %>--%>
<%--</h1>--%>
</body>
</html>
