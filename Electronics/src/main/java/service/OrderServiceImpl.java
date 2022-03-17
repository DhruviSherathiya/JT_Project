/**
 * 
 */
package service;

import java.util.List;

/**
 * @author devoz
 *
 */

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dao.OrderDAO;
import model.User;
import model.Order;


@Service
@Transactional
public class OrderServiceImpl implements OrderService {

	@Autowired
	private OrderDAO orderDAO;
	
	@Override
	@Transactional
	public void addOrder(Order order) {
		orderDAO.addOrder(order);
	}
	
	@Override
	@Transactional
	public List<Order> getAllOrders() {
		return orderDAO.getAllOrders();
	}
	
	@Override
	@Transactional
	public void deleteOrder(Integer orderId) {
		orderDAO.deleteOrder(orderId);
	}
	
	
	@Override
	@Transactional
	public Order getOrder(int orderid) {
		return orderDAO.getOrder(orderid);
	}

	@Override
	@Transactional
	public Order updateOrder(Order order) {
		// TODO Auto-generated method stub
		return orderDAO.updateOrder(order);
	}
	
	@Override
	@Transactional
	public List<Order> getOrderByUser(User user) {
		return orderDAO.getOrderByUser(user);
	}
	
}
