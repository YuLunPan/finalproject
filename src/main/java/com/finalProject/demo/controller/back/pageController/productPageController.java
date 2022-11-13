package com.finalProject.demo.controller.back.pageController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.finalProject.demo.model.entity.product.Products;

@Controller
@RequestMapping("Back")
public class productPageController {
	
	//新增商品頁面Get //效果等同model.addAttribute("product",new Products());
	@GetMapping("Product/add")
	public String addProduct(@ModelAttribute("product") Products porduct) { 
		return"back/product/addProduct";
	}


}
