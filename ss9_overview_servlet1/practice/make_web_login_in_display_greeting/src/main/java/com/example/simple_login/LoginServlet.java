package com.example.simple_login;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "LoginServlet", value = "/LoginServlet")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String result;
        if (username.equals("okay") && password.equals("okay")) {
            result = "Welcome login sucess";
        } else {
            result="Fail to login";
        }
        request.setAttribute("login",result);
        RequestDispatcher r = request.getRequestDispatcher("login.jsp");
        r.forward(request,response);

//        writer.println("<html>");
//        if (username.equals("okay") && password.equals("okay")) {
//            writer.println("<h1> Welcome " + username + " to website </h1>");
//        } else {
//            writer.println("<h1> you input wrong </h1>" );
//        }
//        writer.println("</html>");
    }
}
