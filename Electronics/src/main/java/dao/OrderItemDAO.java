/**
 * 
 */
package dao;

import java.util.List;

import model.Order;
import model.Order_Items;

/**
 * @author devoz
 *
 */
public interface OrderItemDAO {

	public void addOrderItem(Order_Items orderItem);
	
	public List<Order_Items> getAllOrderItems();
	
	public List<Order_Items> getOrderItemByOrder(Order order);
	
	public void deleteOrderItem(Integer orderItemId);

	public Order_Items updateOrderItem(Order_Items orderItem);

	public Order_Items getOrderItem(int orderItemId);
	
}
