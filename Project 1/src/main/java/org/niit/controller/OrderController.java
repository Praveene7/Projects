package org.niit.controller;

import org.niit.model.Cart;
import org.niit.model.Userdetails;
import org.niit.model.UserOrder;
import org.niit.service.CartService;
import org.niit.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;


/*
 * This controller is used to handle user order
 */
@Controller
public class OrderController {

    @Autowired
    private CartService cartService;

    @Autowired
    private OrderService orderService;
    /*
     * createOrder method is used to insert user order into the database.
     */
    @RequestMapping("/order/{cartId}")
    public String createOrder(@PathVariable("cartId") int cartId) {
    	System.out.println("in order");
    	UserOrder userOrder = new UserOrder();
        Cart cart=cartService.getCartById(cartId);
        userOrder.setCart(cart);

        Userdetails usersDetail = cart.getUserdetails();
        userOrder.setUsersDetail(usersDetail);
        userOrder.setBillingAddress(usersDetail.getBillingAddress());
        //userOrder.setShippingAddress(usersDetail.getShippingAddress());

        orderService.addOrder(userOrder);

        return "redirect:/checkout?cartId="+cartId;
    }
}
