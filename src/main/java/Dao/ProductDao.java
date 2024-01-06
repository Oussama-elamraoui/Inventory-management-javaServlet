package Dao;

import java.util.List;

import entity.product;

public interface ProductDao {
	void addProduct(product p);
	void updateProduct(product p);
	product getProduct(int id);
	List<product> getProducts();

}
