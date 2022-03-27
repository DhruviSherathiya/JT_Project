package controller;

import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import model.HeadPhone;
import model.Laptop;
import model.Mobile;
import model.SmartWatch;
import model.TV;
import model.Tablet;

import model.User;
import service.HeadPhoneService;
import service.LaptopService;
import service.MobileService;
import service.SmartWatchService;
import service.TVService;
import service.TabletService;
import service.UserService;

/**
 * @author devoza
 *
 */

@Controller
public class UserController {

	private static final Logger logger = Logger.getLogger(UserController.class);

	public UserController() {
		System.out.println("UserController()");
	}

	@Autowired
	private UserService userService;

	@Autowired
	private LaptopService laptopService;
	@Autowired
	private HeadPhoneService headphoneService;
	@Autowired
	private MobileService mobileService;
	@Autowired
	private TVService tvService;
	@Autowired
	private SmartWatchService smartwatchService;
	@Autowired
	private TabletService tabletService;

	@RequestMapping(value = "/")
	public ModelAndView login(ModelAndView model, HttpServletRequest request) throws IOException {
		HttpSession session = request.getSession();
		if (session.getAttribute("uid") != null) {
			User user = userService.getUser((int) session.getAttribute("uid"));
			if (user.getRole().equalsIgnoreCase("admin")) {
				model.setViewName("adminhome");
			} else {
				model.setViewName("userhome");
			}
		} else {
			model.setViewName("login");
		}

		return model;
	}

	/*
	 * @RequestMapping(value = "Electronicshome/") public ModelAndView
	 * Electronics(ModelAndView model, HttpServletRequest request) throws
	 * IOException {
	 * 
	 * 
	 * String role = user.getRole();
	 * 
	 * HttpSession session = request.getSession(); session.setAttribute("uname",
	 * uname); session.setAttribute("uid", user.getUserId());
	 * 
	 * List<Laptop> listLaptop = laptopService.getAllLaptops(); List<HeadPhone>
	 * listHeadPhone = headphoneService.getAllHeadPhones(); List<Mobile> listMobile
	 * = mobileService.getAllMobiles(); List<TV> listTV = tvService.getAllTVs();
	 * List<SmartWatch> listSmartWatch = smartwatchService.getAllSmartWatchs();
	 * List<Tablet> listTablet = tabletService.getAllTablets();
	 * model.addObject("listLaptop", listLaptop); model.addObject("listHeadPhone",
	 * listHeadPhone); model.addObject("listMobile", listMobile);
	 * model.addObject("listTV", listTV); model.addObject("listSmartWatch",
	 * listSmartWatch); model.addObject("listTablet", listTablet);
	 * model.setViewName("inventory"); model.setViewName("userhome");
	 * System.out.println("product");
	 * 
	 * if(role.equalsIgnoreCase("user")) {
	 * 
	 * } else if(role.equalsIgnoreCase("admin")) { model.setViewName("adminhome"); }
	 * 
	 * 
	 * return model; }
	 */

	@RequestMapping(value = "register")
	public ModelAndView register(ModelAndView model) throws IOException {
		User user = new User();
		model.addObject(user);
		model.setViewName("register");
		return model;
	}

	@RequestMapping(value = "logout")
	public ModelAndView logout(ModelAndView model, HttpServletRequest request) throws IOException {
		HttpSession session = request.getSession();
		session.invalidate();

		return new ModelAndView("redirect:/");
	}

	@RequestMapping(value = "/checkLogin")
	public ModelAndView checklogin(@RequestParam("username") String uname, @RequestParam("password") String pass,
			ModelAndView model, HttpServletRequest request) throws IOException {

		List<User> users = userService.getAllUsers();
		boolean flag = false;
		for (User user : users) {
			if (user.getUserName().equals(uname) && user.getPassword().equals(pass)) {

				String role = user.getRole();
				flag = true;

				HttpSession session = request.getSession();
				session.setAttribute("uname", uname);
				session.setAttribute("uid", user.getUserId());

				if (role.equalsIgnoreCase("user")) {
					List<Laptop> listLaptop = laptopService.getAllLaptops();
					List<HeadPhone> listHeadPhone = headphoneService.getAllHeadPhones();
					List<Mobile> listMobile = mobileService.getAllMobiles();
					List<TV> listTV = tvService.getAllTVs();
					List<SmartWatch> listSmartWatch = smartwatchService.getAllSmartWatchs();
					List<Tablet> listTablet = tabletService.getAllTablets();
					/*
					 * model.addObject("listLaptop", listLaptop); model.addObject("listHeadPhone",
					 * listHeadPhone); model.addObject("listMobile", listMobile);
					 * model.addObject("listTV", listTV); model.addObject("listSmartWatch",
					 * listSmartWatch); model.addObject("listTablet", listTablet);
					 * model.setViewName("inventory"); model.setViewName("userhome");
					 */
					session.setAttribute("listLaptop", listLaptop);
					session.setAttribute("listHeadPhone", listHeadPhone);
					session.setAttribute("listMobile", listMobile);
					session.setAttribute("listTV", listTV);
					session.setAttribute("listSmartWatch", listSmartWatch);
					session.setAttribute("listTablet", listTablet);
					model.setViewName("userhome");

				} else if (role.equalsIgnoreCase("admin")) {
					model.setViewName("adminhome");
				}
			}
		}

		if (flag == false) {
			model.addObject("error_message", "User Name or password is incorrect Please login again...");
			model.setViewName("login");
		}
		return model;
	}

	@RequestMapping(value = "/addUser", method = RequestMethod.POST)
	public ModelAndView addUser(@ModelAttribute User user, ModelAndView model) {

		List<User> AllUsers = userService.getAllUsers();

		boolean flag = false;

		for (User oneuser : AllUsers) {
			if (oneuser.getUserName().equalsIgnoreCase(user.getUserName())
					|| oneuser.getEmail().equalsIgnoreCase(user.getEmail())) {
				flag = true;
				if (oneuser.getUserName().equalsIgnoreCase(user.getUserName())) {
					model.addObject("error_msg",
							"Username is already taken.. Please try again using different Username !");
				} else {
					model.addObject("error_msg", "Email is already taken..! Please try again using different Email !");
				}
				model.setViewName("register");
			}
		}

		if (flag == false) {
			userService.addUser(user);
			model.addObject("success_msg", "Registration Successful");
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

	@RequestMapping(value = "/users")
	public ModelAndView listUser(ModelAndView model, HttpServletRequest request) throws IOException {
		HttpSession session = request.getSession();
		if (session.getAttribute("uid") != null) {
			User user = userService.getUser((int) session.getAttribute("uid"));
			if (user.getRole().equals("admin")) {
				List<User> listUser = userService.getAllUsers();
				model.addObject("listUser", listUser);
				model.setViewName("userList");
			}
		} else {
			return new ModelAndView("redirect:/");
		}

		return model;
	}

	@RequestMapping(value = "/profile")
	public ModelAndView Profile(ModelAndView model, HttpServletRequest request) throws IOException {

		HttpSession session = request.getSession();
		if (session.getAttribute("uid") != null) {
			User user = userService.getUser((int) session.getAttribute("uid"));
			model.addObject("user", user);
			model.setViewName("ProfilePage");
		} else {
			return new ModelAndView("redirect:/");
		}

		return model;
	}

	@RequestMapping(value = "/updateProfile")
	public ModelAndView updateProfile(ModelAndView model, HttpServletRequest request, @ModelAttribute User user)
			throws IOException {

		HttpSession session = request.getSession();
		if (session.getAttribute("uid") != null) {
			model.setViewName("ProfilePage");
			userService.updateUser(user);
			model.addObject("success_msg", "Profile updated successfuly...");
		} else {
			return new ModelAndView("redirect:/");
		}

		return model;
	}
	
	@RequestMapping(value = "/aboutUs")
	public ModelAndView AboutUs(ModelAndView model, HttpServletRequest request) throws IOException {
		model.setViewName("AboutUs");

		return model;
	}
}