package org.niit.service;

import org.niit.dao.ProductDAO;
import org.niit.model.Product;
import org.niit.service.ItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;



@Service
public class ItemServiceImpl implements ItemService {

    @Autowired
    private ProductDAO itemDao;

	@Override
	public List<Product> list() {
		return itemDao.list();
	}

	@Override
	public Product get(String id) {
		return itemDao.get(id);
	}

	@Override
	public void saveOrUpdate(Product product) {
		itemDao.saveOrUpdate(product);
		
	}

	@Override
	public void delete(String id) {
		itemDao.delete(id);
		
	}

/*    public Product getItemById (int id) {
        return itemDao.getItemById(id);
    }

    public List<Product> getItemList () {
        return itemDao.getItemList();
    }

    public void addItem(Product item) {
    	itemDao.addItem(item);
    }

    public void editItem(Product item) {
    	itemDao.editItem(item);
    }

    public void deleteItem(Product item) {
    	itemDao.deleteItem(item);
    }*/
}
