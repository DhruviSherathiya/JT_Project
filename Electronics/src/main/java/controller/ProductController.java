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
	
	@RequestMapping(value = "/laptop")
	public ModelAndView listLaptop(ModelAndView model) throws IOException {
		List<Laptop> listLaptop = laptopService.getAllLaptops();
		model.addObject("listLaptop", listLaptop);
		model.setViewName("laptop");
		return model;
	}
	
	@RequestMapping(value = "/headphone")
	public ModelAndView listheadphone(ModelAndView model) throws IOException {
		List<HeadPhone> listHeadPhone = headphoneService.getAllHeadPhones();
		model.addObject("listHeadPhone", listHeadPhone);
		model.setViewName("headphone");
		return model;
	}
	
	@RequestMapping(value = "/mobile")
	public ModelAndView listmobile(ModelAndView model) throws IOException {
		List<Mobile> listMobile = mobileService.getAllMobiles();
		model.addObject("listMobile", listMobile);
		model.setViewName("mobile");
		return model;
	}
	
	@RequestMapping(value = "/tv")
	public ModelAndView listTv(ModelAndView model) throws IOException {
		List<TV> listTV = tvService.getAllTVs();
		model.addObject("listTV", listTV);
		model.setViewName("tv");
		return model;
	}

//	@RequestMapping(value = "/newProduct", method = RequestMethod.GET)
//	public ModelAndView newProduct(@RequestParam("radio-stacked") String pType, ModelAndView model) {
//		if(pType.equals("laptop")) {
//			Laptop laptop = new Laptop();
//			model.addObject("pType", laptop);
//			model.setViewName("EmployeeForm");
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
}
