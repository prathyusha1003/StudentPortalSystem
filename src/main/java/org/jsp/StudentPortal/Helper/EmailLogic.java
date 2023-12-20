package org.jsp.StudentPortal.Helper;

import java.io.UnsupportedEncodingException;

import org.jsp.StudentPortal.Dto.Faculty;
import org.jsp.StudentPortal.Dto.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import jakarta.mail.MessagingException;
import jakarta.mail.internet.MimeMessage;

@Service
public class EmailLogic 
{
	@Autowired
    JavaMailSender mailSender;
	
	public void sendOtp(Faculty faculty) throws MessagingException, UnsupportedEncodingException
	{
		MimeMessage message = mailSender.createMimeMessage();
		MimeMessageHelper helper = new MimeMessageHelper(message);
		
		helper.setFrom("prathyusha10032001@gmail.com","Student Portal");
		helper.setTo(faculty.getEmail());
		helper.setSubject("Verify Otp");
		helper.setText("Your Otp Is : "+faculty.getOtp());
		
		mailSender.send(message);
	}  
	
	public void sendOtp(Student student) throws MessagingException, UnsupportedEncodingException
	{
		MimeMessage message = mailSender.createMimeMessage();
		MimeMessageHelper helper = new MimeMessageHelper(message);
		
		helper.setFrom("prathyusha10032001@gmail.com","Student Portal");
		helper.setTo(student.getEmail());
		helper.setSubject("Verify Otp");
		helper.setText("Your Otp Is : "+student.getOtp());
		
		mailSender.send(message);
	}  
}
