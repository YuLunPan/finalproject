package com.finalProject.demo.controller.back.productManagement;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.finalProject.demo.model.entity.product.Products;
import com.finalProject.demo.service.product.PhotoService;
import com.finalProject.demo.service.product.ProductService;

@Controller
@RequestMapping("Back")
public class myProductAllController {

    ProductService productService;
    PhotoService photoService;

    @Autowired
    public myProductAllController(PhotoService photoService, ProductService productService) {
        super();
        this.photoService = photoService;
        this.productService = productService;
    }


    @GetMapping(value = "/MyProduct",produces = { "application/json; charset=UTF-8" })//進入畫面就會顯示全部
    public String getProducts(@RequestParam(name = "page",defaultValue = "1") Integer pageNumber, Model model) {
        Page<Products> findByPage = productService.findByPage(pageNumber);
        model.addAttribute("page",findByPage);
        return "back/product/myProductAll";
    }
}
