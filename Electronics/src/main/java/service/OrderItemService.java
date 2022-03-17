/**
 * 
 */
package service;

import java.util.List;

import model.Order;
import model.Order_Items;

/**
 * @author devoza
 *
 */
public interface OrderItemService {

	public void addOrderItem(Order_Items OrderItem);
	
	public List<Order_Items> getAllOrderItems();
	
	public List<Order_Items> getOrderItemByOrder(Order order);
	
	public void deleteOrderItem(Integer OrderItemId);

	public Order_Items updateOrderItem(Order_Items OrderItem);

	public Order_Items getOrderItem(int OrderItemid);
	
}
