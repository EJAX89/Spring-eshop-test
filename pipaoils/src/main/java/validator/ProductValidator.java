package validator;

import java.util.HashSet;
import java.util.Set;

import javax.validation.ConstraintViolation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import model.Product;

public class ProductValidator implements Validator {

	@Autowired
	private javax.validation.Validator validator;

	private Set<Validator> springValidators;

	public ProductValidator() {
		springValidators = new HashSet<Validator>();
	}

	public void setSpringValidators(Set<Validator> springValidators) {
		this.springValidators = springValidators;
	}

	@Override
	public boolean supports(Class<?> class1) {
		// TODO Auto-generated method stub
		return Product.class.isAssignableFrom(class1);
	}

	@Override
	public void validate(Object target, Errors errors) {
		// TODO Auto-generated method stub
		Set<ConstraintViolation<Object>> constraintViolations = validator.validate(target);

		for (ConstraintViolation<Object> constraintViolation : constraintViolations) {
			String propertyPath = constraintViolation.getPropertyPath().toString();
			String message = constraintViolation.getMessage();
			errors.rejectValue(propertyPath, "", message);
		}

		for (Validator validator : springValidators) {
			validator.validate(target, errors);
		}

	}

}
