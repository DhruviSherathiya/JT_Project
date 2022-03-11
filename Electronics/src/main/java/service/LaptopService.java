/**
 * 
 */
package service;

import java.util.List;

/**
 * @author devoz
 *
 */

import model.Laptop;

public interface LaptopService {
	
	public void addLaptop(Laptop laptop);

	public List<Laptop> getAllLaptops();

	public void deleteLaptop(Integer laptopId);

	public Laptop getLaptop(int laptopId);

	public Laptop updateLaptop(Laptop laptop);
	
}
