/**
 * 
 */
package dao;

import java.util.List;

/**
 * @author devoza
 *
 */

import model.Tablet;

public interface TabletDAO {

	public void addTablet(Tablet tablet);

	public List<Tablet> getAllTablets();

	public void deleteTablet(Integer tabletId);

	public Tablet updateTablet(Tablet tablet);

	public Tablet getTablet(int tabletid);
	
}
