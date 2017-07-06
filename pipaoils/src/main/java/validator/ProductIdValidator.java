package validator;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

import org.springframework.beans.factory.annotation.Autowired;

import error.Product404;
import model.Product;
import service.ProductService;

public class ProductIdValidator implements ConstraintValidator<ProductId, String>{
	
	@Autowired
	private ProductService productService;

	public void initialize(ProductId constraintAnnotation) {
		
	}

	public boolean isValid(String value, ConstraintValidatorContext context) {
		Product product;
		try {
			product = productService.get(value);
			
		} catch (Product404 e) {
			return true;
		}
		
		if(product!= null) {
			return false;
		}
		
		return true;
	}
	
}