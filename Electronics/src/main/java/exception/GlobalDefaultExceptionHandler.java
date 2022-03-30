/**
 * 
 */
package exception;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.NoHandlerFoundException;

/**
 * @author devoza
 *
 */

@ControllerAdvice
public class GlobalDefaultExceptionHandler {

	@ExceptionHandler(NoHandlerFoundException.class)
	public ModelAndView handlerNohandlerFoundException() {
		ModelAndView mv = new ModelAndView("errorPage");
		mv.addObject("errorcode", "404");
		mv.addObject("exception", "Requested Page Not Found");
		return mv;
	}
	
	@ExceptionHandler(Exception.class)
	public ModelAndView handleGenericException(Exception e){
		ModelAndView v = new ModelAndView("errorPage");
		v.addObject("errorcode", "500");
		v.addObject("exception", "Something Went Wrong. Please Try After Some Time.");
		return v;
	}
	
}
