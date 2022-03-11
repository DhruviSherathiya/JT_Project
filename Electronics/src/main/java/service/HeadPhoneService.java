/**
 * 
 */
package service;

import java.util.List;

import model.HeadPhone;

/**
 * @author devoz
 *
 */
public interface HeadPhoneService {

	public void addHeadPhone(HeadPhone headphone);

	public List<HeadPhone> getAllHeadPhones();

	public void deleteHeadPhone(Integer headphoneId);

	public HeadPhone getHeadPhone(int headphoneId);

	public HeadPhone updateHeadPhone(HeadPhone headphone);
	
	
}
