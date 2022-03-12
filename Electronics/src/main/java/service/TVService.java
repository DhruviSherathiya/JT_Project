/**
 * 
 */
package service;

import java.util.List;

import model.TV;

/**
 * @author devoza
 *
 */
public interface TVService {

	public void addTV(TV tv);

	public List<TV> getAllTVs();

	public void deleteTV(Integer tvId);

	public TV getTV(int tvId);

	public TV updateTV(TV tv);
	
}
