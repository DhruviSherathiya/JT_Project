/**
 * 
 */
package service;

/**
 * @author devoz
 *
 */


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import java.util.List;
import dao.MobileDAO;
import model.Mobile;

@Service
@Transactional
public class MobileServiceImpl implements MobileService {

	@Autowired
	private MobileDAO MobileDAO;

	@Override
	@Transactional
	public void addMobile(Mobile mobile) {
		MobileDAO.addMobile(mobile);
	}

	@Override
	@Transactional
	public List<Mobile> getAllMobiles() {
		return MobileDAO.getAllMobiles();
	}

	@Override
	@Transactional
	public void deleteMobile(Integer mobileId) {
		MobileDAO.deleteMobile(mobileId);
	}
	
	
	@Override
	@Transactional
	public Mobile getMobile(int mobileid) {
		return MobileDAO.getMobile(mobileid);
	}

	@Override
	@Transactional
	public Mobile updateMobile(Mobile mobile) {
		// TODO Auto-generated method stub
		return MobileDAO.updateMobile(mobile);
	}
	
}
