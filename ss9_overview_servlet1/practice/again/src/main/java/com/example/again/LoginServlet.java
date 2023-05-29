package com.example.again;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LoginServlet", value = "/LoginServlet")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String user = request.getParameter("username");
        String password = request.getParameter("password");
        String result;
        if (user.equals("okay") && password.equals("okay")) {
            result = "Welcome to my chanel";
        } else {
            result = "Fail to connect";
        }
        request.setAttribute("loginname", result);
        RequestDispatcher r = request.getRequestDispatcher("login.jsp");
        r.forward(request,response);
    }
}
