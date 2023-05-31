package com.example.customer_management.repository;

import com.example.customer_management.model.Customer;

import java.util.List;

public interface ICustomerRepository {
    List<Customer> getList();

    void create(Customer customer);

    int findByIndex(int id);

    void remove(int id);

    Customer customerById(int id);

    void update (int index, Customer customer);
}
