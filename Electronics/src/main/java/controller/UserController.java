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
import org.springframework.web.bind.annotation.RequestParam;
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
		User user = new User();
		model.addObject(user);
		model.setViewName("register");
		return model;
	}
	
	@RequestMapping(value = "/checkLogin")
	public ModelAndView checklogin(@RequestParam("username") String uname, @RequestParam("password") String pass, ModelAndView model) throws IOException {
		
		List<User> users = userService.getAllUsers();
		boolean flag = false;
		
		for(User user : users) {
			if(user.getUserName().equals(uname) && user.getPassword().equals(pass)) {
				String role = user.getRole();
				flag = true;
				if(role.equalsIgnoreCase("user")) {
					model.setViewName("userhome");
				}
				else if(role.equalsIgnoreCase("admin")) {
					model.setViewName("adminhome");
				}
			}
		}
		
		if(flag == false) {
			model.addObject("error_message","User Name or password is incorrect Please login again...");
			model.setViewName("login");
		}
		return model;
	}
	
	@RequestMapping(value = "/addUser", method = RequestMethod.POST)
	public ModelAndView addUser(@RequestParam("username") String uname, @RequestParam("email") String email, @ModelAttribute User user, ModelAndView model) {

		List<User> users = userService.getAllUsers();
		
		boolean flag = false;
		
		for(User oneuser : users) {
			if(oneuser.getUserName().equalsIgnoreCase(uname) || oneuser.getEmail().equalsIgnoreCase(email)) {
				flag = true;
				if(oneuser.getUserName().equalsIgnoreCase(uname)) {
					model.addObject("error_msg","Username is already taken..!");
				}
				else {
					model.addObject("error_msg","Email is already taken..!");
				}
				model.setViewName("register");
			}
		}
		
		if(flag == false) {
			userService.addUser(user);
			model.setViewName("login");
		}
		
		return model;
	}
	
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