package com.finalProject.demo.controller.front.pageController;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.finalProject.demo.model.entity.product.Products;
import com.finalProject.demo.service.product.ProductService;

@Controller
public class WishTestController {
	
	@Autowired
	private ProductService productService;

	//查看心理測驗頁面
	@GetMapping("/wishTest")
	public String viewWishTest() {
		return "front/wishTest/wishTest";
	}
	
	//查看心理測驗問題頁面
	@GetMapping("/wishTest/question")
	public String viewWishTestQuestion(Model model) {
		List<Products> productsList = new ArrayList<>();
		List<Products> findProducts1 = productService.findByName("溫柔小姊姊金釦西外");
		Products product1 = findProducts1.get(0);
		List<Products> findProducts2 = productService.findByName("浪漫復古風花邊襯衫");
		Products product2 = findProducts2.get(0);
		List<Products> findProducts3 = productService.findByName("白雪公主小香針織");
		Products product3 = findProducts3.get(0);
		List<Products> findProducts4 = productService.findByName("慵懶系無領90%羊毛大衣");
		Products product4 = findProducts4.get(0);
		List<Products> findProducts5 = productService.findByName("戀愛男友風直紋襯衫");
		Products product5 = findProducts5.get(0);
		productsList.add(product1);
		productsList.add(product2);
		productsList.add(product3);
		productsList.add(product4);
		productsList.add(product5);
		model.addAttribute("Products",productsList);
		return "front/wishTest/question";
	}
	

}
