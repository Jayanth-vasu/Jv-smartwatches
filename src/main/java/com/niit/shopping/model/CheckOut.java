package com.niit.shopping.model;

import java.awt.AWTException;
import java.awt.Dimension;
import java.awt.Rectangle;
import java.awt.Robot;
import java.awt.Toolkit;
import java.awt.event.ActionEvent;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.io.Serializable;
import java.security.Principal;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.imageio.ImageIO;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.ImageIcon;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.mail.MailSender;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;
import org.springframework.webflow.execution.RequestContext;

import com.niit.shopping.service.ProductService;
import com.niit.shopping.service.RegisterService;

import com.twilio.Twilio;
import com.twilio.http.TwilioRestClient;
import com.twilio.rest.api.v2010.account.Message;
import com.twilio.type.PhoneNumber;

@Component
public class CheckOut implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = -8089491851587514532L;

	public ShippingAddress addressFlow() {
		return new ShippingAddress();
	}

	@Autowired
	ProductService productService;

	@Autowired
	RegisterService registerService;

	public void saveAddress(ShippingAddress shippingAddress) {
		try{
		productService.saveAddress(shippingAddress);
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		/*
		 * session.setAttribute("cartItem",
		 * productService.getCartByUser(activeuser.getName()));
		 */

	}

	public void saveOrder(ShippingAddress shippingAddress) {
		try{
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String username = auth.getName();
		OrderDetails orderDetails = new OrderDetails();
		
		

		for (int i = 0; i < productService.getCartlistByUser(username).size(); i++) {
			
			if(productService.getCartlistByUser(username).size()>=0){
			List<Cart> cartlist = productService.getCartlistByUser(username);
			System.out.println(i);

			cartlist.get(i).setOrderstatus(true);
			orderDetails.setCart(cartlist.get(i));

			orderDetails.setShippingAddress(shippingAddress);

			orderDetails.setUserDetails(registerService.getUserByUsername(username));

			DateFormat df = new SimpleDateFormat("dd/MM/yy HH:mm:ss");
			Date date = new Date();
			String str = df.format(date);

			String[] strarr = str.split("\\s");

			String datevar = strarr[0];

			String time = strarr[1];

			// String str = String.format("ordered on ",date);

			orderDetails.setDate(datevar);

			orderDetails.setTime(time);
			
			orderDetails.setSentMail(false);

			productService.saveOrder(orderDetails);
			}

		}
		}
		catch (Exception e) {
			e.printStackTrace();
		}

	}

	public void getStock() {
		try{
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String username = auth.getName();
		List<OrderDetails> orderDetails = productService.getOrderlist(username);

		for (int i = 0; i < orderDetails.size(); i++) {
			int product_id = orderDetails.get(i).getCart().getProduct_id();

			int stock = productService.getStock(product_id).get(0).getStock();

			int quantity = orderDetails.get(i).getCart().getQuantity();

			stock = stock - quantity;

			productService.updateStock(product_id, stock);

			productService.updatecartStock(product_id, username, stock);

		}
		}
		catch (Exception e) {
			e.printStackTrace();
		}

	}

	@Autowired
	RegistrationEmailAPI registrationEmailAPI;

	@Autowired
	MailSender mailsend;

	@Autowired
	JavaMailSender mail;

	public void snapshot() throws MessagingException {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String username = auth.getName();

		String toAddr = username;
		String fromAddr = "jayanthvasu89@gmail.com";
		// email subject
		String subject = "Mail from JV Smartwatches";

		// email body
		String body = "cart details";

		// Multipart multipart = new MimeMultipart();

		/*
		 * MimeBodyPart imagePart= new MimeBodyPart(); String
		 * filename="C:\\Users\\Jayanth Vasu\\Desktop\\invoice.jpg"; DataSource
		 * source=new FileDataSource(filename); imagePart.setDataHandler(new
		 * DataHandler(source)); imagePart.setFileName(filename);
		 * multipart.addBodyPart(imagePart);
		 */

		try {
			Robot robot = new Robot();
			String format = "jpg";
			String fileName = "invoice." + format;

			Dimension screenSize = Toolkit.getDefaultToolkit().getScreenSize();
			Rectangle captureRect = new Rectangle(0, 0, screenSize.width, screenSize.height);
			BufferedImage screenFullImage = robot.createScreenCapture(captureRect);
			ImageIO.write(screenFullImage, format, new File(fileName));

			FileSystemResource file = new FileSystemResource("C:\\Users\\Jayanth Vasu\\Desktop\\invoice.jpg");

			MimeMessage mimeMessage = mail.createMimeMessage();

			MimeMessageHelper message = new MimeMessageHelper(mimeMessage, true);

			message.addAttachment(file.getFilename(), file);

			// mail.send(mimeMessage);

			// imagePart.attachFile("C:\\Users\\Jayanth
			// Vasu\\Desktop\\invoice.jpg");

			registrationEmailAPI.readyToSendEmail(toAddr, fromAddr, subject, body);
			System.out.println("A partial screenshot saved!");
		} catch (AWTException | IOException ex) {
			System.err.println(ex);
		}
	}

	public void snapshot1() {
		Rectangle screenRect = new Rectangle(Toolkit.getDefaultToolkit().getScreenSize());
		try {
			BufferedImage capture = new Robot().createScreenCapture(screenRect);
			ImageIcon icon = new ImageIcon(capture);
		} catch (AWTException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	

	@SuppressWarnings({ "unchecked", "rawtypes" })
	public void sendMessage() {
		try{
		String ACCOUNT_SID = "ACab53031ce7b595355fd0aa759b9edf4c";
		String AUTH_TOKEN = "210a0ca7a1f3bdf0bb7f5e55203235dc";
		Twilio.init(ACCOUNT_SID, AUTH_TOKEN);
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String username = auth.getName();
		List<OrderDetails> orderDetails = productService.getOrderlist(username);
		
		
		ArrayList list = new ArrayList();
		for(int i=0;i<orderDetails.size();i++){
			
			list.add("you have ordered :"+orderDetails.get(i).getCart().getProductName());
			list.add("price:"+orderDetails.get(i).getCart().getProductPrice());
			list.add("quantity:"+orderDetails.get(i).getCart().getQuantity());
			list.add("ordered on:"+orderDetails.get(i).getDate());
			
			
		
		}
		Message message = Message.creator(new PhoneNumber("+919884910150"), new PhoneNumber("+12566458187"),
				""+list).create();

		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}

}
