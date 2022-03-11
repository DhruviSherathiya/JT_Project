/**
 * 
 */
package dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.HeadPhone;

/**
 * @author devoz
 *
 */

@Repository
public class HeadPhoneDAOImpl implements HeadPhoneDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void addHeadPhone(HeadPhone headphone) {
		sessionFactory.getCurrentSession().saveOrUpdate(headphone);

	}

	
	@SuppressWarnings("unchecked")
	public List<HeadPhone> getAllHeadPhones() {

		return sessionFactory.getCurrentSession().createQuery("from HeadPhone").list();
	}

	@Override
	public void deleteHeadPhone(Integer headphoneId) {
		HeadPhone headphone = (HeadPhone) sessionFactory.getCurrentSession().load(
				HeadPhone.class, headphoneId);
		if (null != headphone) {
			this.sessionFactory.getCurrentSession().delete(headphone);
		}

	}

	@Override
	public HeadPhone getHeadPhone(int headphoneid) {
		return (HeadPhone) sessionFactory.getCurrentSession().get(
				HeadPhone.class, headphoneid);
	}

	@Override
	public HeadPhone updateHeadPhone(HeadPhone headphone) {
		sessionFactory.getCurrentSession().update(headphone);
		return headphone;
	}
	
}
