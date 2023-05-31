package com.example.customer_management.service;

import com.example.customer_management.model.Customer;

import java.util.List;

public interface ICustomerService {
    List<Customer> displayCustomerList();

    void create(Customer customer);

    int findById(int id);

    void remove(int id);
}
