/**
 * 
 */
package service;

import java.util.List;

/**
 * @author devoza
 *
 */

import model.Tablet;

public interface TabletService {

	public void addTablet(Tablet tablet);

	public List<Tablet> getAllTablets();

	public void deleteTablet(Integer tabletId);

	public Tablet getTablet(int tabletId);

	public Tablet updateTablet(Tablet tablet);
	
}
