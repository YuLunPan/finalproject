package com.finalProject.demo.controller.back.productManagement;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.finalProject.demo.model.entity.product.DescriptText;
import com.finalProject.demo.model.entity.product.Photo;
import com.finalProject.demo.model.entity.product.Products;
import com.finalProject.demo.service.product.DescriptTextService;
import com.finalProject.demo.service.product.PhotoService;
import com.finalProject.demo.service.product.ProductService;

/**
 * @author AJ
 *
 */
@Controller
@RequestMapping("/Back")
public class addProductController {

	ProductService productService;
	PhotoService photoService;
	DescriptTextService descriptTextService; 
	
	@Autowired
	public addProductController(ProductService productService, PhotoService photoService,
			DescriptTextService descriptTextService) {
		super();
		this.productService = productService;
		this.photoService = photoService;
		this.descriptTextService = descriptTextService;
	}
	
	
	//新增商品Post

	@PostMapping(value={"/Product/add","/fileUpload"})
	public String postAddProduct(
			@ModelAttribute("product")Products product,
			@RequestParam(value = "mainProduct_pic",required = false)MultipartFile mainPic,
			@RequestParam(value = "fit_pic",required = false)MultipartFile fitPic,
			@RequestParam(value = "detail_pic",required = false) MultipartFile[]  pics,
			@RequestParam(value = "size",required = false)List<String> sizeList,
			@RequestParam(value = "color",required=false)List<String> colorList,
			@RequestParam(value = "descriptText",required = false) String descriptText,
			@RequestParam("state") String state,
			Model model,
			RedirectAttributes re) {
		
		//PHOTO(10.19需增加判斷)

		Photo newphoto = new Photo();
		try {

			if (mainPic!=null && !(mainPic.isEmpty())){
				newphoto.setMainProduct_pic(mainPic.getBytes());
			}
			if (fitPic!=null && !(fitPic.isEmpty())){
				newphoto.setFit_pic(fitPic.getBytes());
			}
			byte[] bytePic;
			int max=4;
			if (pics.length!=0 && pics.length<=max){
				for (int i=0;i<pics.length;i++){
					bytePic = pics[i].getBytes();
					if (i==0){
						newphoto.setPicOne(bytePic);
					} else if (i==1) {
						newphoto.setPicTwo(bytePic);
					} else if (i==2) {
						newphoto.setPicThree(bytePic);
					} else {
						newphoto.setPicFour(bytePic);
					}
				}
				photoService.addPhoto(newphoto);
				product.setPhoto(newphoto);
			}else {
				re.addAttribute("msg","圖片超過上限數量!新增商品失敗!");
				return "redirect:/Back/Product/add";
			}
		} catch (IOException e) {
			e.printStackTrace();
			throw new RuntimeException("檔案上傳發生異常: " + e.getMessage());
		}
		/* 一一取得color、size，並新增 new product
		 *前端要增加判斷欄位(欄位都有才新增product!)/除了Acc可以不用全部都要
		 *
		 *因為還有同一商品，不同尺寸，不同顏色的問題，需要做成兩種不同的控制器
		 *一個為new product(新增商品系列)
		 *一個為new old product(在已經有舊商品的情況下，在那個系列下新增商品)
		 * */

		String size ;
		String color;
		String productId;
		Products newProduct = new Products();
		//處理商品描述
		if(descriptText!=null && !descriptText.isEmpty()) {
			DescriptText text = new DescriptText();
			text.setText(descriptText);
			descriptTextService.save(text);
			product.setDescript(text);
			if (product.getPrice()!=null && product.getName()!=null){
				//判斷分類(將acc分類與其他分類分開)
				if((product.getCategory()!=null) && (!product.getCategory().isEmpty())) {
					String seriesId = productService.newSeriesId(product.getCategory());
					if(!product.getCategory().equals("Accessories")) {
						//判斷list中有無顏色及尺寸
						if(( sizeList!=null&&(!sizeList.isEmpty())) && (colorList!=null&&(!colorList.isEmpty()))) {
							for (String s : sizeList) {
								size = s;
								for (String value : colorList) {
									color = value;
									newProduct.setColor(color);
									newProduct.setSize(size);
									newProduct.setCategory(product.getCategory());
									newProduct.setName(product.getName());
									newProduct.setPrice(product.getPrice());
									newProduct.setPhoto(product.getPhoto());
									newProduct.setDescript(product.getDescript());
									productId = seriesId + "-" + size + "-" + color;
									newProduct.setProductId(productId);
									newProduct.setSeries(seriesId);
									newProduct.setProductState(state);
									productService.addProduct(newProduct);
								}

							}
						}

					}
					//類別為acc時執行
					else {
						if(sizeList!=null && (!sizeList.isEmpty()) ) {
							for (String s : sizeList) {
								size = s;
								newProduct.setSize(size);
								if (colorList != null && !(colorList.isEmpty())) {
									for (int j = 0; j < colorList.size(); j++) {
										//size&color 都有
										color = colorList.get(j);
										newProduct.setColor(color);
										productId = seriesId + "-" + size + "-" + color;
										newProduct.setProductId(productId);
										newProduct.setCategory(product.getCategory());
										newProduct.setName(product.getName());
										newProduct.setPrice(product.getPrice());
										newProduct.setPhoto(product.getPhoto());
										newProduct.setDescript(product.getDescript());
										newProduct.setProductState(state);
										newProduct.setSeries(seriesId);
										productService.addProduct(newProduct);
									}
								} else {
									//沒有color只有size
									productId = seriesId + "-" + size;
									newProduct.setProductId(productId);
									newProduct.setCategory(product.getCategory());
									newProduct.setName(product.getName());
									newProduct.setPrice(product.getPrice());
									newProduct.setPhoto(product.getPhoto());
									newProduct.setDescript(product.getDescript());
									newProduct.setProductState(state);
									newProduct.setSeries(seriesId);
									productService.addProduct(newProduct);
								}
							}
						}else {
							if(colorList!=null && !(colorList.isEmpty())) {
								for (String s : colorList) {
									color = s;
									newProduct.setColor(color);
									productId = seriesId + "-" + color;
									newProduct.setProductId(productId);
									newProduct.setCategory(product.getCategory());
									newProduct.setName(product.getName());
									newProduct.setPrice(product.getPrice());
									newProduct.setPhoto(product.getPhoto());
									newProduct.setDescript(product.getDescript());
									newProduct.setProductState(state);
									newProduct.setSeries(seriesId);
									productService.addProduct(newProduct);
								}
							}
						}

					}

				}else {
					//顯示錯誤訊息(未選擇分類)
					re.addAttribute("msg","未選取分類!");
					return "redirect:/Back/Product/add";
				}
			}else {
				re.addAttribute("msg","商品名稱或商品價格內容不可空白!");
				return "redirect:/Back/Product/add";
			}
		}else {
			re.addAttribute("msg","商品描述不得為空白!");
			return "redirect:/Back/Product/add";
		}

		//刷新頁面
		model.addAttribute("product",new Products());
		re.addAttribute("msg","新增商品成功!");
		return "redirect:/Back/Product/add";
	}

}
     