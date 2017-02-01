package org.niit.controller;



import org.niit.dao.SupplierDAO;
import org.niit.model.Supplier;
import org.niit.util.Util;
//import org.niit.util.Util;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class SupplierController {
	@Autowired
	private SupplierDAO supplierDAO;
	@Autowired
	private Supplier supplier ;
	

	
	@RequestMapping(value="/suppliers" , method=RequestMethod.GET)
	public String getListSuppliers(Model model){
		model.addAttribute("supplier", supplier);
		model.addAttribute("supplierList", this.supplierDAO.list());
		model.addAttribute("clickedSuppliers","true");
		return "AdminHome";		
	}
	
	@RequestMapping(value="/addsupplier" , method=RequestMethod.POST)
	public String addSupplier(@ModelAttribute("supplier") Supplier supplier, Model model){
		
	String newID=	Util.removeComma(supplier.getId());
		supplier.setId(newID);
		supplierDAO.saveOrUpdate(supplier);
		model.addAttribute("supplierList", this.supplierDAO.list());
		return "redirect:/suppliers";
	}
	
	@RequestMapping("removesupplier/{id}") 
	public String deleteSupplier(@PathVariable("id") String id, ModelMap model)
	{
		
		System.out.println("delete");
		supplierDAO.delete(id);
		return "redirect:/suppliers";
	}
	
	@RequestMapping("editsupplier/{id}")
	public String editSupplier(@PathVariable("id")String id, Model model)
	{
		/*ModelAndView mv = new ModelAndView("/AdminCategory");

		if(categoryDAO.get(category.getId())!= null)
		{
			categoryDAO.update(category);
			model.addAttribute("categoryList", this.categoryDAO.list());
			mv.addObject("message", "successfully updated ");
		}
		else
		{
			mv.addObject("errorMessage","Could not update the record");
		}
	return mv;*/
		model.addAttribute("supplier",this.supplierDAO.get(id));
		model.addAttribute("supplierList", this.supplierDAO.list());
		
		return "AdminSupplier";
		
	}
	
	
}


