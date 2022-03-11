/**
 * 
 */
package dao;

import java.util.List;

/**
 * @author devoz
 *
 */

import model.HeadPhone;
public interface HeadPhoneDAO {

	public void addHeadPhone(HeadPhone headphone);

	public List<HeadPhone> getAllHeadPhones();

	public void deleteHeadPhone(Integer headphoneId);

	public HeadPhone updateHeadPhone(HeadPhone headphone);

	public HeadPhone getHeadPhone(int headphoneid);
	
}
