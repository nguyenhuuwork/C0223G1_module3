package com.example.ss9_javaweb.service.impl;

import com.example.ss9_javaweb.model.Student;
import com.example.ss9_javaweb.repository.IStudentRepository;
import com.example.ss9_javaweb.repository.impl.StudentRepository;
import com.example.ss9_javaweb.service.IStudentService;
import java.util.List;

public class StudentService implements IStudentService {
    private IStudentRepository iStudentRepository = new StudentRepository();

    @Override
    public List<Student> display() {
        return iStudentRepository.display();
    }

    @Override
    public void createNewStudent(Student student) {
        iStudentRepository.createNewStudent(student);
    }

    @Override
    public void deleteStudent(int id) {
        iStudentRepository.deleteStudent(id);
    }

}
