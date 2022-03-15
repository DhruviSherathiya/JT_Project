/**
 * 
 */
package dao;

/**
 * @author devoza
 *
 */
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.Product;

@Repository
public class ProductDAOImpl implements ProductDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	public Product getProduct(int productid) {
		return (Product) sessionFactory.getCurrentSession().get(
				Product.class, productid);
	}
	
	public Product updateProduct(Product product) {
		sessionFactory.getCurrentSession().update(product);
		return product;
	}
	
}
