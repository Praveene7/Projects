package org.niit.service;

import org.niit.model.Cart;


public interface CartService {

    Cart getCartById (int cartId);

    void update(Cart cart);
}
