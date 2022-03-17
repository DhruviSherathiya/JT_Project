/**
 * 
 */
package dao;

import java.util.List;

import org.hibernate.SQLQuery;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.Order;
import model.Order_Items;

/**
 * @author devoza
 *
 */

@SuppressWarnings("deprecation")
@Repository
public class OrderItemDAOImpl implements OrderItemDAO{

	@Autowired
	private SessionFactory sessionFactory;
	
	public void addOrderItem(Order_Items orderItem) {
		sessionFactory.getCurrentSession().saveOrUpdate(orderItem);
	}
	
	@Override
	public void deleteOrderItem(Integer OrderItemid) {
		Order_Items OrderItem = (Order_Items) sessionFactory.getCurrentSession().load(Order_Items.class, OrderItemid);
		if(null != OrderItem) {
			sessionFactory.getCurrentSession().delete(OrderItem);
		}
	}
	
	@SuppressWarnings("unchecked")
	public List<Order_Items> getAllOrderItems(){
		List<Order_Items> listOrderItem = sessionFactory.getCurrentSession().createQuery("from Order_Items").list();
		return listOrderItem;
	}
	
	public Order_Items getOrderItem(int OrderItemid) {
		return (Order_Items) sessionFactory.getCurrentSession().get(Order_Items.class, OrderItemid);
	}
	
	@Override
	public Order_Items updateOrderItem(Order_Items OrderItem) {
		sessionFactory.getCurrentSession().update(OrderItem);
		return OrderItem;
	}
	
	public List<Order_Items> getOrderItemByOrder(Order order){
		String sql = "SELECT * FROM Order_Item WHERE Order_ID = :e_nm";
		@SuppressWarnings("rawtypes")
		SQLQuery query = sessionFactory.getCurrentSession().createSQLQuery(sql);
		query.addEntity(Order_Items.class);
		query.setParameter("e_nm", order.getOrderId());
		List <Order_Items> listOrderItem = query.list();
		return listOrderItem;
	}

}
