package com.example.ss9_javaweb.controller;

import com.example.ss9_javaweb.model.Student;
import com.example.ss9_javaweb.service.IStudentService;
import com.example.ss9_javaweb.service.impl.StudentService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "StudentServlet", value = "/StudentServlet")
public class StudentServlet extends HttpServlet {
    private IStudentService iStudentService = new StudentService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "showFormCreate":
                showFormCreate(request, response);
                break;
            default:
                showList(request, response);
        }

    }


    private void showList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Student> list = iStudentService.display();
        request.setAttribute("list", list);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("list.jsp");
        requestDispatcher.forward(request, response);
    }

    private void showFormCreate(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("create.jsp");
        requestDispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                createNewStudent(request, response);
                break;
            case "delete":
                deleteStudent(request, response);
                break;
            default:
                showList(request, response);
        }
    }


    private void deleteStudent(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("idDelete"));
        iStudentService.deleteStudent(id);
        try {
            response.sendRedirect("/StudentServlet");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void createNewStudent(HttpServletRequest request, HttpServletResponse response) {
        String name = request.getParameter("name");
        boolean gender = request.getParameter("gender").equals("nam");
        double point = Double.parseDouble(request.getParameter("point"));
        int classId = Integer.parseInt(request.getParameter("classId"));
        Student student = new Student(name, gender, point, classId);
        iStudentService.createNewStudent(student);
        try {
            response.sendRedirect("/StudentServlet");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
