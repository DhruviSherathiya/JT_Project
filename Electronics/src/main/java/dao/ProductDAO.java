/**
 * 
 */
package dao;
import model.Product;
/**
 * @author devoz
 *
 */
public interface ProductDAO {

	public Product getProduct(int productID);
	public Product updateProduct(Product product);
	
}
