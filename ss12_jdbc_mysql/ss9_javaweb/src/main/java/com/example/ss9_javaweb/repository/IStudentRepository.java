package com.example.ss9_javaweb.repository;

import com.example.ss9_javaweb.model.Student;

import java.util.List;

public interface IStudentRepository {
    List<Student> display();
    void createNewStudent(Student student);
    void deleteStudent(int id);
}
