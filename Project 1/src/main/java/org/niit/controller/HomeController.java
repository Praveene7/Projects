package org.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.niit.dao.CategoryDAO;
import org.niit.dao.ProductDAO;
import org.niit.dao.UserdetailsDAO;
import org.niit.model.Category;
import org.niit.model.Product;
import org.niit.model.Userdetails;

@Controller
public class HomeController {

	@Autowired
	Userdetails userdetails;
	@Autowired(required=true)
	UserdetailsDAO userdetailsDAO;
	@Autowired
	CategoryDAO categoryDAO;
	@Autowired
	ProductDAO productDAO;
	
	@RequestMapping("/")
	public ModelAndView onLoad(HttpSession session,Model model)
	{
		model.addAttribute("category", new Category());
		model.addAttribute("categoryList", this.categoryDAO.list());
		model.addAttribute("product", new Product());
		model.addAttribute("productList",this.productDAO.list());
	ModelAndView mv = new ModelAndView("home");
	mv.addObject("isUserClickedRegisterHere", "true");
	mv.addObject("loggedOut", "true");

	return mv;
	}
	@RequestMapping("/Register")
public ModelAndView registerhere()
{
	ModelAndView mv = new ModelAndView("Register");
	mv.addObject("userDetails", userdetails);
	mv.addObject("isUserClickedRegisterHere", "true");
	return mv;
}

@RequestMapping("/LoginHere")
public ModelAndView loginHere()
{
	ModelAndView mv = new ModelAndView("Login");
	mv.addObject("userDetails", userdetails);
	mv.addObject("isUserClickedLoginHere", "true");
	return mv;
}

@RequestMapping("/Loginfailure")
public ModelAndView loginfailure()
{
	ModelAndView mv = new ModelAndView("Login");
	mv.addObject("msg","Invalid username and password");
	return mv;
}
	
@RequestMapping("/Product")
public ModelAndView product(HttpSession session,Model model)
{
	ModelAndView mv = new ModelAndView("ProductView");
	model.addAttribute("product", new Product());
	model.addAttribute("productList",this.productDAO.list());
	
	return mv;
}

@RequestMapping("/Cart")
public ModelAndView cart(HttpSession session,Model model)
{
	ModelAndView mv = new ModelAndView("cart");
	/*model.addAttribute("cart", new Product());
	model.addAttribute("cartList",this.productDAO.list());*/
	
	return mv;
}
	
@RequestMapping(value="RegisterSuccess",method = RequestMethod.POST)
public ModelAndView registerUser(@ModelAttribute Userdetails userdetails)
{
	ModelAndView mv;
	mv= new ModelAndView("Login");
	String msg;
	int j=0;
	
	 List<Userdetails> usersDetailList=userdetailsDAO.list();

	    for (int i=0; i< usersDetailList.size(); i++) {
	        if(userdetails.getEmail().equals(usersDetailList.get(i).getEmail())) {
	        	mv= new ModelAndView("Register");
	        	mv.addObject("msg","Email already exists");
	            j=1;
	            
	        }	       

	        if(userdetails.getUsername().equals(usersDetailList.get(i).getUsername())) {
	            mv= new ModelAndView("Register");
	            mv.addObject("msg","Username already exists");
	            j=1;
	            }
	        if(userdetails.getContact().equals(usersDetailList.get(i).getContact())) {
	            mv= new ModelAndView("Register");
	            mv.addObject("msg","Contact number already exists");
	            j=1;
	            }
	    }
	    if(j==0){
	    	mv.addObject("msg","You have registered successfully, please log in to continue");
		    userdetailsDAO.save(userdetails);	    	
	    }

		
	    return mv;
	    
	/*if(userdetailsDAO.get(userdetails.getUserid())==null)
	{
		userdetailsDAO.save(userdetails);
		mv.addObject("msg","you are successfully register");
	}
	else
	{
		mv.addObject("msg", "user exist with this id");
	}
	
	mv.addObject("isUserClickedSubmit", "true");
	return mv;*/
	    
}

}
