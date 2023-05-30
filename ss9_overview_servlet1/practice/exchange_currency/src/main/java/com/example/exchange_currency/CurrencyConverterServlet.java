package com.example.exchange_currency;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "CurrencyConverterServlet", value = "/CurrencyConverterServlet")
public class CurrencyConverterServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        double rate = Double.parseDouble(request.getParameter("rate"));
        double usd = Double.parseDouble(request.getParameter("usd"));
        double vnd = rate * usd;
        request.setAttribute("change", vnd);
        RequestDispatcher r = request.getRequestDispatcher("display.jsp");
        r.forward(request, response);
    }
}
