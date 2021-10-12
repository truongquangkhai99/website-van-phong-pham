package ptithcm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/home")
public class HomeController {

	@RequestMapping("")
	public String showHome() {
		return "user/home";
	}
	
	@RequestMapping("product")
	public String showProduct() {
		return "user/productDetail";
	}
	
	@RequestMapping("cart")
	public String showCart() {
		return "user/cart";
	}
	
	@RequestMapping("checkout")
	public String checkOut() {
		return "user/checkout";
	}
	
	@RequestMapping("shipping")
	public String shipping() {
		return "user/shipping";
	}
	
	@RequestMapping("category")
	public String showCategory() {
		return "user/category";
	}
	
	@RequestMapping("userProfile")
	public String showUserProfile() {
		return "user/userProfile";
	}
	
	@RequestMapping("order")
	public String showOrder() {
		return "user/order";
	}
	
	@RequestMapping("orderDetail")
	public String showOrderDetail() {
		return "user/orderDetail";
	}
}