package com.example.management_product.model;

public class Product {
    private int id;
    private String name;
    private double priceProduct;
    private String discribe;
    private String producer;

    public Product() {
    }

    public Product(int id, String name, double priceProduct, String discribe, String producer) {
        this.id = id;
        this.name = name;
        this.priceProduct = priceProduct;
        this.discribe = discribe;
        this.producer = producer;

    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPriceProduct() {
        return priceProduct;
    }

    public void setPriceProduct(double priceProduct) {
        this.priceProduct = priceProduct;
    }

    public String getDiscribe() {
        return discribe;
    }

    public void setDiscribe(String discribe) {
        this.discribe = discribe;
    }

    public String getProducer() {
        return producer;
    }

    public void setProducer(String producer) {
        this.producer = producer;
    }
}
