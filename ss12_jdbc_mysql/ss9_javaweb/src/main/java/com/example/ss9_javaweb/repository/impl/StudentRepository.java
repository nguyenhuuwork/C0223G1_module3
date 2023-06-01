package com.example.ss9_javaweb.repository.impl;

import com.example.ss9_javaweb.model.Student;
import com.example.ss9_javaweb.repository.BaseRepository;
import com.example.ss9_javaweb.repository.IStudentRepository;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class StudentRepository implements IStudentRepository {
    private static final String INSERT = "insert into student(`name`,gender,point,class_id)" +
            " values(?,?,?,?) ";
    private static final String SELECT = "select * from student";
    private static final String DELETE = "delete from student where id = ?";


    @Override
    public List<Student> display() {
        Connection connection = BaseRepository.getConnection();
        List<Student> students = new ArrayList<>();
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(SELECT);
            while (resultSet.next()){
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                boolean gender = resultSet.getBoolean("gender");
                double point = resultSet.getDouble("point");
                int classId = resultSet.getInt("class_id");
                students.add(new Student(id,name,gender,point,classId));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return students;
    }

    @Override
    public void createNewStudent(Student student) {
        Connection connection = BaseRepository.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT);
            preparedStatement.setString(1,student.getName());
            preparedStatement.setBoolean(2,student.isGender());
            preparedStatement.setDouble(3,student.getPoint());
            preparedStatement.setInt(4,student.getClassId());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    @Override
    public void deleteStudent(int id) {
        Connection connection = BaseRepository.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(DELETE);
            preparedStatement.setInt(1,id);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

}
