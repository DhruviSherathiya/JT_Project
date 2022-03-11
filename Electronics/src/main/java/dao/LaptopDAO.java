/**
 * 
 */
package dao;

import java.util.List;

import model.Laptop;

/**
 * @author devoz
 *
 */
public interface LaptopDAO {

	public void addLaptop(Laptop laptop);

	public List<Laptop> getAllLaptops();

	public void deleteLaptop(Integer laptopId);

	public Laptop updateLaptop(Laptop laptop);

	public Laptop getLaptop(int laptopid);
	
}
