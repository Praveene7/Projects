package org.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.servlet.http.HttpServletRequest;

import org.niit.dao.CategoryDAO;
import org.niit.dao.ProductDAO;
import org.niit.dao.SupplierDAO;
import org.niit.model.Category;
import org.niit.model.Product;
import org.niit.model.Supplier;
import org.niit.util.FileUtil;
import org.niit.util.Util;

@Controller
public class ProductController {

	@Autowired(required=true)
	private ProductDAO productDAO;
	
	@Autowired(required=true)
	private CategoryDAO categoryDAO;
	
	@Autowired(required=true)
	private SupplierDAO supplierDAO;
	
	private String path="D:\\Project\\BabysCart\\src\\main\\webapp\\resources\\img\\";
	
	@RequestMapping(value="/products",method=RequestMethod.GET)
	public String listProducts(Model model)
	{
		model.addAttribute("product", new Product());
		model.addAttribute("supplier", new Supplier());
		model.addAttribute("category",new Category());
		model.addAttribute("productList",this.productDAO.list());
		model.addAttribute("categoryList",this.categoryDAO.list());
		model.addAttribute("supplierList",this.supplierDAO.list());
		model.addAttribute("clickedProduct","true");
		return "AdminHome";
	}
	
	@RequestMapping(value="/addproduct", method=RequestMethod.POST)
public String addProduct(@ModelAttribute("product")Product product, HttpServletRequest request,Model model)
{
		String newID=	Util.removeComma(product.getId());
		product.setId(newID);
		Category category = categoryDAO.getByName(product.getCategory().getName());
		categoryDAO.saveOrUpdate(category);
		Supplier supplier = supplierDAO.getByName(product.getSupplier().getName());
		supplierDAO.saveOrUpdate(supplier);
		
		product.setCategory(category);
		product.setSupplier(supplier);
		
		product.setCategory_id(category.getId());
		product.setSupplier_id(supplier.getId());
		
		productDAO.saveOrUpdate(product);
		
		MultipartFile image= product.getImage();
		FileUtil.upload(path, image, product.getId()+".jpg");
		/*String rootDirectory = request.getSession().getServletContext().getRealPath("/");
		Path path = Paths.get(rootDirectory + "\\webapp\\resources\\img\\"+product.getId()+".png");
		Path path= Paths.get("/image/"+product.getName()+".jpg");*/
		
		
		model.addAttribute("productList",this.productDAO.list());
		
		
		
		return "redirect:/products";
}
	
@RequestMapping("removeproduct/{id}")
public String removeProduct(@PathVariable("id")String id ,Model model) throws Exception
{
	{
		System.out.println("delete");
		productDAO.delete(id);
		return "redirect:/products";
	}


}
@RequestMapping("editproduct/{id}")
public String editProduct(@PathVariable("id") String id, Model model) {
	System.out.println("editProduct");
	model.addAttribute("product", this.productDAO.get(id));
	model.addAttribute("listProducts", this.productDAO.list());
	model.addAttribute("categoryList",this.categoryDAO.list());
	model.addAttribute("supplierList",this.supplierDAO.list());
	

	return "AdminProduct";
}

@RequestMapping("product/get/{id}")
public String getSelectedProduct(@PathVariable("id") String id, RedirectAttributes redirectAttributes) {
	System.out.println("getSelectedProduct");
	redirectAttributes.addFlashAttribute("selectedProduct", this.productDAO.get(id));
//	model.addAttribute("categoryList", this.categoryDAO.list());
//model.addAttribute("clickedProductViews", "true");
	return "redirect:/home";
}

	// viewItem method is used to show items detail page
@RequestMapping("/showproduct/{id}")
public String viewItem(@PathVariable String id, Model model) throws IOException {
	    	System.out.println("in show");
	    	Product product=productDAO.get(id);
	        model.addAttribute("item", product);

	        return "Productdesc";
	    }
}


