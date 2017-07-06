package validator;

import java.math.BigDecimal;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import model.Product;

public class SkladValidator implements Validator {

	@Override
	public boolean supports(Class<?> class1) {
		// TODO Auto-generated method stub
		return Product.class.isAssignableFrom(class1);
	}

	@Override
	public void validate(Object target, Errors errors) {
		// TODO Auto-generated method stub
		Product product = (Product) target;

		if(product.getCena()!= null && new BigDecimal(10000).compareTo(product.getCena())<=0 && product.getpocet()>99) {
			errors.rejectValue("pocet", "validator.SkladValidator.message");
		}
	}

}
