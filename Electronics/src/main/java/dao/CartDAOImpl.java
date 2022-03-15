	/**
 * 
 */
package dao;

/**
 * @author devoz
 *
 */

import java.util.List;

import org.hibernate.SQLQuery;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.Cart;
import model.User;

@Repository
public class CartDAOImpl implements CartDAO{

	@Autowired
	private SessionFactory sessionFactory;
	
	public void addCart(Cart cart) {
		sessionFactory.getCurrentSession().saveOrUpdate(cart);
	}
	
	@Override
	public void deleteCart(Integer cartid) {
		Cart cart = (Cart) sessionFactory.getCurrentSession().load(Cart.class, cartid);
		if(null != cart) {
			sessionFactory.getCurrentSession().delete(cart);
		}
	}
	
	@SuppressWarnings("unchecked")
	public List<Cart> getAllCarts(){
		List<Cart> listCart = sessionFactory.getCurrentSession().createQuery("from Cart").list();
		return listCart;
	}
	
	public List<Cart> getCartByUser(User user){
		String sql = "SELECT * FROM Cart WHERE User_ID = :e_nm";
		SQLQuery query = sessionFactory.getCurrentSession().createSQLQuery(sql);
		query.addEntity(Cart.class);
		query.setParameter("e_nm", user.getUserId());
		List <Cart> listCart = query.list();
		return listCart;
	}
	
	public Cart getCart(int cartid) {
		return (Cart) sessionFactory.getCurrentSession().get(
				Cart.class, cartid);
	}
	
	@Override
	public Cart updateCart(Cart cart) {
		sessionFactory.getCurrentSession().update(cart);
		return cart;
	}
	
}
