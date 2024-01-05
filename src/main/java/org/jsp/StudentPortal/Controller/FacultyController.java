package org.jsp.StudentPortal.Controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import org.jsp.StudentPortal.Dto.Faculty;
import org.jsp.StudentPortal.Helper.AnswerHelper;
import org.jsp.StudentPortal.Service.FacultyService;
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
@RequestMapping("/faculty")
public class FacultyController {
	@Autowired
	FacultyService facultyService;

	@GetMapping("/signup")
	public String loadFacultySignup() {
		return "FacultySignUp";
	}

	@PostMapping("/signup")
	public String signup(Faculty faculty, ModelMap map) {
		return facultyService.signup(faculty, map);
	}

	@GetMapping("/login")
	public String loadRecruiterLogin() {
		return "FacultyLogin";
	}

	@PostMapping("/login")
	public String login(@RequestParam String email, @RequestParam String password, ModelMap map, HttpSession session) {
		return facultyService.login(email, password, map, session);
	}

	@GetMapping("/forgot-password")
	public String loadEnterEmail() {
		return "FacultyEmail";
	}

	@PostMapping("/forgot-password")
	public String sendResetOtp(@RequestParam String email, ModelMap map)
			throws UnsupportedEncodingException, MessagingException {
		return facultyService.forgotPassword(email, map);
	}

	@PostMapping("/reset-password")
	public String resetPassword(@RequestParam String password, @RequestParam int id, @RequestParam int otp,
			ModelMap map) {
		return facultyService.resetPassword(password, id, otp, map);
	}

	@GetMapping("/logout")
	public String logout(HttpSession session, ModelMap map) {
		session.invalidate();
		map.put("pass", "Logout Success");
		return "index";
	}

	@GetMapping("/profile")
	public String loadProfile(HttpSession session, ModelMap map) {
		Faculty faculty = (Faculty) session.getAttribute("faculty");
		if (faculty == null) {
			map.put("fail", "Invalid Session");
			return "index";
		} else {
			return "FacultyProfile";
		}
	}

	@GetMapping("/back")
	public String back(HttpSession session, ModelMap map) {
		Faculty faculty = (Faculty) session.getAttribute("faculty");
		if (faculty == null) {
			map.put("fail", "Invalid Session");
			return "index";
		} else {
			return "FacultyHome";
		}
	}
	
	@GetMapping("/back01")
	public String back01(HttpSession session, ModelMap map) {
		Faculty faculty = (Faculty) session.getAttribute("faculty");
		if (faculty == null) {
			map.put("fail", "Invalid Session");
			return "index";
		} else {
			return "FacultyProfile";
		}
	}

	@GetMapping("/view-students")
	public String fetchStudentDetails(HttpSession session, ModelMap map) {
		Faculty faculty = (Faculty) session.getAttribute("faculty");
		if (faculty == null) {
			map.put("fail", "Invalid Session");
			return "index";
		} else {
			return facultyService.fetchStudentDetails(map,faculty);
		}
	}

	@GetMapping("/edit-profile")
	public String editProfile(ModelMap map, HttpSession session) {
		Faculty faculty = (Faculty) session.getAttribute("faculty");
		if (faculty == null) {
			map.put("fail", "Invalid Session");
			return "index";
		} else {
			map.put("faculty", faculty);
			return "FacultyEditProfile";
		}
	}

	@PostMapping("/edit-profile")
	public String updateProfile(Faculty faculty1, ModelMap map, HttpSession session) throws IOException {
		Faculty faculty = (Faculty) session.getAttribute("faculty");
		if (faculty == null) {
			map.put("fail", "Invalid Session");
			return "index";
		} else {
			return facultyService.updateProfile(faculty1, faculty, map, session);
		}
	}

	@GetMapping("/attendence")
	public String fetchStudentNames(HttpSession session, ModelMap map) {
		Faculty faculty = (Faculty) session.getAttribute("faculty");
		if (faculty == null) {
			map.put("fail", "Invalid Session");
			return "index";
		} else {
			return facultyService.fetchStudentNames(map, faculty, session);
		}
	}

	@PostMapping("/attendence")
	public String addAttendence(HttpSession session, ModelMap map,AnswerHelper helper) {
		Faculty faculty = (Faculty) session.getAttribute("faculty");
		if (faculty == null) {
			map.put("fail", "Invalid Session");
			return "index";
		} else {
			return facultyService.addAttendence(helper, map, faculty, session);
		}
	}
}
