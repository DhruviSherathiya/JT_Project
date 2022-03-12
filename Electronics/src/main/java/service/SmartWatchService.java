/**
 * 
 */
package service;

import java.util.List;

import model.SmartWatch;

/**
 * @author devoza
 *
 */

public interface SmartWatchService {

	public void addSmartWatch(SmartWatch smartwatch);

	public List<SmartWatch> getAllSmartWatchs();

	public void deleteSmartWatch(Integer smartwatchId);

	public SmartWatch getSmartWatch(int smartwatchId);

	public SmartWatch updateSmartWatch(SmartWatch smartwatch);
	
}
