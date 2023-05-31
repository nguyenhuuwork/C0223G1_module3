package com.example.customer_management.service;

import com.example.customer_management.model.Customer;

import java.util.List;

public interface ICustomerService {
    List<Customer> displayCustomerList();

    void create(Customer customer);

    int findByIndex(int id);

    void remove(int id);

    Customer customerById(int id);

    void update(int index, Customer customer);
}
