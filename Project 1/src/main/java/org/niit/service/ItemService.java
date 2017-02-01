package org.niit.service;

import org.niit.model.Product;

import java.util.List;


public interface ItemService {

/*    List<Product> getItemList();

    Product getItemById(int id);

    void addItem(Product item);

    void editItem(Product item);

    void deleteItem(Product item);*/
	public List<Product> list();

	public Product get(String id);

	public void saveOrUpdate(Product product);

	public void delete(String id);
}
