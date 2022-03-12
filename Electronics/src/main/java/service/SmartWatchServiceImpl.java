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
import dao.SmartWatchDAO;
import model.SmartWatch;

@Service
@Transactional
public class SmartWatchServiceImpl implements SmartWatchService{

	@Autowired
	private SmartWatchDAO SmartWatchDAO;

	@Override
	@Transactional
	public void addSmartWatch(SmartWatch smartwatch) {
		SmartWatchDAO.addSmartWatch(smartwatch);
	}

	@Override
	@Transactional
	public List<SmartWatch> getAllSmartWatchs() {
		return SmartWatchDAO.getAllSmartWatchs();
	}

	@Override
	@Transactional
	public void deleteSmartWatch(Integer smartwatchId) {
		SmartWatchDAO.deleteSmartWatch(smartwatchId);
	}
	
	
	@Override
	@Transactional
	public SmartWatch getSmartWatch(int smartwatchid) {
		return SmartWatchDAO.getSmartWatch(smartwatchid);
	}

	@Override
	@Transactional
	public SmartWatch updateSmartWatch(SmartWatch smartwatch) {
		// TODO Auto-generated method stub
		return SmartWatchDAO.updateSmartWatch(smartwatch);
	}
	
}
