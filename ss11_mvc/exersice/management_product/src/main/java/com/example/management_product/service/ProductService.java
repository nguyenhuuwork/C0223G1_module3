package com.example.management_product.service;

import com.example.management_product.model.Product;
import com.example.management_product.repository.ProductRepository;

import java.util.List;

public class ProductService implements IProductService {
    private ProductRepository productRepository = new ProductRepository();

    @Override
    public List<Product> displayProduct() {
        return productRepository.getProductList();
    }

    @Override
    public void create(Product product) {
        productRepository.create(product);
    }

    @Override
    public void delete(int id) {
        productRepository.delete(id);
    }

    @Override
    public int findByIndex(int id) {
        return productRepository.findByIndex(id);
    }

    @Override
    public Product productById(int id) {
        return productRepository.productById(id);
    }

    @Override
    public void update(int index, Product product) {
        productRepository.update(index,product);
    }
}
