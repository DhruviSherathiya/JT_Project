package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import model.User;
import service.UserService;

/**
 * @author devoza
 *
 */

@Controller
public class UserController {

	private static final Logger logger = Logger
			.getLogger(UserController.class);

	public UserController() {
		System.out.println("UserController()");
	}
	
	@Autowired
	private UserService userService;


	@RequestMapping(value = "/")
	public ModelAndView login(ModelAndView model) throws IOException {
		model.setViewName("login");
		return model;
	}
	
	@RequestMapping(value = "register")
	public ModelAndView register(ModelAndView model) throws IOException {
		model.setViewName("register");
		return model;
	}
	
	/*
	 * @RequestMapping(value = "/saveUser") public ModelAndView saveEmployee() {
	 * 
	 * User user = new User("Dev", "7201066052", "dev@gmai.com", "12/12/2002",
	 * "Admin", "Bhavnagar", "Bhavnagar", "devmeet"); userService.addUser(user);
	 * 
	 * return new ModelAndView("redirect:/"); }
	 */
	
	@RequestMapping(value = "/saveUser", method = RequestMethod.POST)
	public ModelAndView saveEmployee(@ModelAttribute User user) {
		if (user.getUserId() == 0) { // if employee id is 0 then creating the
			// employee other updating the employee
			userService.addUser(user);
		} else {
			userService.updateUser(user);
		}
		return new ModelAndView("redirect:/");
	}
}