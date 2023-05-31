package com.example.management_product.service;

import com.example.management_product.model.Product;

import java.util.List;

public interface IProductService {
    List<Product> displayProduct();

    void create(Product product);

    void delete(int id);

    int findByIndex(int id);

    Product productById(int id);

    void update(int index, Product product);
}
