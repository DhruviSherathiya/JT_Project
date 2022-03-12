/**
 * 
 */
package dao;

/**
 * @author devoza
 *
 */

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import java.util.List;
import model.Mobile;

@Repository
public class MobileDAOImpl implements MobileDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void addMobile(Mobile mobile) {
		sessionFactory.getCurrentSession().saveOrUpdate(mobile);

	}

	
	@SuppressWarnings("unchecked")
	public List<Mobile> getAllMobiles() {

		return sessionFactory.getCurrentSession().createQuery("from Mobile").list();
	}

	@Override
	public void deleteMobile(Integer mobileId) {
		Mobile mobile = (Mobile) sessionFactory.getCurrentSession().load(
				Mobile.class, mobileId);
		if (null != mobile) {
			this.sessionFactory.getCurrentSession().delete(mobile);
		}

	}

	@Override
	public Mobile getMobile(int mobileid) {
		return (Mobile) sessionFactory.getCurrentSession().get(
				Mobile.class, mobileid);
	}

	@Override
	public Mobile updateMobile(Mobile mobile) {
		sessionFactory.getCurrentSession().update(mobile);
		return mobile;
	}
	
}
