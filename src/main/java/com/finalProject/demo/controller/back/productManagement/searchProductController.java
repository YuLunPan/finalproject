package com.finalProject.demo.controller.back.productManagement;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.finalProject.demo.model.entity.product.Products;
import com.finalProject.demo.service.product.ProductService;

@Controller
@RequestMapping("/Back/MyProduct")
public class searchProductController {

	@Autowired
	private ProductService pService;
	
	@PostMapping("/findByProductIdLike")
	public String findByProductIdContaining(@RequestParam(name="search") String ProductId, Model model) {
		List<Products> list = pService.findByProductIdContaining(ProductId);
		model.addAttribute("list",list);
		return "back/product/myProductSearch";
	}
	
	@RequestMapping("/deleteAll/{deleteIds}")
	public ModelAndView delete(@PathVariable(name="deleteIds") String tag) {
		String[] strs = tag.split(",");
		for(int i = 0;i < strs.length; i++) {
			try {
				pService.deleteById(strs[i]);
			}catch(Exception e){
			}
		}
		return new ModelAndView("redirect:/Back/MyProduct");
		
	}
	
	
}
