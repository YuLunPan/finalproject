package com.finalProject.demo.controller.back.productManagement;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.finalProject.demo.model.entity.product.Products;
import com.finalProject.demo.service.product.PhotoService;
import com.finalProject.demo.service.product.ProductService;

/**
 * @author AJ
 *
 */
@RestController
@RequestMapping("Back")
public class MyProductRestApiController {
	
	ProductService productService;
	PhotoService photoService;
	
	@Autowired
	public MyProductRestApiController(ProductService productService, PhotoService photoService) {
		super();
		this.productService = productService;
		this.photoService = photoService;
	}
	
	//分頁控制
//	@GetMapping(value = "/MyProduct/all",produces = { "application/json; charset=UTF-8" })//進入畫面就會顯示全部
//	public List<Products> getProducts(@RequestParam(name = "page",defaultValue = "1") Integer pageNumber) {
//		Page<Products> findByPage = productService.findByPage(pageNumber);
//		return findByPage.getContent();
//	}
		
//	@GetMapping(value = "/MyProduct/all",produces = { "application/json; charset=UTF-8" })
//	public List<Products> getProducts(Model model){
//		return productService.findAll();
//	}
	
	@GetMapping(value = "/MyProduct/{category}",produces = {"application/json;charset=UTF-8"})
	public List<Products> getByCategory(@PathVariable("category") String category){
		return productService.findByCategory(category);
	}
	
	@GetMapping(value = "/MyProduct/state/{productState}",produces = {"application/json;charset=UTF-8"})
	public List<Products> getByproductState(@PathVariable("productState") String productState){
		return productService.findByProductState(productState);
	}
	
	//search
	@PostMapping(value="/MyProduct/searchById",produces = {"application/json;charset=UTF-8"})
	public List<Products> search(@RequestParam("id")String productId){
		return null;
	}
		
	
}
