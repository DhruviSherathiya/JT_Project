/**
 * 
 */
package dao;

/**
 * @author devoz
 *
 */

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.Laptop;

@Repository
public class LaptopDAOImpl implements LaptopDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void addLaptop(Laptop laptop) {
		sessionFactory.getCurrentSession().saveOrUpdate(laptop);

	}

	
	@SuppressWarnings("unchecked")
	public List<Laptop> getAllLaptops() {

		return sessionFactory.getCurrentSession().createQuery("from Laptop").list();
	}

	@Override
	public void deleteLaptop(Integer laptopId) {
		Laptop laptop = (Laptop) sessionFactory.getCurrentSession().load(
				Laptop.class, laptopId);
		if (null != laptop) {
			this.sessionFactory.getCurrentSession().delete(laptop);
		}

	}

	@Override
	public Laptop getLaptop(int laptopid) {
		return (Laptop) sessionFactory.getCurrentSession().get(
				Laptop.class, laptopid);
	}

	@Override
	public Laptop updateLaptop(Laptop laptop) {
		sessionFactory.getCurrentSession().update(laptop);
		return laptop;
	}

}
