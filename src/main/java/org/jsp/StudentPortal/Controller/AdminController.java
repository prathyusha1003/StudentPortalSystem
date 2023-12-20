package org.jsp.StudentPortal.Controller;

import org.jsp.StudentPortal.Service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/admin")
public class AdminController 
{
	@Autowired
	AdminService adminService;
	
    @GetMapping("/login")
    public String loadAdminLogin()
    {
    	return "AdminLogin";
    }
    
    @PostMapping("/login")
	public String login(@RequestParam String email, @RequestParam String password, ModelMap map, HttpSession session) 
    {
		return adminService.login(email, password, map, session);
	}
    
    @GetMapping("/view-faculty-details")
    public String fetchFacultyDetails(HttpSession session, ModelMap map)
    {
		String admin = (String) session.getAttribute("admin");
		if(admin == null)
		{
			map.put("fail","Invalid Session");
			return "index";
		}
		else
		{
			return adminService.fetchFacultyDetails(map);
		}
    }
    
    @GetMapping("/view-student-details")
    public String fetchStudentDetails(HttpSession session, ModelMap map)
    {
		String admin = (String) session.getAttribute("admin");
		if(admin == null)
		{
			map.put("fail","Invalid Session");
			return "index";
		}
		else
		{
			return adminService.fetchStudentDetails(map);
		}
    }
    
    @GetMapping("/back")
	public String back(HttpSession session, ModelMap map)
	{
		String admin = (String) session.getAttribute("admin");
		if (admin == null) 
		{
			map.put("fail", "Invalid Session");
			return "index";
		}
		else
		{
			return "AdminHome";
		}
	}
}
