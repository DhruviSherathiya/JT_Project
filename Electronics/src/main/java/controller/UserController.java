package controller;

import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.mail.MessagingException;
import javax.mail.internet.AddressException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
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
import utilities.JavaEmail;

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
	
	int token1 = 0;

	@RequestMapping(value = "/")
	public ModelAndView login(ModelAndView model, HttpServletRequest request) throws IOException {
		HttpSession session = request.getSession();
		session.removeAttribute("error_reset");
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

		HttpSession session = request.getSession();
		session.removeAttribute("success_reset");
		List<User> users = userService.getAllUsers();
		boolean flag = false;
		for (User user : users) {
			if (user.getUserName().equals(uname) && user.getPassword().equals(pass)) {

				String role = user.getRole();
				flag = true;

				session.setAttribute("uname", uname);
				session.setAttribute("uid", user.getUserId());
				session.setAttribute("role", user.getRole());
				
				if (role.equalsIgnoreCase("user")) {
					List<Laptop> listLaptop = laptopService.getAllLaptops();
					List<HeadPhone> listHeadPhone = headphoneService.getAllHeadPhones();
					List<Mobile> listMobile = mobileService.getAllMobiles();
					List<TV> listTV = tvService.getAllTVs();
					List<SmartWatch> listSmartWatch = smartwatchService.getAllSmartWatchs();
					List<Tablet> listTablet = tabletService.getAllTablets();

					session.setAttribute("listLaptop", listLaptop);
					session.setAttribute("listHeadPhone", listHeadPhone);
					session.setAttribute("listMobile", listMobile);
					session.setAttribute("listTV", listTV);
					session.setAttribute("listSmartWatch", listSmartWatch);
					session.setAttribute("listTablet", listTablet);
//					model.setViewName("userhome");
					return new ModelAndView("redirect:/");

				} else if (role.equalsIgnoreCase("admin")) {
//					model.setViewName("adminhome");
					return new ModelAndView("redirect:/");
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
	

//	@RequestMapping(value = "/contactUs")
//	public ModelAndView contactUs(ModelAndView model) {
//		model.setViewName("ContactUs");
//		return model;
//		
//	}
	
	@RequestMapping(value = "/contactUs")
	public ModelAndView ContactUs(ModelAndView model, HttpServletRequest request) throws IOException {
		model.setViewName("ContactUs");

		return model;
	}
	

	/*
	 * @RequestMapping(value = "/footer") public ModelAndView footer(ModelAndView
	 * model) { model.setViewName("footer"); return model;
	 * 
	 * }
	 */

	@RequestMapping(value = "/aboutUs")
	public ModelAndView AboutUs(ModelAndView model, HttpServletRequest request) throws IOException {
		model.setViewName("aboutUs");

		return model;
	}
	
	@RequestMapping(value = "/contact")
	public ModelAndView contact(@RequestParam("name") String username, @RequestParam("email") String email,@RequestParam("message") String message, HttpServletRequest request) throws IOException, AddressException, MessagingException {
	    
		String namestr = "<h3 style='display: inline'>Username: " + username + "<h3>";
		String emailstr = "<h3 style='display: inline'>Email: " + email + "<h3>";
		String msgstr = "<h3 style='display: inline'>Message: " + message + "<h3>";
		String subject = "Feedback For Electronics Ecommerce Website";
		String body = namestr + emailstr + msgstr;
        JavaEmail javaEmail = new JavaEmail();
        javaEmail.setMailServerProperties();
        String to[] = { "dduprojects12@gmail.com" };
        javaEmail.draftEmailMessage(to, subject, body);
        javaEmail.sendEmail(to, subject, body);
        return new ModelAndView("redirect:/contactUs");

	}
	
	@RequestMapping(value = "/refer")
	public ModelAndView refer(@RequestParam("name") String username, @RequestParam("email") String email, HttpServletRequest request) throws IOException, AddressException, MessagingException {
		String subject = "Electronic Ecommerce Website";
		String line = "<p>Your friend " + username + " has referred you an electronic ecommerce website. Please go through this link and have amazing shopping</p>";
		String link = "<p>http://localhost:8080/Electronics/</p>";
		String body = line + link;
        JavaEmail javaEmail = new JavaEmail();
        javaEmail.setMailServerProperties();
        String to[] = { email };
        javaEmail.draftEmailMessage(to, subject, body);
        javaEmail.sendEmail(to, subject, body);
		return new ModelAndView("redirect:/");
	}
	
	@RequestMapping(value = "/forgotPassword")
	public ModelAndView forgotPassword(ModelAndView mv) {
		mv.setViewName("forgotPassword");
		return mv;
	}
	
	@RequestMapping(value = "/resetValidate")
	public ModelAndView resetValidate(ModelAndView mv,@RequestParam("email") String email) throws AddressException, MessagingException {
		
		User user = userService.getUserByEmail(email);
		
		if( user.getUserName() != null ) {
			
			Random rand = new Random();
			token1 = rand.nextInt();
			
			String uName = user.getUserName();
			
			String subject = "Reset Password For Electronics Ecommerce Website";
			String body = "<p>Please go through this link to reset your password.</p><br>http://localhost:8080/Electronics/resetPassword/" + uName + "/" + token1;
	        JavaEmail javaEmail = new JavaEmail();
	        javaEmail.setMailServerProperties();
	        String to[] = { email };
	        javaEmail.draftEmailMessage(to, subject, body);
	        javaEmail.sendEmail(to, subject, body);
	        return new ModelAndView("redirect:/forgotPassword");
			
			
		}else
			return new ModelAndView("redirect:/forgotPassword");
	}
	
	@RequestMapping(value = "/resetPassword/{uName}/{token}")
	public ModelAndView reset(ModelAndView mv, @PathVariable String uName, @PathVariable String token) {
		if(token1 == Integer.parseInt(token)) {
			mv.setViewName("redirect:/{uName}/{token}/resetPassword");
			return mv;
		}
		else
			return new ModelAndView("redirect:/");
	}
	
	@RequestMapping(value = "/{uName}/{token}/resetPassword")
	public ModelAndView demo(ModelAndView mv,@PathVariable String uName) {
		mv.addObject("UserName", uName);
		mv.setViewName("resetPassword");
		return mv;
	}
	
	@RequestMapping(value = "/{uName}/{token}/newPassword")
	public ModelAndView updatePassword(ModelAndView mv,HttpServletRequest req) {
		
		String uname = req.getParameter("uname");
		String newpassword = req.getParameter("newPassword");
		String renewpassword = req.getParameter("cNewPassword");

		if(!newpassword.equals(renewpassword)) {
			HttpSession session = req.getSession();
			session.setAttribute("error_reset", "New password and reenter new password not matching.");
			return new ModelAndView("redirect:/{uName}/{token}/resetPassword");
		}
		User user = userService.getUserByUserName(uname);

		user.setPassword(newpassword);
		userService.updateUser(user);
		
		HttpSession session = req.getSession();
		session.setAttribute("success_reset", "Your password updated successfuly.");
		return new ModelAndView("redirect:/");
		
	}
	
}