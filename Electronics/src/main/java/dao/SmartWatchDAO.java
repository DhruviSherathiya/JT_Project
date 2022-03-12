/**
 * 
 */
package dao;

import java.util.List;

/**
 * @author devoza
 *
 */

import model.SmartWatch;

public interface SmartWatchDAO {

	public void addSmartWatch(SmartWatch smartwatch);

	public List<SmartWatch> getAllSmartWatchs();

	public void deleteSmartWatch(Integer smartwatchId);

	public SmartWatch updateSmartWatch(SmartWatch smartwatch);

	public SmartWatch getSmartWatch(int smartwatchid);
	
}
