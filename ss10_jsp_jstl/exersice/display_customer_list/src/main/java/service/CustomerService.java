package service;

import model.Customer;
import repository.CustomerRepository;

import java.util.List;

public class CustomerService implements ICustomerService {
    private CustomerRepository customerRepository = new CustomerRepository();

    @Override
    public List<Customer> displayCustomer() {
        return customerRepository.listCustomer();
    }
}
