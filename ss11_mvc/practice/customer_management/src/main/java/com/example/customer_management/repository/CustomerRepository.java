package com.example.customer_management.repository;

import com.example.customer_management.model.Customer;

import java.util.ArrayList;
import java.util.List;

public class CustomerRepository implements ICustomerRepository {
    private static List<Customer> customerList = new ArrayList<>();

    static {
        Customer customer1 = new Customer(1, "Nguyen Van Tai", "tai@gmail.com", "Da Nang");
        Customer customer2 = new Customer(2, "Nguyen Van Vu", "vu@gmail.com", "Da Nang");
        Customer customer3 = new Customer(3, "Nguyen Van Quoc", "quoc@gmail.com", "Da Nang");
        Customer customer4 = new Customer(4, "Nguyen Van Long", "long@gmail.com", "Da Nang");
        customerList.add(customer1);
        customerList.add(customer2);
        customerList.add(customer3);
        customerList.add(customer4);
    }

    @Override
    public List<Customer> getList() {
        return customerList;
    }

    @Override
    public void create(Customer customer) {
        customerList.add(customer);
    }

    @Override
    public int findByIndex(int id) {
        for (int i = 0; i < customerList.size(); i++) {
            if (customerList.get(i).getId() == id) {
                return i;
            }
        }
        return -1;
    }


    @Override
    public void remove(int id) {
        for (Customer c : customerList) {
            if (c.getId() == id) {
                customerList.remove(c);
                break;
            }
        }
    }

    @Override
    public Customer customerById(int id) {
        return customerList.get(id);
    }

    @Override
    public void update(int index, Customer customer) {
        customerList.set(index, customer);
    }
}
