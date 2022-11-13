package com.finalProject.demo.controller.back.memberManagement;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.finalProject.demo.model.entity.member.Member;
import com.finalProject.demo.service.member.MemberService;

@Controller
@RequestMapping("Back")
public class MemberController {

	@Autowired
	private MemberService mService;
	
	@GetMapping("member/showMember")
	public String viewMember(@RequestParam(name = "p", defaultValue = "1") Integer pageNumber, Model model) {
		Page<Member> page = mService.findByPage(pageNumber);
		
		model.addAttribute("page", page);
		
		return "back/member/showMember";
	}

}
