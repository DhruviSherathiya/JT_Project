/**
 * 
 */
package dao;

import java.util.List;

/**
 * @author devoz
 *
 */

import model.Mobile;

public interface MobileDAO {

	public void addMobile(Mobile mobile);

	public List<Mobile> getAllMobiles();

	public void deleteMobile(Integer mobileId);

	public Mobile updateMobile(Mobile mobile);

	public Mobile getMobile(int mobileid);
	
}
