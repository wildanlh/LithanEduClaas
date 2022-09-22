package com.abc.service;

import java.io.UnsupportedEncodingException;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

@Service
public class EmailServiceImpl implements EmailService {
	
    @Autowired
    private JavaMailSender mailSender;

	@Override
	public void sendEmailLinkResetPassword(String recipientEmail, String link)
			throws MessagingException, UnsupportedEncodingException {
		MimeMessage message = mailSender.createMimeMessage();              
	    MimeMessageHelper helper = new MimeMessageHelper(message);
	    
	    helper.setTo(recipientEmail);
	     
	    String subject = "Reset Password!";
	     
	    String content = "<p>Hello,</p>"
	            + "<p>There was a request to change your password!</p>"
	            + "<p>If you did not make this request then please ignore this email.</p>"
	            + "<p>Otherwise, please click this link to change your password:</p>"
	            + "<p><a href=\"" + link + "\">Change Password</a></p>"
	            + "<br>"
	            + "<p>Yours,</p>"
	            + "<p>The ABC Jobs team</p>";
	     
	    helper.setSubject(subject);
	     
	    helper.setText(content, true);
	     
	    mailSender.send(message);

	}


	@Override
	public void sendEmailRegisterSuccess(String recipientEmail, String firstName)
			throws MessagingException, UnsupportedEncodingException {
		MimeMessage message = mailSender.createMimeMessage();              
	    MimeMessageHelper helper = new MimeMessageHelper(message);
	    
	    helper.setTo(recipientEmail);
	     
	    String subject = "Welcome to ABC Jobs";
	    
	    String content = "<h3>Hello " + firstName + ",<h3>"
	    		+ "<h3>Thank you for completing your registration with ABC Jobs.<h3>"
	    		+ "<br>"
	    		+ "<p>This email serves as a confirmation that your account is activated and that you are officially a part of the ABC Jobs.<p>"
	    		+ "<p>If you experience any issues logging into your account, reach out to us at helpabcjobs@gmail.com<p>"
	    		+ "<br>"
	    		+ "<p>Best Regards<p>"
	    		+ "<p>The ABC Jobs team<p>";
	    
	    helper.setSubject(subject);
	    helper.setText(content, true);
	    
	    mailSender.send(message);
		
	}

}
