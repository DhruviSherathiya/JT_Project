/**
 * 
 */
package service;

import java.util.List;

import model.User;

/**
 * @author devoza
 *
 */
public interface UserService {
	
	public void addUser(User user);

	public List<User> getAllUsers();

	public void deleteUser(Integer userId);

	public User getUser(int userid);

	public User updateUser(User user);

	public User getUserByEmail(String email);
	
	public User getUserByUserName(String uName);
}
