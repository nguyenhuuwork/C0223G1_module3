package com.example.code_again;

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
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String result;
        if (username.equals("okay") && password.equals("okay")) {
            result = "Hello admin";
        } else {
            result = "Fail to login";
        }
        request.setAttribute("login", result);
        RequestDispatcher r = request.getRequestDispatcher("login.jsp");
        r.forward(request,response);
    }
}
