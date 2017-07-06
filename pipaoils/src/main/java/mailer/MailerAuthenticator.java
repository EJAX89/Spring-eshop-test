package mailer;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

import model.Customer;
import model.Order;

public class MailerAuthenticator extends Authenticator{
//trida pro nastaveni udaju pro zasilani emailu -- nutno doimplementovat
	private String jmeno;
	private String heslo;

	
	public MailerAuthenticator(String jmeno, String heslo) {
		// TODO Auto-generated constructor stub
		this.heslo = heslo;
		this.jmeno = jmeno;
	}
	
	protected PasswordAuthentication getPasswordAuthentication(){
		return new PasswordAuthentication(jmeno, heslo);
	}
	
	
}
