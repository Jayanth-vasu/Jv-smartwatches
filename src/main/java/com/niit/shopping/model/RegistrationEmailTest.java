/*package com.niit.shopping.model;
 
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
 

 
public class RegistrationEmailTest {
	 
	@SuppressWarnings("resource")
	public static void main(String args[]) {
 
		// Spring Bean file you specified in /src/main/resources folder
		String crunchifyConfFile = "mail-bean.xml";
		
		ConfigurableApplicationContext context = new ClassPathXmlApplicationContext(crunchifyConfFile);
 
		// @Service("crunchifyEmail") <-- same annotation you specified in CrunchifyEmailAPI.java
		RegistrationEmailAPI registrationEmailAPI = (RegistrationEmailAPI) context.getBean("registrationEmail");
		String toAddr = "jayanthvasu96@gmail.com";
		String fromAddr = "jayanthvasu89@gmail.com";
 
		// email subject
		String subject = "Hey.. This email sent by  Spring MVC Tutorial";
 
		// email body
		String body = "There you go.. You got an email.. Let's understand details on how Spring MVC works -- By  Admin";
		registrationEmailAPI.readyToSendEmail(toAddr, fromAddr, subject, body);
	}
}*/