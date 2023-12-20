package org.jsp.StudentPortal.Service;

import java.util.List;
import org.jsp.StudentPortal.Dao.FacultyDao;
import org.jsp.StudentPortal.Dao.StudentDao;
import org.jsp.StudentPortal.Dto.Faculty;
import org.jsp.StudentPortal.Dto.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;

import jakarta.servlet.http.HttpSession;

@Service
public class AdminService 
{
	@Autowired
	FacultyDao facultyDao;
	
	@Autowired
	StudentDao studentDao;
	
	public String login(String email, String password, ModelMap map, HttpSession session) 
	{
		if (email.equals("admin")) 
		{
		    if (password.equals("admin")) 
		    {
			    map.put("pass", "Login Success");
			    session.setAttribute("admin", "admin");
			    return "AdminHome";
		    } 
		    else 
		    {
			    map.put("fail", "Invalid Password");
			    return "AdminLogin";
		    }
	    } 
		else 
		{
		    map.put("fail", "Invalid Email");
	     	return "AdminLogin";
	    }
	}

	public String fetchFacultyDetails(ModelMap map) 
	{
		List<Faculty> details = facultyDao.fetchAllDetails();
		if(details.isEmpty())
		{
			map.put("fail", "No Faculty Members");
			return "AdminHome";
		}
		else 
		{
			map.put("details", details);
			return "AdminViewFaculty";
		}
	}

	public String fetchStudentDetails(ModelMap map) 
	{
		List<Student> details = studentDao.fetchAllDetails();
		if(details.isEmpty())
		{
			map.put("fail", "No Students");
			return "AdminHome";
		}
		else 
		{
			map.put("details", details);
			return "AdminViewStudents";
		}
	}
}
