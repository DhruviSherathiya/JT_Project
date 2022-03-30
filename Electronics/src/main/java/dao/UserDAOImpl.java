/**
 * 
 */
package dao;

/**
 * @author devoz
 *
 */

import java.util.List;

import javax.persistence.NoResultException;
import javax.persistence.Query;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.User;

@Repository
public class UserDAOImpl implements UserDAO {
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void addUser(User user) {
		sessionFactory.getCurrentSession().saveOrUpdate(user);

	}

	
	@SuppressWarnings("unchecked")
	public List<User> getAllUsers() {

		return sessionFactory.getCurrentSession().createQuery("from User").list();
	}

	@Override
	public void deleteUser(Integer userId) {
		User user = (User) sessionFactory.getCurrentSession().load(
				User.class, userId);
		if (null != user) {
			this.sessionFactory.getCurrentSession().delete(user);
		}

	}

	@Override
	public User getUser(int userid) {
		return (User) sessionFactory.getCurrentSession().get(
				User.class, userid);
	}

	@Override
	public User updateUser(User user) {
		sessionFactory.getCurrentSession().update(user);
		return user;
	}
	
	@Override
	public User getUserByEmail(String email) {
		
		Query query = sessionFactory.getCurrentSession().createQuery("from User where email = :email");
		query.setParameter("email",email);
		try {
			User u = (User) query.getSingleResult();
			return u;
		}catch(NoResultException nre){
			User user = new User();
			return user;
		}
		
	}
	
	@Override
	public User getUserByUserName(String uName) {
		Query query = sessionFactory.getCurrentSession().createQuery("from User where userName = :uName");
		query.setParameter("uName",uName);
		try {
			User u = (User) query.getSingleResult();
			return u;
		}catch(NoResultException nre){
			User user = new User();
			return user;
		}
	}

}
