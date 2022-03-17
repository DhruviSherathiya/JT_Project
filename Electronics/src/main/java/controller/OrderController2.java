/**
 * 
 */
package controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import java.time.LocalDateTime;  
import java.time.format.DateTimeFormatter; 

import model.*;
import service.*;

/**
 * @author devoz
 *
 */

@Controller
public class OrderController2 {

	private static final Logger logger = Logger
			.getLogger(UserController.class);

	public OrderController2() {
		System.out.println("OrderController()");
	}
	
	@Autowired
	private OrderService orderService;
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private OrderItemService orderItemService;
	
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
		
	@RequestMapping(value = "/buyProduct")
	public ModelAndView buyProduct(@RequestParam("pid") int pid, HttpServletRequest request) throws IOException {
		HttpSession session = request.getSession();
		Product product = productService.getProduct(pid);
		int originalQuantity = product.getP_Quantity();
		
		String type = product.getP_Type();
		
		if(type.equalsIgnoreCase("laptop")) {
			ModelAndView model = new ModelAndView("OrderLaptop");
			
			if(originalQuantity < 1) {
		    	model.addObject("message","Product is out of stock currently..!");
		    	return model;
		    }
			
			Laptop laptop = laptopService.getLaptop(pid);
			model.addObject(laptop);
			
			double price = product.getP_Price();
			User user = userService.getUser((int)session.getAttribute("uid"));
			Order order = new Order();
			order.setUser(user);
			order.setTotalAmount(price);
			java.sql.Date date = new java.sql.Date(System.currentTimeMillis());
			order.setOrderDate(date);
			
			orderService.addOrder(order);
			
			Order_Items orderItem = new Order_Items();
			orderItem.setOrder(order);
			orderItem.setProduct(laptop);
			orderItem.setProduct_Name(laptop.getlName());
			orderItem.setQuantity(1);
			orderItem.setProduct_Price(price);
			
			orderItemService.addOrderItem(orderItem);
			
			return model;
		}
		else if(type.equalsIgnoreCase("mobile")) {
			ModelAndView model = new ModelAndView("OrderMobile");
			
			if(originalQuantity < 1) {
		    	model.addObject("message","Product is out of stock currently..!");
		    	return model;
		    }
			
			Mobile mobile = mobileService.getMobile(pid);
			model.addObject(mobile);
			
			double price = product.getP_Price();
			User user = userService.getUser((int)session.getAttribute("uid"));
			Order order = new Order();
			order.setUser(user);
			order.setTotalAmount(price);
			java.sql.Date date = new java.sql.Date(System.currentTimeMillis());
			order.setOrderDate(date);
			
			orderService.addOrder(order);
			
			Order_Items orderItem = new Order_Items();
			orderItem.setOrder(order);
			orderItem.setProduct(mobile);
			orderItem.setProduct_Name(mobile.getmName());
			orderItem.setQuantity(1);
			orderItem.setProduct_Price(price);
			
			orderItemService.addOrderItem(orderItem);
			
			return model;
		}
//		else if(type.equalsIgnoreCase("smartWatch")) {
//			if(originalQuantity < 1) {
//		    	ModelAndView model = new ModelAndView("Userhome");
//		    	model.addObject("message","Product is out of stock currently..!");
//		    	return model;
//		    }
//		}
//		else if(type.equalsIgnoreCase("headphone")) {
//			if(originalQuantity < 1) {
//		    	ModelAndView model = new ModelAndView("Userhome");
//		    	model.addObject("message","Product is out of stock currently..!");
//		    	return model;
//		    }
//		}
//		else if(type.equalsIgnoreCase("tv")) {
//			if(originalQuantity < 1) {
//		    	ModelAndView model = new ModelAndView("Userhome");
//		    	model.addObject("message","Product is out of stock currently..!");
//		    	return model;
//		    }
//		}
//		else if(type.equalsIgnoreCase("tablet")) {
//			if(originalQuantity < 1) {
//		    	ModelAndView model = new ModelAndView("Userhome");
//		    	model.addObject("message","Product is out of stock currently..!");
//		    	return model;
//		    }
//		}
		return null;

	}
}
