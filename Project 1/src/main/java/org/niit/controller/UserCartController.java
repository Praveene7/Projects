package org.niit.controller;

import java.security.Principal;

import org.niit.dao.UserdetailsDAO;
import org.niit.model.Userdetails;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.web.bind.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


/*
 * This controller is called when user clicks on cart menu or button
 */
@Controller
@RequestMapping("/user/cart")
public class UserCartController {

    @Autowired
    private UserdetailsDAO userdetailsDAO;
    
    /*
     * Initially getCart method is called to get user card items from database
     */
    @RequestMapping
    public String getCartItems(Principal username){
    	/*UsersDetail usersDetail = usersDetailService.getUserByUsername (activeUser.getUsername());*/
    	try {
			Userdetails userdetails = userdetailsDAO.getUserByUsername(username.getName());
			int cartId = userdetails.getCart().getCartId();

			return "redirect:/user/cart/"+cartId;
		} catch (Exception e) {
			return "Login";
		}
    }
    /*
     * getCartRedirect method is called from getCart method to set retrieved cart from the database.
     */
    @RequestMapping("/{cartId}")
    public String getNewUrl(@PathVariable (value = "cartId") int cartId, Model model) {
        model.addAttribute("cartId", cartId);

        return "cart";
    }

}
