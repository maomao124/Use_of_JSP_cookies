package mao.use_of_jsp_cookies;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "Servlet", value = "/Servlet")
public class Servlet extends HttpServlet
{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        Cookie cookie = new Cookie("123", "4546");
        cookie.setMaxAge(60 * 60);
        cookie.setSecure(true);
        response.addCookie(cookie);
        Cookie[] cookies = request.getCookies();
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter printWriter = response.getWriter();
        if (cookies != null)
        {
            for (Cookie cookie1 : cookies)
            {
                printWriter.println("参数名：" + cookie1.getName() + "   参数值：" + cookie1.getValue());
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        doGet(request, response);
    }
}
