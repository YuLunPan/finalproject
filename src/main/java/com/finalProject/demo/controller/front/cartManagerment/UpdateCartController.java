package com.finalProject.demo.controller.front.cartManagerment;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.finalProject.demo.model.dto.CartDto;
import com.finalProject.demo.model.entity.cart.Cart;
import com.finalProject.demo.model.entity.member.Member;
import com.finalProject.demo.service.cart.CartService;

import javax.servlet.http.HttpServletRequest;

@Controller
//@SessionAttributes("Member")
public class UpdateCartController {
	
	@Autowired
	private CartService  cartService;
	
	@RequestMapping("/api/updateCart")
	public Cart updateCart(@RequestBody CartDto dto,
						   Model model, HttpServletRequest request) {
//		Member member=(Member) model.getAttribute("Member");
//		Long memberId = member.getMemberId();
		//取得memberId
		String stringId = String.valueOf(request.getAttribute("memberId"));
		Long memberId = Long.valueOf(stringId);

		Integer quantity = dto.getQuantity();
		Integer total = dto.getTotal();
		String productId = dto.getProductId();
		Cart cart = cartService.findById(memberId, productId);
		cart.setMemberId(memberId);
		cart.setProductId(productId);
		cart.setTotal(total);
		cart.setQuantity(quantity);
		cartService.save(cart);
		return cart;
	}

//	@ModelAttribute("Member")
//	public Member viewMember(Model model) {
//		Member memberLogin = new Member();
//		memberLogin.setMemberId(2L);
//		return memberLogin;
//	}
}
