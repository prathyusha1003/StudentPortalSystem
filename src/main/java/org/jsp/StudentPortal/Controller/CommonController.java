package org.jsp.StudentPortal.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

import jakarta.servlet.http.HttpSession;

@Controller
public class CommonController 
{
	@GetMapping("/logout")
	public String logout(HttpSession session, ModelMap map)
	{
	    session.invalidate();
	    map.put("pass", "Logout Success");
	    return "index";
	}
	
	@GetMapping("/portal-members-login")
	public String portalMembersLogin(HttpSession session, ModelMap map)
	{
	    return "PortalMembersLogin";
	}
	
	@GetMapping("/portal-members-signup")
	public String portalMembersSignUp(HttpSession session, ModelMap map)
	{
	    return "PortalMembersSignUp";
	}
}
