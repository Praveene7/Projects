package org.niit.controller;



import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.niit.dao.CartDao;
import org.niit.dao.CartItemDao;
import org.niit.dao.OrderDao;
import org.niit.dao.UserdetailsDAO;
import org.niit.model.BillingAdd;
import org.niit.model.Cart;

import org.niit.model.Product;
import org.niit.model.ShippingAdd;
import org.niit.model.Userdetails;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;

@Component
public class FlowController {
	
	@Autowired
	private ShippingAdd shippingAddress;

	@Autowired
	private BillingAdd billingAddress;
	/*@Autowired
	private CardDetail cardDetail;

	@Autowired
	private ShippingAddressDAO shippingAddressDAO;

	@Autowired
	private BillingAddressDAO billingAddressDAO;
	@Autowired
	private CardDetailDAO cardDetailDAO;*/
	@Autowired
	Userdetails userdetails;
	@Autowired
	UserdetailsDAO userdetailsDAO;

	@Autowired
	CartDao cartDAO;

	
	@Autowired
	private SessionFactory sessionFactory;

	@Autowired
	private OrderDao orderdao;
	@Autowired
	CartItemDao cartItemDAO;
	@Autowired
	HttpSession httpSession;
	@Autowired
	Product product;
	
	/* public Cart validate(int cartId) throws IOException {
	        Cart cart=getCartById(cartId);
	        if(cart==null||cart.getCartItems().size()==0) {
	            throw new IOException(cartId+"");
	        }
	        update(cart);
	        return cart;
	    }
	 public Cart getCartById (int cartId) {
	        Session session = sessionFactory.getCurrentSession();
	        return (Cart) session.get(Cart.class, cartId);
	    }

	    public void update(Cart cart) {
	        int cartId = cart.getCartId();
	        double grandTotal = orderdao.getOrderGrandTotal(cartId);
	        cart.setGrandTotal(grandTotal);

	        Session session = sessionFactory.getCurrentSession();
	        session.saveOrUpdate(cart);
	    }
*/	
	public String addShippingAddress(ShippingAdd shippingAddress) {
		userdetails = userdetailsDAO.getUserByUsername(SecurityContextHolder.getContext()
				.getAuthentication().getName());

		shippingAddress.setUserid(userdetails.getUserid());
		//checkoutDetails.setShippingAddress(shippingAddress);

		this.shippingAddress.setUserid(userdetails.getUserid());
		this.shippingAddress.setAddressLine1(shippingAddress.getAddressLine1());
		this.shippingAddress.setAddressLine2(shippingAddress.getAddressLine2());
		this.shippingAddress.setCity(shippingAddress.getCity());
		this.shippingAddress.setState(shippingAddress.getState());
		this.shippingAddress.setCountry(shippingAddress.getCountry());
		this.shippingAddress.setZipCode(shippingAddress.getZipCode());

		return "success";
	}

	public String addBillingAddress( BillingAdd billingAddress) {
		userdetails = userdetailsDAO.getUserByUsername(SecurityContextHolder.getContext().getAuthentication().getName());
		billingAddress.setUserid(userdetails.getUserid());
		//checkoutDetails.setBillingAddress(billingAddress);

		this.billingAddress.setUserid(userdetails.getUserid());
		this.billingAddress.setAddressLine1(billingAddress.getAddressLine1());
		this.billingAddress.setAddressLine2(billingAddress.getAddressLine2());
		this.billingAddress.setCity(billingAddress.getCity());
		this.billingAddress.setState(billingAddress.getState());
		this.billingAddress.setCountry(billingAddress.getCountry());
		this.billingAddress.setZipCode(billingAddress.getZipCode());

		return "success";
	}

	/*public String addCardDetails(CardDetail cardDetail) {
		userdetails = userdetailsDAO.getCustomerByUserName(SecurityContextHolder.getContext().getAuthentication().getName());

		cardDetail.setUserid(userdetails.getUserid());
		cardDetail.setTotalCost(cartDAO.getCartById(userdetails.getUserid()).getGrandTotal());
		cardDetailDAO.saveOrUpdate(cardDetail);

		List<CartItem> listOfCartItems = cartItemDAO.getCartItemByItemId(userdetails.getUserid());

		listOfCartItems = cartItemDAO.getCartItemsByCustomerId(userdetails.getUserid());

		cart = cartDAO.getCartById(userdetails.getUserid());

		cart.setCartId(cart.getCartId());
		cart.setCustomerId(cart.getUserdetails());
		cart.setNoOfProducts(listOfCartItems.size());

		shippingAddressDAO.saveOrUpdate(checkoutDetails.getShippingAddress());
		billingAddressDAO.saveOrUpdate(checkoutDetails.getBillingAddress());
		cartDAO.update(cart);

		httpSession.setAttribute("noOfProducts", cart.getNoOfProducts());

		return "success";
	}

	*/
	

}
