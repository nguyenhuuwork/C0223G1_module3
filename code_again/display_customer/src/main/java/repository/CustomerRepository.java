package repository;

import model.Customer;

import java.util.ArrayList;
import java.util.List;

public class CustomerRepository implements ICustomerRepository {
    public static List<Customer> customerList = new ArrayList<>();

    static {
        Customer customer1 = new Customer("Nguyen Huu Quoc", "1995", "Da Nang", "https://pdp.edu.vn/wp-content/uploads/2021/06/hinh-anh-thanh-pho-da-nang-ve-dem-dep.jpg");
        Customer customer2 = new Customer("Nguyen Huu Quoc", "1995", "Da Nang", "https://pdp.edu.vn/wp-content/uploads/2021/06/hinh-anh-thanh-pho-da-nang-ve-dem-dep.jpg");
        Customer customer3 = new Customer("Nguyen Huu Quoc", "1995", "Da Nang", "https://pdp.edu.vn/wp-content/uploads/2021/06/hinh-anh-thanh-pho-da-nang-ve-dem-dep.jpg");
        Customer customer4 = new Customer("Nguyen Huu Quoc", "1995", "Da Nang", "https://pdp.edu.vn/wp-content/uploads/2021/06/hinh-anh-thanh-pho-da-nang-ve-dem-dep.jpg");
        customerList.add(customer1);
        customerList.add(customer2);
        customerList.add(customer3);
        customerList.add(customer4);
    }

    @Override
    public List<Customer> getList() {
        return customerList;
    }
}
