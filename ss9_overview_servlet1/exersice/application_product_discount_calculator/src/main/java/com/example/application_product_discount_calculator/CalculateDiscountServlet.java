package com.example.application_product_discount_calculator;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "CalculateDiscountServlet", value = "/CalculateDiscountServlet")
public class CalculateDiscountServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        double listPrice = Double.parseDouble(request.getParameter("listPrice"));
        double discountPercent = Double.parseDouble(request.getParameter("discountPercent"));
        double discountAmount = listPrice * discountPercent * 0.01;
        double result = listPrice - discountAmount;
        request.setAttribute("discountPrice", result);
        RequestDispatcher r = request.getRequestDispatcher("discount.jsp");
        r.forward(request,response);
    }
}
