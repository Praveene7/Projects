package org.niit.controller;

import org.niit.dao.CartDao;
import org.niit.dao.CartItemDao;
import org.niit.dao.ProductDAO;
import org.niit.dao.UserdetailsDAO;
import org.niit.model.Cart;
import org.niit.model.CartItem;
import org.niit.model.Userdetails;
import org.niit.model.Product;
import org.niit.service.CartItemService;
import org.niit.service.CartService;
import org.niit.service.UsersDetailService;
import org.niit.service.ItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.web.bind.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;



import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpSession;


/*
 *Only for User Role
 *This controller is used to handle rest service calls.
 *All functionality related to user cart is written in this controller.
*/
@Controller
@RequestMapping("/usercart/cart")
public class CartManagementController {

    @Autowired
    private CartDao cartDao;

    @Autowired
    private CartItemDao cartItemDao;
   
    @Autowired
    private ProductDAO productDAO;
    
    @Autowired
    private UserdetailsDAO userdetailsDAO;
    
    

    @RequestMapping("/refreshCart/{cartId}")
    public @ResponseBody
    Cart getCartById (@PathVariable(value = "cartId") int cartId) {
        return cartDao.getCartById(cartId);
    }
    /*
     * addItem method is used to add a item in user cart.
     */

    @RequestMapping(value = "/addItem/{id}", method = RequestMethod.PUT)
    @ResponseStatus(value = HttpStatus.NO_CONTENT)
    public void addItem (@PathVariable(value ="id") String id, Principal username) {
    	
				Userdetails userdetails = userdetailsDAO.getUserByUsername(username.getName());
				Cart cart = userdetails.getCart();       
				Product product = productDAO.getProductById(id);
				List<CartItem> cartItems = cart.getCartItems();
				System.out.println(cartItems);
				for (int i=0; i<cartItems.size(); i++) {
				    if(product.getId()==cartItems.get(i).getProduct().getId()){
				        CartItem cartItem = cartItems.get(i);
				        cartItem.setItemId(product.getId());
				        cartItem.setName(product.getName());
				        cartItem.setPrice(product.getPrice());
				        cartItem.setQuantity(cartItem.getQuantity()+1);
				        cartItem.setTotalPrice(product.getPrice()*cartItem.getQuantity());
				        cartItemDao.addCartItem(cartItem);

				        return;
				    }
				}

				CartItem cartItem = new CartItem();
				cartItem.setItemId(product.getId());
				cartItem.setName(product.getName());
				cartItem.setPrice(product.getPrice());
				cartItem.setProduct(product);
				cartItem.setQuantity(1);
				cartItem.setTotalPrice(product.getPrice()*cartItem.getQuantity());
				cartItem.setCart(cart);
				cartItemDao.addCartItem(cartItem);
		
    }

    /*
     * removeItem method is used to remove a item from user cart.
     */
    @RequestMapping(value = "/removeItem/{itemId}", method = RequestMethod.PUT)
    @ResponseStatus(value = HttpStatus.NO_CONTENT)
    public void removeItem (@PathVariable(value = "itemId") int itemId) {
        CartItem cartItem = cartItemDao.getCartItemByItemId(itemId);
        cartItemDao.removeCartItem(cartItem);

    }
    /*
     * clearCartItems method is used to remove all items from user cart.
     */
    @RequestMapping(value = "/clearCartItems/{cartId}", method = RequestMethod.DELETE)
    @ResponseStatus(value = HttpStatus.NO_CONTENT)
    public void clearCartItems(@PathVariable(value = "cartId") int cartId) {
        Cart cart = cartDao.getCartById(cartId);
        cartItemDao.removeAllCartItems(cart);
    }
    /*
     * ExceptionHandler for client errors.
     */
    @ExceptionHandler(IllegalArgumentException.class)
    @ResponseStatus(value = HttpStatus.BAD_REQUEST, reason = "Illegal request, please verify your payload.")
    public void handleClientErrors (Exception e) {}
    /*
     * ExceptionHandler for server errors.
     */
    @ExceptionHandler(Exception.class)
    @ResponseStatus(value = HttpStatus.INTERNAL_SERVER_ERROR, reason = "Internal Server Error.")
    public void handleServerErrors (Exception e) {}
}
