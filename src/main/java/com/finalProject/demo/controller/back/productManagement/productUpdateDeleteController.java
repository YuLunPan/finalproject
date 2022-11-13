package com.finalProject.demo.controller.back.productManagement;

import java.util.List;
import java.util.Map;
import java.util.Objects;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
public class productUpdateDeleteController {
	
	ProductService productService;
	PhotoService photoService;
	DescriptTextService descriptTextService;
	
	@Autowired
	public productUpdateDeleteController(ProductService productService, PhotoService photoService,DescriptTextService descriptTextService) {
		super();
		this.productService = productService;
		this.photoService = photoService;
		this.descriptTextService = descriptTextService;
	}
	
	//刪除商品
		@GetMapping("/MyProduct/delete/{id}")
		public String deleteProduct(@PathVariable("id") String productId) {
			if(productService.existsById(productId)) {
				productService.deleteById(productId);	
			}
			return "redirect:/Back/MyProduct";
		}

	@GetMapping("/MyProduct/edit/{id}")
	public String productUpdate(@PathVariable("id")String id , Model model) {
		Products product = productService.findById(id);
		model.addAttribute("product",product);
		return"back/product/updateProduct";
		//要增加修改圖片功能(一起給model送過去)
	}


	//修改單一商品功能post
	@PostMapping ("/MyProduct/edit")
	public String postUpdate(
			@ModelAttribute("product")Products product,
			@RequestParam(value = "mainProduct_pic",required = false) MultipartFile mainPic,
			@RequestParam(value = "fit_pic",required = false) MultipartFile fitPic,
			@RequestParam(value = "detail_pic",required = false) MultipartFile[] detailPics,
			@RequestParam(value = "descriptText",required = false) String text,
			@RequestParam(value = "color",required = false)String color,
			@RequestParam(value = "size",required = false)String size,
			@RequestParam(value = "name",required=false)String name,
			@RequestParam(value = "state",required=false)String state,
			@RequestParam(value = "price",required=false)Integer price,
			HttpServletRequest request,
			Map<String,String> msgMap,
			Model model,
			RedirectAttributes ra) {

		//photo




		//商品描述
		if (text.contains("\n")) {
			text = text.replace("\n", "<br>");
			if (text.contains(" ")) {
				text = text.replace(" ","&nbsp;");
			}
		}
		String descId = request.getParameter("descId");
		Long dId = Long.valueOf(descId);


		//商品update
		String newProductId;
		String category = request.getParameter("category");
		String productId = request.getParameter("productId");
		String series = productId.substring(0,4);
		char prefix = category.charAt(0);
		//判斷分類(將acc分類與其他分類分開)
		if (!(prefix=='A')){
			newProductId=series+"-"+size+"-"+color;
			if (!productService.existsById(newProductId)) {

				productService.updateById(newProductId, size, color,state, productId);
				if(price!=null && !Objects.equals(productService.findById(newProductId).getPrice(), price)) {
					productService.updateSeriesPrice(price,series);}
				if(name!=null && !Objects.equals(productService.findById(newProductId).getName(), name)) {
					productService.updateSeriesName(name,series);}			
				if(!productService.findById(newProductId).getDescript().getText().equals(text)) {descriptTextService.updateById(dId,text);}
				msgMap.put("msg","修改商品成功!新的商品ID為:"+newProductId);
				//當新的id == 舊的 id，代表size color相同，所以檢查其他的有沒有不同
			}else if (newProductId.equals(productId)) {
				Integer price2 = productService.findById(productId).getPrice();
				if(!Objects.equals(price2, price)) {
					productService.updateSeriesPrice(price,series);}
				if(!Objects.equals(productService.findById(productId).getName(), name)) {
					productService.updateSeriesName(name,series);}			
				if(!productService.findById(productId).getDescript().getText().equals(text)) {descriptTextService.updateById(dId,text);}
				if (state!=null){productService.updateStateById(state,productId);}
				msgMap.put("msg","修改商品成功!");
			}else {
				ra.addAttribute("msg","商品重複!請重新選擇顏色及尺寸!");
				return"redirect:/Back/MyProduct/edit/"+productId;
			}
		}else {
			if (product.getSize()!=null && !(product.getSize().isEmpty())){
				size = product.getSize();
				if (product.getColor()!=null && !(product.getColor().isEmpty())){
					color = product.getColor();
					newProductId=series+"-"+size+"-"+color;
					if (!productService.existsById(newProductId)) {
						productService.updateById(newProductId, size, color,state, productId);
						//如果有更改price name text
						if(price!=null && !Objects.equals(productService.findById(newProductId).getPrice(), price)) {
							productService.updateSeriesPrice(price,series);}
						if(name!=null && !Objects.equals(productService.findById(newProductId).getName(), name)) {
							productService.updateSeriesName(name,series);}
						if(!productService.findById(newProductId).getDescript().getText().equals(text)) {descriptTextService.updateById(dId,text);}
						msgMap.put("msg","修改商品成功!新的商品ID為:"+newProductId);
					}else if (newProductId.equals(productId)) {
						Integer price2 = productService.findById(productId).getPrice();
						if(!Objects.equals(price2, price)) {
							productService.updateSeriesPrice(price,series);}
						if(!Objects.equals(productService.findById(productId).getName(), name)) {
							productService.updateSeriesName(name,series);}
						if(!productService.findById(productId).getDescript().getText().equals(text)) {descriptTextService.updateById(dId,text);}
						if (state!=null){productService.updateStateById(state,productId);}
						msgMap.put("msg","修改商品成功!");
					}else {
						ra.addAttribute("msg","商品重複!請重新選擇顏色及尺寸!");
						return"redirect:/Back/MyProduct/edit/"+productId;
					}
				}else{
					newProductId = series+"-"+size;
					if (!productService.existsById(newProductId)) {
						productService.updateById(newProductId, size, color,state, productId);
						if(price!=null && !Objects.equals(productService.findById(newProductId).getPrice(), price)) {
							productService.updateSeriesPrice(price,series);}
						if(name!=null && !Objects.equals(productService.findById(newProductId).getName(), name)) {
							productService.updateSeriesName(name,series);}
						if(!productService.findById(newProductId).getDescript().getText().equals(text)) {descriptTextService.updateById(dId,text);}
						msgMap.put("msg","修改商品成功!新的商品ID為:"+newProductId);
					}else if (newProductId.equals(productId)) {
						Integer price2 = productService.findById(productId).getPrice();
						if(!Objects.equals(price2, price)) {
							productService.updateSeriesPrice(price,series);}
						if(!Objects.equals(productService.findById(productId).getName(), name)) {
							productService.updateSeriesName(name,series);}
						if(!productService.findById(productId).getDescript().getText().equals(text)) {descriptTextService.updateById(dId,text);}
						if (state!=null){productService.updateStateById(state,productId);}
						msgMap.put("msg","修改商品成功!");
					}else {
						ra.addAttribute("msg","商品重複!請重新選擇顏色及尺寸!");
						return"redirect:/Back/MyProduct/edit/"+productId;
					}
				}
			}else {
				if (product.getColor()!=null && !(product.getColor().isEmpty())){
					newProductId = series+"-"+color;
					if (!productService.existsById(newProductId)) {
						productService.updateById(newProductId, size, color,state, productId);
						if(price!=null && !Objects.equals(productService.findById(newProductId).getPrice(), price)) {
							productService.updateSeriesPrice(price,series);}
						if(name!=null && !Objects.equals(productService.findById(newProductId).getName(), name)) {
							productService.updateSeriesName(name,series);}
						if(!productService.findById(newProductId).getDescript().getText().equals(text)) {descriptTextService.updateById(dId,text);}
						msgMap.put("msg","修改商品成功!新的商品ID為:"+newProductId);
					}else if (newProductId.equals(productId)) {
						Integer price2 = productService.findById(productId).getPrice();
						if(!Objects.equals(price2, price)) {
							productService.updateSeriesPrice(price,series);}
						if(!Objects.equals(productService.findById(productId).getName(), name)) {
							productService.updateSeriesName(name,series);}
						if(!productService.findById(productId).getDescript().getText().equals(text)) {descriptTextService.updateById(dId,text);}
						if (state!=null){productService.updateStateById(state,productId);}
						msgMap.put("msg","修改商品成功!");
					}else {
						ra.addAttribute("msg","商品重複!請重新選擇顏色及尺寸!");
						return"redirect:/Back/MyProduct/edit/"+productId;
					}

				}
			}
		}
		
		return"redirect:/Back/MyProduct";
	}
}
