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

import dao.HeadPhoneDAO;
import model.HeadPhone;

@Service
@Transactional
public class HeadPhoneServiceImpl implements HeadPhoneService {
	
	@Autowired
	private HeadPhoneDAO HeadPhoneDAO;

	@Override
	@Transactional
	public void addHeadPhone(HeadPhone headphone) {
		HeadPhoneDAO.addHeadPhone(headphone);
	}

	@Override
	@Transactional
	public List<HeadPhone> getAllHeadPhones() {
		return HeadPhoneDAO.getAllHeadPhones();
	}

	@Override
	@Transactional
	public void deleteHeadPhone(Integer headphoneId) {
		HeadPhoneDAO.deleteHeadPhone(headphoneId);
	}
	
	
	@Override
	@Transactional
	public HeadPhone getHeadPhone(int headphoneid) {
		return HeadPhoneDAO.getHeadPhone(headphoneid);
	}

	@Override
	@Transactional
	public HeadPhone updateHeadPhone(HeadPhone headphone) {
		// TODO Auto-generated method stub
		return HeadPhoneDAO.updateHeadPhone(headphone);
	}
	
}
