package org.jsp.StudentPortal.Service;

import java.io.UnsupportedEncodingException;
import java.util.Random;
import org.jsp.StudentPortal.Dao.StudentDao;
import org.jsp.StudentPortal.Dto.Student;
import org.jsp.StudentPortal.Helper.EmailLogic;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;

import jakarta.mail.MessagingException;
import jakarta.servlet.http.HttpSession;

@Service
public class StudentService 
{
	@Autowired
	StudentDao studentDao;

	@Autowired
	EmailLogic emailLogic;
	
	public String signup(Student student, ModelMap map)
	{
		Student student1 = studentDao.findByEmail(student.getEmail());
		Student student2 = studentDao.findByMobile(student.getMobile());
		if (student1 == null && student2 == null) 
		{		
			studentDao.save(student);
			map.put("pass", "Registered Successfully");
			return "StudentLogin";
		} 
		else 
		{
			map.put("fail", "Email or Mobile is Repeated");
			return "StudentSignUp";
		}
	}

	public String login(String email, String password, ModelMap map, HttpSession session) 
	{
		Student student = studentDao.findByEmail(email);
		if (student == null) 
		{
			map.put("fail", "Invalid Email");
			return "StudentLogin";
		}
		else 
		{
			if (student.getPassword().equals(password))
			{
				if(session.getAttribute("student")==null)
				{
					map.put("pass", "Login Succcess");
				}
				session.setAttribute("student", student);
				return "StudentProfile";
			} 
			else 
			{
				map.put("fail", "Invalid Password");
				return "StudentLogin";
			}
		}
	}

	public String forgotPassword(String email, ModelMap map) throws UnsupportedEncodingException, MessagingException
	{
		Student student = studentDao.findByEmail(email);
		if (student == null) 
		{
			map.put("fail", "Email Doesn't Exist");
			return "StudentEmail";
		}
		else
		{
			int otp = new Random().nextInt(100000, 999999);
			student.setOtp(otp);
			emailLogic.sendOtp(student);
			studentDao.save(student);
			map.put("pass", "Otp Sent");
			map.put("id", student.getId());
			
			return "StudentPassword";
		}	
	}

	public String resetPassword(String password, int id, int otp, ModelMap map) 
	{
		Student student = studentDao.findById(id);
		if(student.getOtp()==otp)
		{
			student.setPassword(password);
			studentDao.save(student);
			map.put("pass", "Password Reset Success");
			return "StudentLogin";
		}
		else 
		{
			map.put("fail", "Invalid OTP");
			map.put("id", id);
			return "StudentPassword";
		}
	}

	public String updateProfile(Student student1, Student student, ModelMap map, HttpSession session)
	{
		student.setName(student1.getName());
		student.setDob(student1.getDob());
		student.setGender(student1.getGender());
		student.setAddress(student1.getAddress());
		student.setCourse(student1.getCourse());
		studentDao.save(student);
		session.setAttribute("student", student);
		map.put("pass", "Profile Updated Success");
		map.put("student", student);
		return "StudentProfile";
	}
}
