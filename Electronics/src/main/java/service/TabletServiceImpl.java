/**
 * 
 */
package service;

/**
 * @author devoza
 *
 */

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import java.util.List;
import dao.TabletDAO;
import model.Tablet;

@Service
@Transactional
public class TabletServiceImpl implements TabletService {

	@Autowired
	private TabletDAO TabletDAO;

	@Override
	@Transactional
	public void addTablet(Tablet tablet) {
		TabletDAO.addTablet(tablet);
	}

	@Override
	@Transactional
	public List<Tablet> getAllTablets() {
		return TabletDAO.getAllTablets();
	}

	@Override
	@Transactional
	public void deleteTablet(Integer tabletId) {
		TabletDAO.deleteTablet(tabletId);
	}
	
	
	@Override
	@Transactional
	public Tablet getTablet(int tabletid) {
		return TabletDAO.getTablet(tabletid);
	}

	@Override
	@Transactional
	public Tablet updateTablet(Tablet tablet) {
		// TODO Auto-generated method stub
		return TabletDAO.updateTablet(tablet);
	}
	
}
