<%@ page import="java.net.URLDecoder" %><%--
  Created by IntelliJ IDEA.
  Project name(项目名称)：Use_of_JSP_cookies
  Author(作者）: mao
  Author QQ：1296193245
  GitHub：https://github.com/maomao124/
  Date(创建日期)： 2021/12/28
  Time(创建时间)： 14:37
  Description(描述)： 无
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    /*
    Cookie cookie = null; //创建cookie对象
    Cookie[] cookies = null;
    // 获取 cookie 的数据
    cookies = request.getCookies();
    if (cookies != null)
    {
        out.println("<h2> 获取cookie名称与对应值</h2>");
        for (int i = 0; i < cookies.length; i++)
        {
            cookie = cookies[i];
            //删除参数名为name的cookie
            if ((cookie.getName()).compareTo("name") == 0)
            {
                cookie.setMaxAge(0);
                response.addCookie(cookie);
                out.print("删除 cookie: " + cookie.getName() + "<br/>");
            }
            out.print("参数名 : " + cookie.getName());
            out.print("<br>");
            out.print("参数值: " + URLDecoder.decode(cookie.getValue(), "utf-8") + " <br>");
            out.print("------------------------------------<br>");
        }
    }
    else
    {
        out.println("<h2>cookie为空</h2>");
    }

     */
%>
</body>
</html>
