/**
 * 
 */
package controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.jboss.logging.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import model.User;

/**
 * @author devoz
 *
 */

@Controller
public class OrderController {

	private static final Logger logger = Logger
			.getLogger(UserController.class);

	public OrderController() {
		System.out.println("UserController()");
	}
	
	@RequestMapping(value = "/buyProduct")
	public ModelAndView login(ModelAndView model, HttpServletRequest request) throws IOException {
		HttpSession session = request.getSession();
		model.setViewName("order");
		System.out.println("order");
		
		return model;
	}
}
