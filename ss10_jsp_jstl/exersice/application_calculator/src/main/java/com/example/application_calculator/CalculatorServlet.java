package com.example.application_calculator;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "CalculatorServlet", value = "/CalculatorServlet")
public class CalculatorServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        double firstOperand = Double.parseDouble(request.getParameter("FirstOperand"));
        double secondOperand = Double.parseDouble(request.getParameter("SecondOperand"));
        String operator = request.getParameter("operator");
        double result = 0;
        if (operator.equals("addition")) {
            result = firstOperand + secondOperand;
        }
        if (operator.equals("subtraction")) {
            result = firstOperand - secondOperand;
        }
        if (operator.equals("division")) {
            result = firstOperand / secondOperand;
        }
        if (operator.equals("multiplication")) {
            result = firstOperand*secondOperand;
        }
        request.setAttribute("result", result);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("display.jsp");
        requestDispatcher.forward(request, response);
    }
}