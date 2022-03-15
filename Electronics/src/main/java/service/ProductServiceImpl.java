package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dao.ProductDAO;
import model.Product;

@Service
@Transactional
public class ProductServiceImpl implements ProductService{

	@Autowired
	private ProductDAO productDAO;
	
	@Override
	@Transactional
	public Product getProduct(int productid) {
		return productDAO.getProduct(productid);
	}
	
	@Override
	@Transactional
	public Product updateProduct(Product product) {
		return productDAO.updateProduct(product);
	}
}
