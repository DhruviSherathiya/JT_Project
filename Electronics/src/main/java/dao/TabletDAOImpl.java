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
import model.Tablet;

@Repository
public class TabletDAOImpl implements TabletDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void addTablet(Tablet tablet) {
		sessionFactory.getCurrentSession().saveOrUpdate(tablet);

	}

	
	@SuppressWarnings("unchecked")
	public List<Tablet> getAllTablets() {

		return sessionFactory.getCurrentSession().createQuery("from Tablet").list();
	}

	@Override
	public void deleteTablet(Integer tabletId) {
		Tablet tablet = (Tablet) sessionFactory.getCurrentSession().load(
				Tablet.class, tabletId);
		if (null != tablet) {
			this.sessionFactory.getCurrentSession().delete(tablet);
		}

	}

	@Override
	public Tablet getTablet(int tabletid) {
		return (Tablet) sessionFactory.getCurrentSession().get(
				Tablet.class, tabletid);
	}

	@Override
	public Tablet updateTablet(Tablet tablet) {
		sessionFactory.getCurrentSession().update(tablet);
		return tablet;
	}
	
}
