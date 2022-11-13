package com.finalProject.demo.controller.front.cartManagerment;

import com.finalProject.demo.model.entity.cart.Cart;
import com.finalProject.demo.model.entity.product.Photo;
import com.finalProject.demo.model.entity.product.Products;
import com.finalProject.demo.service.cart.CartService;
import com.finalProject.demo.service.product.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
//@SessionAttributes("Member")

public class AddToCartController {
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private CartService cartService;
	
	
	//加入購物車
	@GetMapping("/shop/addToCart")
	public String addToCart(Model model,
			@RequestParam("id") String productId,
							HttpServletRequest request
			) {
		Products product = productService.findById(productId);
		String series = product.getSeries();
		String stringId = String.valueOf(request.getAttribute("memberId"));
		Long memberId = Long.valueOf(stringId);
//		Member member = (Member) model.getAttribute("Member");
//		Long memberId = member.getMemberId();
		Integer price = product.getPrice();
		String productName = product.getName();
		Photo photo = product.getPhoto();
		Long photoId = photo.getPhotoId();
		String productColor = product.getColor();
		String productSize = product.getSize();
		Cart findCart = cartService.findById(memberId, productId);
		if(findCart==null) {
			Cart cart = new Cart();
			cart.setMemberId(memberId);
			cart.setProductId(productId);
			cart.setProductName(productName);
			cart.setPhotoId(photoId);
			cart.setProductColor(productColor);
			cart.setProductSize(productSize);
			cart.setQuantity(1);
			cart.setPrice(price);
			cart.setTotal(price);
			cartService.insert(cart);
			return "redirect:/shop/productDetail?series="+series;
		}else {
			findCart.setProductName(productName);
			findCart.setPhotoId(photoId);
			findCart.setProductColor(productColor);
			findCart.setProductSize(productSize);
			Integer quantity = findCart.getQuantity();
			quantity+=1;
			findCart.setQuantity(quantity);
			findCart.setPrice(price);
			Integer price2 = findCart.getPrice();
			Integer total = price2*quantity; 
			findCart.setTotal(total);
			cartService.insert(findCart);
//			return "redirect:/shop";
			return "redirect:/shop/productDetail?series="+series;

		}
		
	}
	
	//現在的會員是誰
//	@ModelAttribute("Member")
//	public Member viewMember(Model model) {
//		Member memberLogin = new Member();
//		memberLogin.setMemberId(2L);
//		return memberLogin;
//	}
	
	//取得所有Products
	@ModelAttribute("Products")
	public List<Products> viewProducts() {
		return productService.findAll();
	}
	
	
}
