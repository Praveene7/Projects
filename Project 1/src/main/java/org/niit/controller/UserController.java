package org.niit.controller;

import java.util.Collection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import org.niit.dao.UserdetailsDAO;
import org.niit.model.Userdetails;

@Controller
public class UserController {
	@Autowired(required=true)
	UserdetailsDAO userdetailsDAO;
	
	@Autowired
	Userdetails userdetails;
	
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/loginsuccess") //value should be same as given in authentication-success-forward-url tag in springsecurity.xml
	public String login_session_attributes(HttpSession session,Model model) 
	{
		System.out.println("Hello");
		String userid = SecurityContextHolder.getContext().getAuthentication().getName();
		
		Collection<GrantedAuthority> authorities = (Collection<GrantedAuthority>) SecurityContextHolder.getContext().getAuthentication().getAuthorities();
		String page="";
		
		String role="ROLE_USER";
		for (GrantedAuthority authority:authorities) 
		{
		 System.out.println(authority.getAuthority());
		     if (authority.getAuthority().equals(role)) 
		     {
		    	 /*userdetails=userdetailsDAO.get(userid);
		    	 session.setAttribute("loggedInUser", userdetails.getUsername());
		    	 session.setAttribute("loggedInUserID", userdetails.getUserid());*/
		    	
		    	 session.setAttribute("UserLoggedIn", "true");
		    	 session.setAttribute("Username", userid);
		    	 page="home";
		    		 
		    	 break;
		     }
		     else 
		     {
		    	 session.setAttribute("LoggedIn", "true");
		    	 session.setAttribute("Administrator", "true");
		    	 page="AdminHome";
		    	 break;
		    }
		}
		return page;
	}
	/*@RequestMapping("/isValidUser")
	public ModelAndView showMessage(@RequestParam(value = "userid") String username,
			@RequestParam(value = "password") String password) {
		System.out.println("in controller");

		String message;
		ModelAndView mv ;
		if (userdetailsDAO.isValidUser(username,password)) 
		{
			message = "Successfully Logged in";
			 mv = new ModelAndView("User");
		} else{
			message="Please enter a valid username and password";
			mv=new ModelAndView("Login");
		}

		mv.addObject("message", message);
		mv.addObject("username", username);
		return mv;
	}
	*/
	
	/*@RequestMapping("/Login")
	public ModelAndView login(@RequestParam(value = "userid")String id, @RequestParam(value= "password")String password,HttpSession session)
	{
		ModelAndView mv=new ModelAndView();
		 userdetails = userdetailsDAO.isValidUser(id, password);
		if(userdetails.getRole().equals("ROLE_USER"))
		{
			mv = new ModelAndView("User");	
			
		}
		else
		{
			if(userdetails.getRole().equals("ROLE_ADMIN"))
			{
				mv = new ModelAndView("adminHome");
			}
		}
		
		session.setAttribute("Welcome", userdetails.getName());
		return mv;
	}*/
@RequestMapping("/logout")
public ModelAndView logout(HttpServletRequest request,HttpSession session)
{
	ModelAndView mv= new ModelAndView("home");
	session.invalidate();
	session=request.getSession(true);
	mv.addObject("isUserClickedRegisterHere", "true");
	mv.addObject("logoutMessage","You successfully logged out");
	mv.addObject("loggedOut", "true");
	return mv;
}
@RequestMapping("productView")
public ModelAndView onLoadProductView()
{
	ModelAndView mv=new ModelAndView("ProductView");

	return mv;
}
	
}
