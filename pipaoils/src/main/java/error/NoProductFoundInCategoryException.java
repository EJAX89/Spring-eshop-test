package error;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(value=HttpStatus.NOT_FOUND, reason = "V kategorii nebyl nalezen žádný produkt")
public class NoProductFoundInCategoryException extends RuntimeException {
	private static final long serialVersionUID =3935230281455340039L;
	
}
