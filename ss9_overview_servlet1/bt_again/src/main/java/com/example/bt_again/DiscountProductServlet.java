package com.example.bt_again;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DiscountProductServlet", value = "/DiscountProductServlet")
public class DiscountProductServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        double listPrice = Double.parseDouble(request.getParameter("listPrice"));
        double discountPercent = Double.parseDouble(request.getParameter("discountPercent"));
        double discountAmount = listPrice * discountPercent * 0.01;
        double result = listPrice - discountAmount;
        request.setAttribute("discountPrice",result);
        RequestDispatcher r = request.getRequestDispatcher("display.jsp");
        r.forward(request,response);
    }
}
