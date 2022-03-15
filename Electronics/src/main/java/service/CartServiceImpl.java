/**
 * 
 */
package service;

/**
 * @author devoz
 *
 */

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import dao.CartDAO;
import model.Cart;
import model.User;

@Service
@Transactional
public class CartServiceImpl implements CartService {

	@Autowired
	private CartDAO cartDAO;
	
	@Override
	@Transactional
	public void addCart(Cart cart) {
		cartDAO.addCart(cart);
	}
	
	@Override
	@Transactional
	public List<Cart> getAllCarts() {
		return cartDAO.getAllCarts();
	}
	
	@Override
	@Transactional
	public void deleteCart(Integer cartId) {
		cartDAO.deleteCart(cartId);
	}
	
	
	@Override
	@Transactional
	public Cart getCart(int cartid) {
		return cartDAO.getCart(cartid);
	}
	
	@Override
	@Transactional
	public List<Cart> getCartByUser(User user){
		return cartDAO.getCartByUser(user);
	}

	@Override
	@Transactional
	public Cart updateCart(Cart cart) {
		// TODO Auto-generated method stub
		return cartDAO.updateCart(cart);
	}
	
}
