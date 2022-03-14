/**
 * 
 */
package controller;

/**
 * @author devoz
 *
 */

import java.io.IOException;
import java.util.List;
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

import model.*;
import service.*;

@Controller
@RequestMapping(value = "/Product")
public class ProductController {

	private static final Logger logger = Logger
			.getLogger(UserController.class);
	
	public ProductController() {
		System.out.println("ProductController()");
	}
	
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
		
	@RequestMapping(value = "/laptop")
	public ModelAndView listLaptop(ModelAndView model, HttpServletRequest request) throws IOException {
		HttpSession session = request.getSession();
		if(session.getAttribute("uid") != null) {
			List<Laptop> listLaptop = laptopService.getAllLaptops();
			model.addObject("listLaptop", listLaptop);
			model.setViewName("laptop");
		}
		else {
			return new ModelAndView("redirect:/");
		}
		
		return model;
	}
	
	@RequestMapping(value = "/buyProduct")
	public ModelAndView buyProduct(ModelAndView model, HttpServletRequest request) throws IOException {
		HttpSession session = request.getSession();
		
		model.setViewName("userhome");
		return model;
	}
	
	@RequestMapping(value = "/headphone")
	public ModelAndView listheadphone(ModelAndView model, HttpServletRequest request) throws IOException {
		HttpSession session = request.getSession();
		if(session.getAttribute("uid") != null) {
			List<HeadPhone> listHeadPhone = headphoneService.getAllHeadPhones();
			model.addObject("listHeadPhone", listHeadPhone);
			model.setViewName("headphone");
		}
		else {
			return new ModelAndView("redirect:/");
		}
		return model;
	}
	
	@RequestMapping(value = "/mobile")
	public ModelAndView listmobile(ModelAndView model, HttpServletRequest request) throws IOException {
		HttpSession session = request.getSession();
		if(session.getAttribute("uid") != null) {
			List<Mobile> listMobile = mobileService.getAllMobiles();
			model.addObject("listMobile", listMobile);
			model.setViewName("mobile");
		}
		else {
			return new ModelAndView("redirect:/");
		}
		return model;
	}
	
	@RequestMapping(value = "/tv")
	public ModelAndView listTv(ModelAndView model, HttpServletRequest request) throws IOException {
		HttpSession session = request.getSession();
		if(session.getAttribute("uid") != null) {
			List<TV> listTV = tvService.getAllTVs();
			model.addObject("listTV", listTV);
			model.setViewName("tv");
		}
		else {
			return new ModelAndView("redirect:/");
		}
		return model;
	}
	
	@RequestMapping(value = "/smartwatch")
	public ModelAndView listSmartWatch(ModelAndView model, HttpServletRequest request) throws IOException {
		HttpSession session = request.getSession();
		if(session.getAttribute("uid") != null) {
			List<SmartWatch> listSmartWatch = smartwatchService.getAllSmartWatchs();
			model.addObject("listSmartWatch", listSmartWatch);
			model.setViewName("smartwatch");
		}
		else {
			return new ModelAndView("redirect:/");
		}
		
		return model;
	}
	
	@RequestMapping(value = "/tablet")
	public ModelAndView listTablet(ModelAndView model, HttpServletRequest request) throws IOException {
		HttpSession session = request.getSession();
		if(session.getAttribute("uid") != null) {
			List<Tablet> listTablet = tabletService.getAllTablets();
			model.addObject("listTablet", listTablet);
			model.setViewName("tablet");
		}
		else {
			return new ModelAndView("redirect:/");
		}
		return model;
	}
	
	@RequestMapping(value = "/inventory")
	public ModelAndView listInventory(ModelAndView model, HttpServletRequest request) throws IOException {
		HttpSession session = request.getSession();
		if(session.getAttribute("uid") != null) {
			List<Laptop> listLaptop = laptopService.getAllLaptops();
			List<HeadPhone> listHeadPhone = headphoneService.getAllHeadPhones();
			List<Mobile> listMobile = mobileService.getAllMobiles();
			List<TV> listTV = tvService.getAllTVs();
			List<SmartWatch> listSmartWatch = smartwatchService.getAllSmartWatchs();
			List<Tablet> listTablet = tabletService.getAllTablets();
			model.addObject("listLaptop", listLaptop);
			model.addObject("listHeadPhone", listHeadPhone);
			model.addObject("listMobile", listMobile);
			model.addObject("listTV", listTV);
			model.addObject("listSmartWatch", listSmartWatch);
			model.addObject("listTablet", listTablet);
			model.setViewName("inventory");
		}
		else {
			return new ModelAndView("redirect:/");
		}
		
		return model;
	}

//	@RequestMapping(value = "/newProduct")
//	public ModelAndView newProduct(@RequestParam("radio-stacked") String pType, ModelAndView model) {
//		if(pType.equals("laptop")) {
//			Laptop laptop = new Laptop();
//			model.addObject("pType", laptop);
//			model.setViewName("EmployeeForm");
//			return new ModelAndView("redirect:/Product/laptop");
//		}
//		else if(pType.equals("mobile")) {
//			Mobile mobile = new Mobile();
//			model.addObject("pType", mobile);
//			model.setViewName("EmployeeForm");
//		}
//		else if(pType.equals("headphone")) {
//			HeadPhone headphone = new HeadPhone();
//			model.addObject("pType", headphone);
//			model.setViewName("EmployeeForm");
//		}
//		else if(pType.equals("smartwatch")) {
//			SmartWatch smartwatch = new SmartWatch();
//			model.addObject("pType", smartwatch);
//			model.setViewName("EmployeeForm");
//		}
//		else if(pType.equals("tablet")) {
//			Tablet tablet = new Tablet();
//			model.addObject("pType", tablet);
//			model.setViewName("EmployeeForm");
//		}
//		else if(pType.equals("tv")) {
//			TV tv = new TV();
//			model.addObject("pType", tv);
//			model.setViewName("EmployeeForm");
//		}
//		return model;
//	}
	
	@RequestMapping(value = "/newLaptop", method = RequestMethod.GET)
	public ModelAndView newLaptop(ModelAndView model) {
		Laptop laptop = new Laptop();
		model.addObject("laptop", laptop);
		model.setViewName("LaptopForm");
		return model;
	}
	
	@RequestMapping(value = "/saveLaptop", method = RequestMethod.POST)
	public ModelAndView saveEmployee(@ModelAttribute Laptop laptop) {
		if (laptop.getP_Id() == 0) { // if employee id is 0 then creating the
			// employee other updating the employee
			laptopService.addLaptop(laptop);
		} else {
			laptopService.updateLaptop(laptop);
		}
		return new ModelAndView("redirect:/Product/laptop");
	}
	
	@RequestMapping(value = "/newHeadPhone", method = RequestMethod.GET)
	public ModelAndView newHeadPhone(ModelAndView model) {
		HeadPhone headphone = new HeadPhone();
		model.addObject("headphone", headphone);
		model.setViewName("HeadPhoneForm");
		return model;
	}
	
	@RequestMapping(value = "/saveHeadPhone", method = RequestMethod.POST)
	public ModelAndView saveEmployee(@ModelAttribute HeadPhone headphone) {
		if (headphone.getP_Id() == 0) { // if employee id is 0 then creating the
			// employee other updating the employee
			headphoneService.addHeadPhone(headphone);
		} else {
			headphoneService.updateHeadPhone(headphone);
		}
		return new ModelAndView("redirect:/Product/headphone");
	}
	
	@RequestMapping(value = "/newMobile", method = RequestMethod.GET)
	public ModelAndView newMobile(ModelAndView model) {
		Mobile mobile = new Mobile();
		model.addObject("mobile", mobile);
		model.setViewName("MobileForm");
		return model;
	}
	
	@RequestMapping(value = "/saveMobile", method = RequestMethod.POST)
	public ModelAndView saveEmployee(@ModelAttribute Mobile mobile) {
		if (mobile.getP_Id() == 0) { // if employee id is 0 then creating the
			// employee other updating the employee
			mobileService.addMobile(mobile);
		} else {
			mobileService.updateMobile(mobile);
		}
		return new ModelAndView("redirect:/Product/mobile");
	}
	
	@RequestMapping(value = "/newSmartWatch", method = RequestMethod.GET)
	public ModelAndView newSmartWatch(ModelAndView model) {
		SmartWatch smartwatch = new SmartWatch();
		model.addObject("smartwatch", smartwatch);
		model.setViewName("SmartWatchForm");
		return model;
	}
	
	@RequestMapping(value = "/saveSmartWatch", method = RequestMethod.POST)
	public ModelAndView saveSmartWatch(@ModelAttribute SmartWatch smartwatch) {
		if (smartwatch.getP_Id() == 0) { // if employee id is 0 then creating the
			// employee other updating the employee
			smartwatchService.addSmartWatch(smartwatch);
		} else {
			smartwatchService.updateSmartWatch(smartwatch);
		}
		return new ModelAndView("redirect:/Product/smartwatch");
	}
	
	@RequestMapping(value = "/newTablet", method = RequestMethod.GET)
	public ModelAndView newTablet(ModelAndView model) {
		Tablet tablet = new Tablet();
		model.addObject("tablet", tablet);
		model.setViewName("TabletForm");
		return model;
	}
	
	@RequestMapping(value = "/saveTablet", method = RequestMethod.POST)
	public ModelAndView saveTablet(@ModelAttribute Tablet tablet) {
		if (tablet.getP_Id() == 0) { // if employee id is 0 then creating the
			// employee other updating the employee
			tabletService.addTablet(tablet);
		} else {
			tabletService.updateTablet(tablet);
		}
		return new ModelAndView("redirect:/Product/tablet");
	}
	
	@RequestMapping(value = "/newTV", method = RequestMethod.GET)
	public ModelAndView newTV(ModelAndView model) {
		TV tv = new TV();
		model.addObject("tv", tv);
		model.setViewName("TVForm");
		return model;
	}
	
	@RequestMapping(value = "/saveTV", method = RequestMethod.POST)
	public ModelAndView saveTablet(@ModelAttribute TV tv) {
		if (tv.getP_Id() == 0) { // if employee id is 0 then creating the
			// employee other updating the employee
			tvService.addTV(tv);
		} else {
			tvService.updateTV(tv);
		}
		return new ModelAndView("redirect:/Product/tv");
	}
}
