package service;

import model.Product;

public interface ProductService {

	public Product getProduct(int productID);
	public Product updateProduct(Product product);
}
