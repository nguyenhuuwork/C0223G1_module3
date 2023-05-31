package com.example.customer_management.repository;

import com.example.customer_management.model.Customer;

import java.util.List;

public interface ICustomerRepository {
    List<Customer> getList();

    void create(Customer customer);

    int findById(int id);

    void remove(int id);
    
}
