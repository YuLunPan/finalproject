package com.finalProject.demo.controller.front.pageController;

import java.util.List;

import javax.servlet.http.HttpServletRequest;


import com.finalProject.demo.util.CookieUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;


import com.finalProject.demo.model.entity.cart.Cart;
import com.finalProject.demo.model.entity.member.Member;
import com.finalProject.demo.service.cart.CartService;
import com.finalProject.demo.service.member.MemberService;


@RestController
//@SessionAttributes("Member")
public class NavBarController {

	@Autowired
	private CartService cartService;
	
	@Autowired
	private MemberService memberService;


	//找購物車有幾項商品,回傳數字顯示在navbar上
	@GetMapping(value = {"/cartQuantity"})
	public String viewCartQuantity(Model model, HttpServletRequest request) {
//		Member memberLogin = new Member();
//		memberLogin.setMemberId(1L);
//		Member member = (Member) model.getAttribute("Member");
		Long memberId = CookieUtil.getIdByCookie(request, "token");
		if (memberId!=null){
			Member member = memberService.findById(memberId);
			if (member != null){
				List<Cart> findCart = cartService.findByMemberId(member);
				int size = findCart.size();
				return String.valueOf(size);
			}
		}
		return "0" ;
	}
	
	@GetMapping(value = "/showName")
	public ResponseEntity<String> showName(HttpServletRequest request, Model model){
//		Member member = (Member) model.getAttribute("Member");
		String name = CookieUtil.getUserNameByCookie(request, "token");
		if (name!=null){
			return new ResponseEntity<>(name, HttpStatus.OK);
		}
		return new ResponseEntity<>("顧客", HttpStatus.OK);
	}

}
