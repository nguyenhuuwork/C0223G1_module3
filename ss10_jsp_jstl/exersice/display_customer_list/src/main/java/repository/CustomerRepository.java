package repository;

import model.Customer;

import java.util.ArrayList;
import java.util.List;

public class CustomerRepository implements ICustomerRepository {
    public static List<Customer> customerList = new ArrayList<>();

    static {
        Customer customer1 = new Customer("Mai Van Hoan", "1983-08-20", "Ha Noi", "https://img.lovepik.com/element/45003/5149.png_860.png");
        Customer customer2 = new Customer("Nguyen Van Nam", "1983-09-20", "Ha Noi", "https://img.lovepik.com/element/45003/5149.png_860.png");
        Customer customer3 = new Customer("Nguyen Thai Hoa", "1983-10-20", "Ha Noi", "https://img.lovepik.com/element/45003/5149.png_860.png");
        Customer customer4 = new Customer("Tran Dang Khoa", "1983-08-20", "Ha Noi", "https://img.lovepik.com/element/45003/5149.png_860.png");
        customerList.add(customer1);
        customerList.add(customer2);
        customerList.add(customer3);
        customerList.add(customer4);
    }

    @Override
    public List<Customer> listCustomer() {
        return customerList;
    }
}
