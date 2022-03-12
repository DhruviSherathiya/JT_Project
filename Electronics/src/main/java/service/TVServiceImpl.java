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
import dao.TVDAO;
import model.TV;

@Service
@Transactional
public class TVServiceImpl implements TVService {

	@Autowired
	private TVDAO TVDAO;

	@Override
	@Transactional
	public void addTV(TV tv) {
		TVDAO.addTV(tv);
	}

	@Override
	@Transactional
	public List<TV> getAllTVs() {
		return TVDAO.getAllTVs();
	}

	@Override
	@Transactional
	public void deleteTV(Integer tvId) {
		TVDAO.deleteTV(tvId);
	}
	
	
	@Override
	@Transactional
	public TV getTV(int tvid) {
		return TVDAO.getTV(tvid);
	}

	@Override
	@Transactional
	public TV updateTV(TV tv) {
		// TODO Auto-generated method stub
		return TVDAO.updateTV(tv);
	}
	
}
