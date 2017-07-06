package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import error.NoProductFoundInCategoryException;
import error.Product404;
import model.Product;
import service.CategoryService;
import service.ProductService;


@Controller
@RequestMapping("/products")
public class ProductController {

	
	@Autowired
	public ProductService productService;
	
	@Autowired
	private CategoryService categoryService;
	
		
	//zobrazeni vsech aktivnich produktu
	@RequestMapping("/products")
	public String zobrazProdukty(Model model){
		model.addAttribute("products", productService.getAllProducts());
		model.addAttribute("categories", categoryService.listAktivni());
		
		return "/products";
	}
	
	
	//zobrazeni kategorie 
	@RequestMapping("/{category}")
	public String getProductsByCategory(Model model, @PathVariable("category") String category) {
		List<Product> products = productService.getProductsByCategory(category);
				
		if (products == null || products.isEmpty()) {
			throw new NoProductFoundInCategoryException();
			
		}
		model.addAttribute("categories", categoryService.listAktivni());
		model.addAttribute("products", products);
		return "products";
	}
	
	
	//zobrazeni produktu
	@RequestMapping("/product")
	public String getProductById(Model model, @RequestParam("id") String id){
		Product product = productService.get(id);
		model.addAttribute("product", product);
		model.addAttribute("categories", categoryService.list());		
		return "product";
		
	}
	
	
	
	
		
	
	
}