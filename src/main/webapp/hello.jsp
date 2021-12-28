<%@ page import="java.net.URLDecoder" %>
<%@ page import="java.nio.charset.StandardCharsets" %><%--
  Created by IntelliJ IDEA.
  Project name(项目名称)：Use_of_JSP_cookies
  Author(作者）: mao
  Author QQ：1296193245
  GitHub：https://github.com/maomao124/
  Date(创建日期)： 2021/12/28
  Time(创建时间)： 14:14
  Description(描述)：
  识别用户通常有以下步骤：
服务器把 cookie 信息发送到浏览器，例如：用户 ID、用户名称等信息。
浏览器在本地存储这些信息。
浏览器再次向服务器发送请求时，它会同时将本地存储的 cookie 信息一同发送给服务器，然后服务器使用这些信息来识别用户或其它。

cookie 的作用表现在以下方面：
对特定对象的追踪，如用户的访问次数、最后访问时间等。
统计网页的浏览次数。
在 cookie 有效期内，记录用户的登录信息，简化下一次的登录过程。
实现各种个性化服务，如”最近浏览过的商品“。

方法	说明
public void setDomain(String pattern)	设置 cookie 的域名，如 biancheng.net
public String getDomain()	获取 cookie 的域名
public void setMaxAge(int expiry)	设置 cookie 有效期，单位：秒
默认仅在当前会话中存在
public int getMaxAge()	获取 cookie 有效期，单位：秒
默认为 -1，表示 cookie 保存到浏览器关闭为止
public String getName()	返回 cookie 的名称，名称创建后将不能被修改
public void setValue(String newValue)	设置 cookie 的值
public String getValue()	获取 cookie 的值
public void setPath(String uri)	设置 cookie 的路径
默认为当前页面目录以及子目录下的所有 URL
public String getPath()	获取 cookie 的路径
public void setSecure(boolean flag)	设置 cookie 是否要加密传输
public void setComment(String purpose)	设置 cookie 注释
public String getComment()	返回 cookie 注释，如果 cookie 没有注释，则返回 null

// 解决中文乱码
    String str = URLEncoder.encode(request.getParameter("name"), "utf-8");
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%=request.getParameter("name")%>
<br/>
<%=request.getParameter("no")%>
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
            out.print("参数名 : " + cookie.getName());
            out.print("<br>");
            out.print("参数值: " + URLDecoder.decode(cookie.getValue(), StandardCharsets.UTF_8) + " <br>");
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
