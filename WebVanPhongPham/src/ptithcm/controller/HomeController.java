package ptithcm.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import ptithcm.entity.Product;
import ptithcm.service.ProductService;

@Controller
@RequestMapping("/home")
public class HomeController {

	@Autowired
	ProductService productService;
	
	@RequestMapping("")
	public String showHome(HttpServletRequest request, ModelMap model) {
		
		List<Product> list = productService.getAllProducts();
		
		// bỏ dữ liệu vào pagedListHolder rồi sau đó trả về cho model
		PagedListHolder pagedListHolder = productService.paging(list, request);
	
		model.addAttribute("pagedListHolder", pagedListHolder);
		
		return "user/home";
	}
	
	@RequestMapping("information")
	public String showInform() {
		return "user/information";
	}
	
	@RequestMapping("search")
	public String search() {
		return "user/product";
	}
	
	@RequestMapping("product")
	public String showProduct(HttpServletRequest request, ModelMap model, @RequestParam("id") Integer id) {
		
		model.addAttribute("product", productService.getProductByID(id));
		
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
}
