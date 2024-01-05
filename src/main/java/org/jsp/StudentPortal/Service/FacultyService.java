package org.jsp.StudentPortal.Service;

import java.io.UnsupportedEncodingException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Random;

import org.jsp.StudentPortal.Dao.FacultyDao;
import org.jsp.StudentPortal.Dao.StudentDao;
import org.jsp.StudentPortal.Dto.Attendence;
import org.jsp.StudentPortal.Dto.Faculty;
import org.jsp.StudentPortal.Dto.Student;
import org.jsp.StudentPortal.Helper.AnswerHelper;
import org.jsp.StudentPortal.Helper.EmailLogic;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;

import jakarta.mail.MessagingException;
import jakarta.servlet.http.HttpSession;

@Service
public class FacultyService {
	@Autowired
	FacultyDao facultyDao;

	@Autowired
	StudentDao studentDao;

	@Autowired
	EmailLogic emailLogic;

	public String signup(Faculty faculty, ModelMap map) {
		Faculty faculty1 = facultyDao.findByEmail(faculty.getEmail());
		Faculty faculty2 = facultyDao.findByMobile(faculty.getMobile());
		if (faculty1 == null && faculty2 == null) {
			facultyDao.save(faculty);
			map.put("pass", "Registered Successfully");
			return "FacultyLogin";
		} else {
			map.put("fail", "Email or Mobile is Repeated");
			return "FacultySignUp";
		}
	}

	public String login(String email, String password, ModelMap map, HttpSession session) {
		Faculty faculty = facultyDao.findByEmail(email);
		if (faculty == null) {
			map.put("fail", "Invalid Email");
			return "FacultyLogin";
		} else {
			if (faculty.getPassword().equals(password)) {
				if (session.getAttribute("faculty") == null)
					map.put("pass", "Login Succcess");
				session.setAttribute("faculty", faculty);
				return "FacultyHome";
			} else {
				map.put("fail", "Invalid Password");
				return "FacultyLogin";
			}
		}
	}

	public String forgotPassword(String email, ModelMap map) throws UnsupportedEncodingException, MessagingException {
		Faculty faculty = facultyDao.findByEmail(email);
		if (faculty == null) {
			map.put("fail", "Email Doesnot Exist");
			return "FacultyEmail";
		} else {
			int otp = new Random().nextInt(100000, 999999);
			faculty.setOtp(otp);
			emailLogic.sendOtp(faculty);
			facultyDao.save(faculty);
			map.put("pass", "Otp Sent");
			map.put("id", faculty.getId());

			return "FacultyPassword";
		}
	}

	public String resetPassword(String password, int id, int otp, ModelMap map) {
		Faculty faculty = facultyDao.findById(id);
		if (faculty.getOtp() == otp) {
			faculty.setPassword(password);
			facultyDao.save(faculty);
			map.put("pass", "Password Reset Success");
			return "FacultyLogin";
		} else {
			map.put("fail", "Invalid OTP");
			map.put("id", id);
			return "FacultyPassword";
		}
	}

	public String fetchStudentDetails(ModelMap map, Faculty faculty) {
		List<Student> details = studentDao.fetchStudentBasedOnSubject(faculty.getSubject());
		if (details.isEmpty()) {
			map.put("fail", "No Students");
			return "FacultyHome";
		} else {
			map.put("details", details);
			return "FacultyViewStudents";
		}
	}

	public String updateProfile(Faculty faculty1, Faculty faculty, ModelMap map, HttpSession session) {
		faculty.setName(faculty1.getName());
		faculty.setDob(faculty1.getDob());
		faculty.setGender(faculty1.getGender());
		faculty.setAddress(faculty1.getAddress());
		faculty.setSubject(faculty1.getSubject());
		facultyDao.save(faculty);
		session.setAttribute("faculty", faculty);
		map.put("pass", "Profile Updated Success");
		map.put("faculty", faculty);
		return "FacultyProfile";
	}

	public String fetchStudentNames(ModelMap map, Faculty faculty, HttpSession session) {
		List<Student> details = studentDao.fetchStudentBasedOnSubject(faculty.getSubject());
		if (details.isEmpty()) {
			map.put("fail", "No Students");
			return "FacultyHome";
		} else {
			Student student = details.get(0);
			List<Attendence> attendences = student.getAttendence();
			boolean flag = false;
			for (Attendence attendence : attendences) {

				if (attendence.getDate().getDayOfYear() == LocalDate.now().getDayOfYear()) {
					if (attendence.getAbsentSubjects() == null)
						attendence.setAbsentSubjects(new ArrayList());
					if (attendence.getPresentSubjects() == null)
						attendence.setPresentSubjects(new ArrayList());
					if (attendence.getAbsentSubjects() != null && attendence.getPresentSubjects() != null) {
						if (attendence.getPresentSubjects().contains(faculty.getSubject())
								|| attendence.getAbsentSubjects().contains(faculty.getSubject())) {
							flag = true;
						}
					}
				}
			}
			if (!flag) {
				map.put("details", details);
				return "Attendence";
			} else {
				map.put("fail", "Already Attendence Taken");
				return "FacultyHome";
			}
		}
	}

	public String addAttendence(AnswerHelper helper, ModelMap map, Faculty faculty, HttpSession session) {
		Map<Integer, String> data = helper.getAttend();
		for (int id : data.keySet()) {
			Student student = studentDao.findById(id);
			String attendence = helper.getAttend().get(id);

			List<Attendence> attendences = student.getAttendence();

			if (attendences == null)
				attendences = new ArrayList<Attendence>();

			Attendence attendence3 = null;

			for (Attendence attendence2 : attendences) {

				if (attendence2.getDate().getDayOfYear() == LocalDate.now().getDayOfYear())
					attendence3 = attendence2;
			}

			if (attendence.equals("present")) {
				if (attendence3 != null) {
					if (attendence3.getPresentSubjects() == null)
						attendence3.setPresentSubjects(new ArrayList<String>());
					attendence3.getPresentSubjects().add(faculty.getSubject());
				} else {
					attendence3 = new Attendence();
					attendence3.setDate(LocalDate.now());
					List<String> list = attendence3.getPresentSubjects();
					if (list == null)
						list = new ArrayList<String>();
					list.add(faculty.getSubject());
					attendence3.setPresentSubjects(list);
					attendences.add(attendence3);
				}
				student.setAttendence(attendences);
				studentDao.save(student);
				session.setAttribute("faculty", faculty);
			} else {
				if (attendence3 != null) {
					if (attendence3.getAbsentSubjects() == null)
						attendence3.setAbsentSubjects(new ArrayList<String>());
					attendence3.getAbsentSubjects().add(faculty.getSubject());
				} else {
					attendence3 = new Attendence();
					attendence3.setDate(LocalDate.now());
					List<String> list = attendence3.getAbsentSubjects();
					if (list == null)
						list = new ArrayList<String>();
					list.add(faculty.getSubject());
					attendence3.setAbsentSubjects(list);
					attendences.add(attendence3);
				}
				student.setAttendence(attendences);
				studentDao.save(student);
				session.setAttribute("faculty", faculty);
			}
		}
		map.put("pass", "Attendence Added for today!!");
		return "FacultyHome";
	}
}
