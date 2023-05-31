package com.example.customer_management.service;

import com.example.customer_management.model.Customer;
import com.example.customer_management.repository.CustomerRepository;

import java.util.List;

public class CustomerService implements ICustomerService {
    private CustomerRepository customerRepository = new CustomerRepository();

    @Override
    public List<Customer> displayCustomerList() {
        return customerRepository.getList();
    }

    @Override
    public void create(Customer customer) {
        customerRepository.create(customer);
    }

    @Override
    public int findByIndex(int id) {
        return customerRepository.findByIndex(id);
    }


    @Override
    public void remove(int id) {
        customerRepository.remove(id);
    }

    @Override
    public Customer customerById(int id) {
        return customerRepository.customerById(id);
    }

    @Override
    public void update(int index, Customer customer) {
        customerRepository.update(index, customer);
    }
}
