/**
 * 
 */
package dao;

import java.util.List;
import model.User;

/**
 * @author devoz
 *
 */
public interface UserDAO {
	
	public void addUser(User user);

	public List<User> getAllUsers();

	public void deleteUser(Integer userId);

	public User updateUser(User user);

	public User getUser(int userid);

	public User getUserByEmail(String email);
	
	public User getUserByUserName(String uName);
}
