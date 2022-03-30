/**
 * 
 */
package service;

import java.util.List;

/**
 * @author devoz
 *
 */

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import model.User;
import dao.UserDAO;

@Service
@Transactional
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserDAO UserDAO;

	@Override
	@Transactional
	public void addUser(User user) {
		UserDAO.addUser(user);
	}

	@Override
	@Transactional
	public List<User> getAllUsers() {
		return UserDAO.getAllUsers();
	}

	@Override
	@Transactional
	public void deleteUser(Integer userId) {
		UserDAO.deleteUser(userId);
	}
	
	
	@Override
	@Transactional
	public User getUser(int userid) {
		return UserDAO.getUser(userid);
	}

	@Override
	@Transactional
	public User updateUser(User user) {
		// TODO Auto-generated method stub
		return UserDAO.updateUser(user);
	}

//	public void setUserDAO(UserDAO UserDAO) {
//		this.UserDAO = UserDAO;
//	}

	@Override
	@Transactional
	public User getUserByEmail(String email) {
		return UserDAO.getUserByEmail(email);
	}
	
	@Override
	@Transactional
	public User getUserByUserName(String uName) {
		return UserDAO.getUserByUserName(uName);
	}
	
}
