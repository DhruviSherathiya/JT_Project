package dao;

import java.util.List;

import org.hibernate.SQLQuery;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.Cart;
import model.User;
import model.Order;

@Repository
public class OrderDAOImpl implements OrderDAO{

	@Autowired
	private SessionFactory sessionFactory;
	
	public void addOrder(Order order) {
		sessionFactory.getCurrentSession().saveOrUpdate(order);
	}
	
	@Override
	public void deleteOrder(Integer orderid) {
		Order order = (Order) sessionFactory.getCurrentSession().load(Order.class, orderid);
		if(null != order) {
			sessionFactory.getCurrentSession().delete(order);
		}
	}
	
	@SuppressWarnings("unchecked")
	public List<Order> getAllOrders(){
		List<Order> listOrder = sessionFactory.getCurrentSession().createQuery("from Order").list();
		return listOrder;
	}
	
	public Order getOrder(int Orderid) {
		return (Order) sessionFactory.getCurrentSession().get(
				Order.class, Orderid);
	}
	
	@Override
	public Order updateOrder(Order order) {
		sessionFactory.getCurrentSession().update(order);
		return order;
	}
	
	public List<Order> getOrderByUser(User user){
		String sql = "SELECT * FROM Orders WHERE userId = :e_nm";
		SQLQuery query = sessionFactory.getCurrentSession().createSQLQuery(sql);
		query.addEntity(Order.class);
		query.setParameter("e_nm", user.getUserId());
		List <Order> listOrder = query.list();
		return listOrder;
	}
}
