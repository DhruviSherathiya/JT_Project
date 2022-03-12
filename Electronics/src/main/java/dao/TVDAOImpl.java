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
import model.TV;

@Repository
public class TVDAOImpl implements TVDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void addTV(TV tv) {
		sessionFactory.getCurrentSession().saveOrUpdate(tv);

	}

	
	@SuppressWarnings("unchecked")
	public List<TV> getAllTVs() {

		return sessionFactory.getCurrentSession().createQuery("from TV").list();
	}

	@Override
	public void deleteTV(Integer tvId) {
		TV tv = (TV) sessionFactory.getCurrentSession().load(
				TV.class, tvId);
		if (null != tv) {
			this.sessionFactory.getCurrentSession().delete(tv);
		}

	}

	@Override
	public TV getTV(int tvid) {
		return (TV) sessionFactory.getCurrentSession().get(
				TV.class, tvid);
	}

	@Override
	public TV updateTV(TV tv) {
		sessionFactory.getCurrentSession().update(tv);
		return tv;
	}
	
}
