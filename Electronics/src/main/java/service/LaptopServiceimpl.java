/**
 * 
 */
package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dao.LaptopDAO;
import model.Laptop;

/**
 * @author devoz
 *
 */

@Service
@Transactional
public class LaptopServiceimpl implements LaptopService {
	
	@Autowired
	private LaptopDAO LaptopDAO;

	@Override
	@Transactional
	public void addLaptop(Laptop laptop) {
		LaptopDAO.addLaptop(laptop);
	}

	@Override
	@Transactional
	public List<Laptop> getAllLaptops() {
		return LaptopDAO.getAllLaptops();
	}

	@Override
	@Transactional
	public void deleteLaptop(Integer laptopId) {
		LaptopDAO.deleteLaptop(laptopId);
	}
	
	
	@Override
	@Transactional
	public Laptop getLaptop(int laptopid) {
		return LaptopDAO.getLaptop(laptopid);
	}

	@Override
	@Transactional
	public Laptop updateLaptop(Laptop laptop) {
		// TODO Auto-generated method stub
		return LaptopDAO.updateLaptop(laptop);
	}
	
}
