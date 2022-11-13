package com.finalProject.demo.controller.front.cartManagerment;

import java.util.List;

import com.finalProject.demo.service.member.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.finalProject.demo.model.entity.member.Member;
import com.finalProject.demo.model.entity.product.Products;
import com.finalProject.demo.service.cart.CartService;
import com.finalProject.demo.service.product.ProductService;

import javax.servlet.http.HttpServletRequest;

@Controller
@SessionAttributes("Member")
public class DeleteFromCartController {

	@Autowired
	private ProductService productService;
	
	@Autowired
	private CartService cartService;

	@Autowired
	MemberService memberService;
	

	//刪除購物車商品
	@GetMapping("/cart/deleteFromCart")
	public String deleteFromCart(Model model,
			@RequestParam("id") String productId
			) {
		Member member = (Member) model.getAttribute("Member");
		assert member != null;
		Long memberId = member.getMemberId();
		cartService.deleteById(memberId, productId);
		return "redirect:/cartAll";
	}
	
	//現在的會員是誰
	@ModelAttribute("Member")
	public Member viewMember(Model model, HttpServletRequest request) {
		//取得memberId
		String stringId = String.valueOf(request.getAttribute("memberId"));
		Long memberId = Long.valueOf(stringId);
		Member memberLogin = new Member();
		memberLogin.setMemberId(memberId);
		return memberLogin;
	}
		
	//取得所有Products
	@ModelAttribute("Products")
	public List<Products> viewProducts() {
		return productService.findAll();
	}
		
		
}
