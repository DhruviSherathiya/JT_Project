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
	@Autowired
	private ProductService productService;
		
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
	
<<<<<<< Updated upstream
=======
	@RequestMapping(value = "/editLaptop")
	public ModelAndView editLaptop(HttpServletRequest request) {
		int pId = Integer.parseInt(request.getParameter("id"));
		Laptop laptop = laptopService.getLaptop(pId);
		ModelAndView model = new ModelAndView("LaptopForm");
		model.addObject("laptop", laptop);

		return model;
	}
	
	@RequestMapping(value = "/deleteLaptop")
	public ModelAndView deleteEmployee(HttpServletRequest request) {
		int pId = Integer.parseInt(request.getParameter("id"));
		laptopService.deleteLaptop(pId);
		return new ModelAndView("redirect:/");
	}
	
	
	@RequestMapping(value = "/buyProduct")
	public ModelAndView buyProduct(ModelAndView model, HttpServletRequest request) throws IOException {
		HttpSession session = request.getSession();
		
		model.setViewName("userhome");
		return model;
	}
	
>>>>>>> Stashed changes
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
	
	@RequestMapping(value = "/editHeadphone")
	public ModelAndView editHeadphone(HttpServletRequest request) {
		int pId = Integer.parseInt(request.getParameter("id"));
		HeadPhone headphone = headphoneService.getHeadPhone(pId);
		ModelAndView model = new ModelAndView("HeadPhoneForm");
		model.addObject("headphone", headphone);

		return model;
	}
	
	@RequestMapping(value = "/deleteHeadPhone")
	public ModelAndView deleteHeadphone(HttpServletRequest request) {
		int pId = Integer.parseInt(request.getParameter("id"));
		headphoneService.deleteHeadPhone(pId);
		return new ModelAndView("redirect:/");
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
	
	@RequestMapping(value = "/editMobile")
	public ModelAndView editMobile(HttpServletRequest request) {
		int pId = Integer.parseInt(request.getParameter("id"));
		Mobile mobile = mobileService.getMobile(pId);
		ModelAndView model = new ModelAndView("MobileForm");
		model.addObject("mobile", mobile);

		return model;
	}
	
	@RequestMapping(value = "/deleteMobile")
	public ModelAndView deleteMobile(HttpServletRequest request) {
		int pId = Integer.parseInt(request.getParameter("id"));
		mobileService.deleteMobile(pId);
		return new ModelAndView("redirect:/");
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
	
	@RequestMapping(value = "/editTv")
	public ModelAndView editTv(HttpServletRequest request) {
		int pId = Integer.parseInt(request.getParameter("id"));
		TV tv = tvService.getTV(pId);
		ModelAndView model = new ModelAndView("TVForm");
		model.addObject("tv", tv);

		return model;
	}
	
	@RequestMapping(value = "/deleteTV")
	public ModelAndView deleteTv(HttpServletRequest request) {
		int pId = Integer.parseInt(request.getParameter("id"));
		tvService.deleteTV(pId);
		return new ModelAndView("redirect:/");
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
	
	@RequestMapping(value = "/editSmartWatch")
	public ModelAndView editSmartWatch(HttpServletRequest request) {
		int pId = Integer.parseInt(request.getParameter("id"));
		SmartWatch smartwatch = smartwatchService.getSmartWatch(pId);
		ModelAndView model = new ModelAndView("TVForm");
		model.addObject("smartwatch", smartwatch);

		return model;
	}
	
	@RequestMapping(value = "/deleteSmartWatch")
	public ModelAndView deleteSmartWatch(HttpServletRequest request) {
		int pId = Integer.parseInt(request.getParameter("id"));
		smartwatchService.deleteSmartWatch(pId);
		return new ModelAndView("redirect:/");
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
	
	@RequestMapping(value = "/editTablet")
	public ModelAndView editTablet(HttpServletRequest request) {
		int pId = Integer.parseInt(request.getParameter("id"));
		Tablet tablet = tabletService.getTablet(pId);
		ModelAndView model = new ModelAndView("TabletForm");
		model.addObject("tablet", tablet);

		return model;
	}
	
	@RequestMapping(value = "/deleteTablet")
	public ModelAndView deleteTablet(HttpServletRequest request) {
		int pId = Integer.parseInt(request.getParameter("id"));
		tabletService.deleteTablet(pId);
		return new ModelAndView("redirect:/");
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
	
	@RequestMapping(value = "/editLaptop")
	public ModelAndView editLaptop(HttpServletRequest request) {
		int pId = Integer.parseInt(request.getParameter("id"));
		Laptop laptop = laptopService.getLaptop(pId);
		ModelAndView model = new ModelAndView("LaptopForm");
		model.addObject("laptop", laptop);
		
		return model;
	}
	
	@RequestMapping(value = "/deleteLaptop")
	public ModelAndView deleteEmployee(HttpServletRequest request) {
		int pId = Integer.parseInt(request.getParameter("id"));
		laptopService.deleteLaptop(pId);
		return new ModelAndView("redirect:/");
	}
	
	@RequestMapping(value = "/newHeadPhone", method = RequestMethod.GET)
	public ModelAndView newHeadPhone(ModelAndView model) {
		HeadPhone headphone = new HeadPhone();
		model.addObject("headphone", headphone);
		model.setViewName("HeadPhoneForm");
		return model;
	}
	
	@RequestMapping(value = "/saveHeadPhone", method = RequestMethod.POST)
	public ModelAndView saveHeadphone(@ModelAttribute HeadPhone headphone) {
		if (headphone.getP_Id() == 0) { // if employee id is 0 then creating the
			// employee other updating the employee
			headphoneService.addHeadPhone(headphone);
		} else {
			headphoneService.updateHeadPhone(headphone);
		}
		return new ModelAndView("redirect:/Product/headphone");
	}
	
	@RequestMapping(value = "/editHeadPhone")
	public ModelAndView editHeadPhone(HttpServletRequest request) {
		int pId = Integer.parseInt(request.getParameter("id"));
		HeadPhone headphone = headphoneService.getHeadPhone(pId);
		ModelAndView model = new ModelAndView("HeadPhoneForm");
		model.addObject("headphone", headphone);

		return model;
	}
	
	@RequestMapping(value = "/deleteHeadPhone")
	public ModelAndView deleteHeadPhone(HttpServletRequest request) {
		int pId = Integer.parseInt(request.getParameter("id"));
		headphoneService.deleteHeadPhone(pId);
		return new ModelAndView("redirect:/");
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
	
	@RequestMapping(value = "/editMobile")
	public ModelAndView editMobile(HttpServletRequest request) {
		int pId = Integer.parseInt(request.getParameter("id"));
		Mobile mobile = mobileService.getMobile(pId);
		ModelAndView model = new ModelAndView("MobileForm");
		model.addObject("mobile", mobile);

		return model;
	}
	
	@RequestMapping(value = "/deleteMobile")
	public ModelAndView deleteMobile(HttpServletRequest request) {
		int pId = Integer.parseInt(request.getParameter("id"));
		mobileService.deleteMobile(pId);
		return new ModelAndView("redirect:/");
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
	
	@RequestMapping(value = "/editSmartWatch")
	public ModelAndView editSmartWatch(HttpServletRequest request) {
		int pId = Integer.parseInt(request.getParameter("id"));
		SmartWatch smartwatch = smartwatchService.getSmartWatch(pId);
		ModelAndView model = new ModelAndView("SmartWatchForm");
		model.addObject("smartwatch", smartwatch);

		return model;
	}
	
	@RequestMapping(value = "/deleteSmartWatch")
	public ModelAndView deleteSmartWatch(HttpServletRequest request) {
		int pId = Integer.parseInt(request.getParameter("id"));
		smartwatchService.deleteSmartWatch(pId);
		return new ModelAndView("redirect:/");
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
	
	@RequestMapping(value = "/editTablet")
	public ModelAndView editTablet(HttpServletRequest request) {
		int pId = Integer.parseInt(request.getParameter("id"));
		Tablet tablet = tabletService.getTablet(pId);
		ModelAndView model = new ModelAndView("TabletForm");
		model.addObject("tablet", tablet);

		return model;
	}
	
	@RequestMapping(value = "/deleteTablet")
	public ModelAndView deleteTablet(HttpServletRequest request) {
		int pId = Integer.parseInt(request.getParameter("id"));
		tabletService.deleteTablet(pId);
		return new ModelAndView("redirect:/");
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
	
	@RequestMapping(value = "/editTV")
	public ModelAndView editTV(HttpServletRequest request) {
		int pId = Integer.parseInt(request.getParameter("id"));
		TV tv = tvService.getTV(pId);
		ModelAndView model = new ModelAndView("TVForm");
		model.addObject("tv", tv);

		return model;
	}
	
	@RequestMapping(value = "/deleteTV")
	public ModelAndView deleteTV(HttpServletRequest request) {
		int pId = Integer.parseInt(request.getParameter("id"));
		tvService.deleteTV(pId);
		return new ModelAndView("redirect:/");
	}
	
	@RequestMapping(value = "/singleProduct")
	public ModelAndView singleProduct(@RequestParam("pid") int pid, ModelAndView model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		if(session.getAttribute("uid") == null) {
			return new ModelAndView("redirect:/");
		}
		else {
			String type = productService.getProduct(pid).getP_Type();
			
			if(type.equalsIgnoreCase("laptop")) {
				Laptop laptop = laptopService.getLaptop(pid);
				model.addObject(laptop);
				model.setViewName("singleLaptop");
			}
			else if(type.equalsIgnoreCase("mobile")) {
				Mobile mobile = mobileService.getMobile(pid);
				model.addObject(mobile);
				model.setViewName("singleMobile");
			}
			else if(type.equalsIgnoreCase("smartWatch")) {
				SmartWatch smartWatch = smartwatchService.getSmartWatch(pid);
				model.addObject(smartWatch);
				model.setViewName("singleSmartWatch");
			}
			else if(type.equalsIgnoreCase("headphone")) {
				HeadPhone headPhone = headphoneService.getHeadPhone(pid);
				model.addObject(headPhone);
				model.setViewName("singleHeadphone");
			}
			else if(type.equalsIgnoreCase("tv")) {
				TV TV = tvService.getTV(pid);
				model.addObject(TV);
				model.setViewName("singleTV");
			}
			else if(type.equalsIgnoreCase("tablet")) {
				Tablet tablet = tabletService.getTablet(pid);
				model.addObject(tablet);
				model.setViewName("singleTablet");
			}
			return model;
		}
	}
}
