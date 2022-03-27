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
import java.util.ArrayList;
import java.util.List;

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
	private CartService cartService;
	
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
			ModelAndView model = new ModelAndView("SingleProductConformOrder");
			
			if(originalQuantity < 1) {
		    	model.addObject("message","Product is out of stock currently..!");
		    	return model;
		    }
			
			Laptop laptop = laptopService.getLaptop(pid);
			model.addObject(laptop);
			
			double price = product.getP_Price();
			session.setAttribute("total",price);
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
			model.addObject(order);
			model.addObject(user);
			model.addObject("product", product);
			model.addObject("pname", laptop.getlName());
			return model;
		}
		else if(type.equalsIgnoreCase("mobile")) {
			ModelAndView model = new ModelAndView("SingleProductConformOrder");
			
			if(originalQuantity < 1) {
		    	model.addObject("message","Product is out of stock currently..!");
		    	return model;
		    }
			
			Mobile mobile = mobileService.getMobile(pid);
			model.addObject(mobile);
			
			double price = product.getP_Price();
			session.setAttribute("total",price);
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
			
			model.addObject(order);
			model.addObject(user);
			model.addObject("product", product);
			model.addObject("pname", mobile.getmName());
			return model;
		}
		else if(type.equalsIgnoreCase("smartWatch")) {
			ModelAndView model = new ModelAndView("SingleProductConformOrder");
			
			if(originalQuantity < 1) {
		    	model.addObject("message","Product is out of stock currently..!");
		    	return model;
		    }
			
			SmartWatch smartwatch = smartwatchService.getSmartWatch(pid);
			model.addObject(smartwatch);
			
			double price = product.getP_Price();
			session.setAttribute("total",price);
			User user = userService.getUser((int)session.getAttribute("uid"));
			Order order = new Order();
			order.setUser(user);
			order.setTotalAmount(price);
			java.sql.Date date = new java.sql.Date(System.currentTimeMillis());
			order.setOrderDate(date);
			
			orderService.addOrder(order);
			
			Order_Items orderItem = new Order_Items();
			orderItem.setOrder(order);
			orderItem.setProduct(smartwatch);
			orderItem.setProduct_Name(smartwatch.getsName());
			orderItem.setQuantity(1);
			orderItem.setProduct_Price(price);
			
			orderItemService.addOrderItem(orderItem);
			
			model.addObject(order);
			model.addObject(user);
			model.addObject("product", product);
			model.addObject("pname", smartwatch.getsName());
			return model;
		}
		else if(type.equalsIgnoreCase("headphone")) {
			ModelAndView model = new ModelAndView("SingleProductConformOrder");
			
			if(originalQuantity < 1) {
		    	model.addObject("message","Product is out of stock currently..!");
		    	return model;
		    }
			
			HeadPhone headphone = headphoneService.getHeadPhone(pid);
			model.addObject(headphone);
			
			double price = product.getP_Price();
			session.setAttribute("total",price);
			User user = userService.getUser((int)session.getAttribute("uid"));
			Order order = new Order();
			order.setUser(user);
			order.setTotalAmount(price);
			java.sql.Date date = new java.sql.Date(System.currentTimeMillis());
			order.setOrderDate(date);
			
			orderService.addOrder(order);
			
			Order_Items orderItem = new Order_Items();
			orderItem.setOrder(order);
			orderItem.setProduct(headphone);
			orderItem.setProduct_Name(headphone.gethName());
			orderItem.setQuantity(1);
			orderItem.setProduct_Price(price);
			
			orderItemService.addOrderItem(orderItem);
			
			model.addObject(order);
			model.addObject(user);
			model.addObject("product", product);
			model.addObject("pname", headphone.gethName());
			return model;
		}
		else if(type.equalsIgnoreCase("tv")) {
			ModelAndView model = new ModelAndView("SingleProductConformOrder");
			
			if(originalQuantity < 1) {
		    	model.addObject("message","Product is out of stock currently..!");
		    	return model;
		    }
			
			TV tv = tvService.getTV(pid);
			model.addObject(tv);
			
			double price = product.getP_Price();
			session.setAttribute("total",price);
			User user = userService.getUser((int)session.getAttribute("uid"));
			Order order = new Order();
			order.setUser(user);
			order.setTotalAmount(price);
			java.sql.Date date = new java.sql.Date(System.currentTimeMillis());
			order.setOrderDate(date);
			
			orderService.addOrder(order);
			
			Order_Items orderItem = new Order_Items();
			orderItem.setOrder(order);
			orderItem.setProduct(tv);
			orderItem.setProduct_Name(tv.getTvName());
			orderItem.setQuantity(1);
			orderItem.setProduct_Price(price);
			
			orderItemService.addOrderItem(orderItem);
			
			model.addObject(order);
			model.addObject(user);
			model.addObject("product", product);
			model.addObject("pname", tv.getTvName());
			return model;
		}
		else if(type.equalsIgnoreCase("tablet")) {
			ModelAndView model = new ModelAndView("SingleProductConformOrder");
			
			if(originalQuantity < 1) {
		    	model.addObject("message","Product is out of stock currently..!");
		    	return model;
		    }
			
			Tablet tablet = tabletService.getTablet(pid);
			model.addObject(tablet);
			
			double price = product.getP_Price();
			session.setAttribute("total",price);
			User user = userService.getUser((int)session.getAttribute("uid"));
			Order order = new Order();
			order.setUser(user);
			order.setTotalAmount(price);
			java.sql.Date date = new java.sql.Date(System.currentTimeMillis());
			order.setOrderDate(date);
			
			orderService.addOrder(order);
			
			Order_Items orderItem = new Order_Items();
			orderItem.setOrder(order);
			orderItem.setProduct(tablet);
			orderItem.setProduct_Name(tablet.gettName());
			orderItem.setQuantity(1);
			orderItem.setProduct_Price(price);
			
			orderItemService.addOrderItem(orderItem);
			
			model.addObject(order);
			model.addObject(user);
			model.addObject("product", product);
			model.addObject("pname", tablet.gettName());
			return model;
		}
		return null;

	}
	
	@RequestMapping(value = "/orderCart")
	public ModelAndView orderCart(HttpServletRequest request, ModelAndView model) {
		
		HttpSession session = request.getSession();
		
		User user = userService.getUser((int)session.getAttribute("uid"));
		
		Order order = new Order();
		order.setUser(user);
		
		List<Cart> listCart = cartService.getCartByUser(user);
		
		double totalCost = 0;
		for(Cart cart : listCart) {
			totalCost = totalCost + cart.getCart_Amount();
		}
		
		order.setTotalAmount(totalCost);
		session.setAttribute("total",totalCost);
		java.sql.Date date = new java.sql.Date(System.currentTimeMillis());
		order.setOrderDate(date);
		orderService.addOrder(order);
		List<Order_Items> items = new ArrayList<Order_Items>();
		
		for(Cart cart : listCart) {
			Product product = cart.getProduct();
			int originalQuantity = product.getP_Quantity();
			product.setP_Quantity(originalQuantity-cart.getCart_quantity());
			productService.updateProduct(product);
			
			Order_Items orderItem = new Order_Items();
			orderItem.setOrder(order);
			orderItem.setQuantity(cart.getCart_quantity());
			orderItem.setProduct_Price(cart.getCart_Amount());
			orderItem.setProduct(cart.getProduct());
			items.add(orderItem);
			
			if(product.getP_Type().equalsIgnoreCase("laptop")) {
				orderItem.setProduct_Name(laptopService.getLaptop(product.getP_Id()).getlName());
			}
			else if(product.getP_Type().equalsIgnoreCase("HeadPhone")) {
				orderItem.setProduct_Name(headphoneService.getHeadPhone(product.getP_Id()).gethName());
			}
			else if(product.getP_Type().equalsIgnoreCase("mobile")) {
				orderItem.setProduct_Name(mobileService.getMobile(product.getP_Id()).getmName());
			}
			else if(product.getP_Type().equalsIgnoreCase("smartwatch")) {
				orderItem.setProduct_Name(smartwatchService.getSmartWatch(product.getP_Id()).getsName());
			}
			else if(product.getP_Type().equalsIgnoreCase("tablet")) {
				orderItem.setProduct_Name(tabletService.getTablet(product.getP_Id()).gettName());
			}
			else if(product.getP_Type().equalsIgnoreCase("tv")) {
				orderItem.setProduct_Name(tvService.getTV(product.getP_Id()).getTvName());
			}
			
			
			
			orderItemService.addOrderItem(orderItem);
			cartService.deleteCart(cart.getCart_id());
		}
		model.addObject("items",items);
		model.addObject("listCart",listCart);
		model.addObject(order);
		model.addObject(user);
		model.setViewName("OrderCart");
		return model;
	}
	
	@RequestMapping(value = "/myOrder")
	public ModelAndView myOrder(ModelAndView model, HttpServletRequest request) throws IOException {
		
		HttpSession session = request.getSession();
		if (session.getAttribute("uid") != null) {
			User user = userService.getUser((int) session.getAttribute("uid"));
			List orders = orderService.getOrderByUser(user);
			model.addObject("orders", orders);
			model.setViewName("myOrder");
			return model;
		}
		else {
			model.setViewName("login");
			return new ModelAndView("redirect:/");
		}
	}
	
	@RequestMapping(value = "/payment")
	public ModelAndView payment(ModelAndView model, HttpServletRequest request) throws IOException {
		
		HttpSession session = request.getSession();
		if (session.getAttribute("uid") != null) {
			model.setViewName("payment");
			return model;
		}
		else {
			model.setViewName("login");
			return new ModelAndView("redirect:/");
		}
	}
	
}
