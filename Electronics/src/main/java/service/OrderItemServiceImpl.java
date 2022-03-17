/**
 * 
 */
package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import model.Order;
import model.Order_Items;
import dao.OrderItemDAO;

/**
 * @author devoza
 *
 */

@Service
@Transactional
public class OrderItemServiceImpl implements OrderItemService {
	
	@Autowired
	private OrderItemDAO OrderItemDAO;
	
	@Override
	@Transactional
	public void addOrderItem(Order_Items OrderItem) {
		OrderItemDAO.addOrderItem(OrderItem);
	}
	
	@Override
	@Transactional
	public List<Order_Items> getAllOrderItems() {
		return OrderItemDAO.getAllOrderItems();
	}
	
	@Override
	@Transactional
	public List<Order_Items> getOrderItemByOrder(Order order) {
		return OrderItemDAO.getOrderItemByOrder(order);
	}
	
	@Override
	@Transactional
	public void deleteOrderItem(Integer OrderItemId) {
		OrderItemDAO.deleteOrderItem(OrderItemId);
	}
	
	
	@Override
	@Transactional
	public Order_Items getOrderItem(int OrderItemid) {
		return OrderItemDAO.getOrderItem(OrderItemid);
	}

	@Override
	@Transactional
	public Order_Items updateOrderItem(Order_Items OrderItem) {
		return OrderItemDAO.updateOrderItem(OrderItem);
	}
	
}
