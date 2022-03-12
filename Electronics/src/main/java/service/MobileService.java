/**
 * 
 */
package service;

import java.util.List;

import model.Mobile;

/**
 * @author devoza
 *
 */

public interface MobileService {

	public void addMobile(Mobile mobile);

	public List<Mobile> getAllMobiles();

	public void deleteMobile(Integer mobileId);

	public Mobile getMobile(int mobileId);

	public Mobile updateMobile(Mobile mobile);
	
}
