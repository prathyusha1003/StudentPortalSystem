package org.jsp.StudentPortal.Controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import org.jsp.StudentPortal.Dto.Faculty;
import org.jsp.StudentPortal.Dto.Student;
import org.jsp.StudentPortal.Service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import jakarta.mail.MessagingException;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/student")
public class StudentController {
	@Autowired
	StudentService studentService;

	@GetMapping("/signup")
	public String loadStudentSignup() {
		return "StudentSignUp";
	}

	@PostMapping("/signup")
	public String signup(Student student, ModelMap map) {
		return studentService.signup(student, map);
	}

	@GetMapping("/login")
	public String loadStudentLogin() {
		return "StudentLogin";
	}

	@PostMapping("/login")
	public String login(@RequestParam String email, @RequestParam String password, ModelMap map, HttpSession session) {
		return studentService.login(email, password, map, session);
	}

	@GetMapping("/forgot-password")
	public String loadEnterEmail() {
		return "StudentEmail";
	}

	@PostMapping("/forgot-password")
	public String sendResetOtp(@RequestParam String email, ModelMap map)
			throws UnsupportedEncodingException, MessagingException {
		return studentService.forgotPassword(email, map);
	}

	@PostMapping("/reset-password")
	public String resetPassword(@RequestParam String password, @RequestParam int id, @RequestParam int otp,
			ModelMap map) {
		return studentService.resetPassword(password, id, otp, map);
	}

	@GetMapping("/profile")
	public String editProfile(ModelMap map, HttpSession session) {
		Student student = (Student) session.getAttribute("student");
		if (student == null) {
			map.put("fail", "Invalid Session");
			return "index";
		} else {
			map.put("student", student);
			return "StudentEditProfile";
		}
	}

	@PostMapping("/profile")
	public String updateProfile(Student student1, ModelMap map, HttpSession session) throws IOException {
		Student student = (Student) session.getAttribute("student");
		if (student == null) {
			map.put("fail", "Invalid Session");
			return "index";
		} else {
			return studentService.updateProfile(student1, student, map, session);
		}
	}

	@GetMapping("/attendence")
	public String attendence(ModelMap map, HttpSession session) {
		Student student = (Student) session.getAttribute("student");
		if (student == null) {
			map.put("fail", "Invalid Session");
			return "index";
		} else {
			map.put("student", student);
			return "ViewAttendence";
		}
	}
	
	@GetMapping("/back")
	public String back(HttpSession session, ModelMap map) {
		Student student = (Student) session.getAttribute("student");
		if (student == null) {
			map.put("fail", "Invalid Session");
			return "index";
		} else {
			return "StudentProfile";
		}
	}
}
