package com.example.ss9_javaweb.service;

import com.example.ss9_javaweb.model.Student;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public interface IStudentService {
    List<Student> display();
    void createNewStudent(Student student);
    void deleteStudent(int id);
}
