/**
 * 
 */
package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import model.Cart;
import model.Product;
import model.User;
import service.CartService;
import service.HeadPhoneService;
import service.LaptopService;
import service.MobileService;
import service.ProductService;
import service.SmartWatchService;
import service.TVService;
import service.TabletService;
import service.UserService;

/**
 * @author devoza
 *
 */

@Controller
public class CartController {

	private static final Logger logger = Logger.getLogger(UserController.class);

	public CartController() {
		System.out.println("CartController()");
	}
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private UserService userService;
	
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
	
	@RequestMapping(value = "/addtocart", method = RequestMethod.POST)
	public ModelAndView addtocart(@RequestParam("p_quantity") int quantity, @RequestParam("pid") int pid, ModelAndView model, HttpServletRequest request) throws IOException {
		
		HttpSession session = request.getSession();
		Product product = productService.getProduct(pid);
		//int original_quantity = product.getP_Quantity();
		
		User user = userService.getUser((int)session.getAttribute("uid"));
		
		List<Cart> cart = cartService.getCartByUser(user);
		boolean flag = true;
		
		for(Cart c : cart) {
			if(c.getProduct().getP_Id() == pid) {
				flag = false;
				int newquantity = c.getCart_quantity() + quantity;
				c.setCart_quantity(newquantity);
				c.setCart_Amount(newquantity*product.getP_Price());
				cartService.updateCart(c);
			}
		}
		
		if(flag == true) {
			Cart c = new Cart();
			c.setProduct(product);
			c.setUser(user);
			c.setCart_quantity(quantity);
			c.setCart_Amount(quantity*product.getP_Price());
			cartService.addCart(c);
		}
		
//		model.setViewName("userhome");
//		return model;
		return new ModelAndView("redirect:/");
				
	}
	
	@RequestMapping(value = "/myCart")
	public ModelAndView showCart(ModelAndView model,HttpServletRequest request) {
		//List<Cart> listCart = cartService.getAllCarts();
		HttpSession session = request.getSession();
		User user = userService.getUser((int)session.getAttribute("uid"));
        List<Cart> listCart = cartService.getCartByUser(user);
        List<String> productList = new ArrayList<String>();
        for(Cart c : listCart) {
        	String type = c.getProduct().getP_Type();
        	int pid = c.getProduct().getP_Id();
        	String pname = null;
        	if(type.equalsIgnoreCase("laptop")) {
        		pname = laptopService.getLaptop(pid).getlName();
        	}
        	else if(type.equalsIgnoreCase("mobile")) {
        		pname = mobileService.getMobile(pid).getmName();
        	}
        	else if(type.equalsIgnoreCase("headphone")) {
        		pname = headphoneService.getHeadPhone(pid).gethName();
        	}
        	else if(type.equalsIgnoreCase("smartwatch")) {
        		pname = smartwatchService.getSmartWatch(pid).getsName();
        	}
        	else if(type.equalsIgnoreCase("tablet")) {
        		pname = tabletService.getTablet(pid).gettName();
        	}
        	else if(type.equalsIgnoreCase("tv")) {
        		pname = tvService.getTV(pid).getTvName();
        	}
        	productList.add(pname);
        }
		
		model.addObject("listCart",listCart);
		model.addObject("productList",productList);
		model.setViewName("myCart");
		return model;
	}
	
	@RequestMapping(value = "/deleteCart", method = RequestMethod.POST)
	public ModelAndView deleteCart(@RequestParam("cartid") int cart_id, ModelAndView model, HttpServletRequest request) throws IOException {
		cartService.deleteCart(cart_id);
		return new ModelAndView("redirect:/myCart");
	}
	
	@RequestMapping(value = "/updateCart", method = RequestMethod.POST)
	public ModelAndView updateCart(@RequestParam("cartid") int cart_id, @RequestParam("quantity") int quantity, ModelAndView model, HttpServletRequest request) throws IOException {
		Cart cart = cartService.getCart(cart_id);
		cart.setCart_quantity(quantity);
		cart.setCart_Amount(cart.getProduct().getP_Price()*quantity);
		cartService.updateCart(cart);
		return new ModelAndView("redirect:/myCart");
	}
}
