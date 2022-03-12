/**
 * 
 */
package dao;

/**
 * @author devoz
 *
 */

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import java.util.List;
import model.SmartWatch;

@Repository
public class SmartWatchDAOImpl implements SmartWatchDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void addSmartWatch(SmartWatch smartwatch) {
		sessionFactory.getCurrentSession().saveOrUpdate(smartwatch);

	}

	
	@SuppressWarnings("unchecked")
	public List<SmartWatch> getAllSmartWatchs() {

		return sessionFactory.getCurrentSession().createQuery("from SmartWatch").list();
	}

	@Override
	public void deleteSmartWatch(Integer smartwatchId) {
		SmartWatch smartwatch = (SmartWatch) sessionFactory.getCurrentSession().load(
				SmartWatch.class, smartwatchId);
		if (null != smartwatch) {
			this.sessionFactory.getCurrentSession().delete(smartwatch);
		}

	}

	@Override
	public SmartWatch getSmartWatch(int smartwatchid) {
		return (SmartWatch) sessionFactory.getCurrentSession().get(
				SmartWatch.class, smartwatchid);
	}

	@Override
	public SmartWatch updateSmartWatch(SmartWatch smartwatch) {
		sessionFactory.getCurrentSession().update(smartwatch);
		return smartwatch;
	}
	
}
