package com.finalProject.demo.service.product;

import java.util.List;
import java.util.Optional;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;


import com.finalProject.demo.model.entity.product.Products;
import com.finalProject.demo.repository.product.ProductRepository;


@Service
@Transactional
public class ProductService {

	@Autowired
	ProductRepository productRepository;
	
	//add product
	public void addProduct(Products product) {
		productRepository.save(product);
	}


	//delete product
	public void deleteById(String id) {
		productRepository.deleteById(id);
	}
	
	//get all products
	public List<Products> getProducts() {
		return productRepository.findAll();
	}
	
	//find a product by id
	public Products findById(String id) {
		 Optional<Products> optional = productRepository.findById(id);
		return optional.orElse(null);
	}
	
	//find by page
	public Page<Products> findByPage(Integer pageNumber) {
		//Pageable 
		Pageable pageable = PageRequest.of(pageNumber-1, 10, Sort.Direction.DESC, "createTime");
		//父層:Page<T> findAll(Pageable pageable);
		 return productRepository.findAll(pageable);	
	}

	
	//find by category
	public List<Products> findByCategory(String category) {
		return productRepository.findByCategory(category);
	}
	
	public List<Products> findByProductState(String state) {
		return productRepository.findByProductState(state);
	}
	
	//newPorductId
	public String newSeriesId(String category) {
		String newId = null;
		char shortName = category.charAt(0);
		List<Products> productList = productRepository.findByCategoryOrderByProductIdDesc(category);
		//如果分類中沒有product就直接從1開始
		newId=shortName+"001";
		
		if(!productList.isEmpty()){
			String productId = productList.get(0).getProductId();
			String regEx = "[^0-9]";
			Matcher matcher = Pattern.compile(regEx).matcher(productId);
			String str =matcher.replaceAll("").trim();
			 int num = Integer.parseInt(str)+1;
			 newId = String.format(shortName+"%03d",num);
		}
		return newId;
	}
	
	//確認product是否存在
	public Boolean existsById(String id) {
		boolean exists = productRepository.existsById(id);
		if(exists) {
			return true;
		}
		return false;
	}

	
	//find all
	public List<Products> findAll() {
		return productRepository.findAll();
	}
	
	//findByName
	public List<Products> findByName(String name) {
		return productRepository.findByName(name);
	}
	
	//updateById
	public void updateById(String newId,String size, String color,String state,String oldId){
		productRepository.updateById(newId,size,color,state,oldId);
	}

	//UPDATE STATE by id
	public void updateStateById(String state,String id){
		productRepository.updateStateById(state,id);
	}
	
	//update price By Series
	public void updateSeriesPrice(Integer price,String series) {
		productRepository.updateSeriesPrice(price,series);
	}
	
	//update name By Seriess
	public void updateSeriesName(String name,String series) {
			productRepository.updateSeriesName(name,series);
		}
	
	//模糊查詢
	public List<Products> findByProductIdContaining(String productId) {
		return productRepository.findByProductIdContaining(productId);
	}

}
