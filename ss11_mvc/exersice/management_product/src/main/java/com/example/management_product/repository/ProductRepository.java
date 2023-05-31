package com.example.management_product.repository;

import com.example.management_product.model.Product;

import java.util.ArrayList;
import java.util.List;

public class ProductRepository implements IProductRepository {
    public static List<Product> productList = new ArrayList<>();

    //    int id, String name, double priceProduct, String discribe, String producer
    static {
        Product product1 = new Product(1, "HP", 2000, "Máy tính tiết kiệm ping", "USA");
        Product product2 = new Product(2, "HP", 2000, "Máy tính tiết kiệm ping", "USA");
        Product product3 = new Product(3, "HP", 2400, "Máy tính tiết kiệm ping", "USA");
        Product product4 = new Product(4, "HP", 2400, "Máy tính tiết kiệm ping", "USA");
        productList.add(product1);
        productList.add(product2);
        productList.add(product3);
        productList.add(product4);
    }

    @Override
    public List<Product> getProductList() {
        return productList;
    }

    @Override
    public void create(Product product) {
        productList.add(product);
    }

    @Override
    public void delete(int id) {
        for (Product p : productList) {
            if (p.getId() == id) {
                productList.remove(p);
                break;
            }
        }
    }

    @Override
    public int findByIndex(int id) {
        for (int i = 0; i < productList.size(); i++) {
            if (productList.get(i).getId() == id) {
                return i;
            }
        }
        return -1;
    }

    @Override
    public Product productById(int id) {
        return productList.get(id);
    }

    @Override
    public void update(int index, Product product) {
        productList.set(index,product);
    }
}
