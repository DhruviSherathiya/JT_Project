/**
 * 
 */
package dao;

import java.util.List;

import model.TV;

/**
 * @author devoz
 *
 */
public interface TVDAO {

	public void addTV(TV tv);

	public List<TV> getAllTVs();

	public void deleteTV(Integer tvId);

	public TV updateTV(TV tv);

	public TV getTV(int tvid);
	
}
