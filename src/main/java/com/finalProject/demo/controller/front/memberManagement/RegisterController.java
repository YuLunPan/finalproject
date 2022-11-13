package com.finalProject.demo.controller.front.memberManagement;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.finalProject.demo.model.entity.member.Member;
import com.finalProject.demo.service.member.MemberService;


@Controller
public class RegisterController {
	
	@Autowired
	private MemberService mService;
	
	@GetMapping("/member/register")
	public String addRegister(Model model) {
		Member m1 = new Member();
		model.addAttribute("register",m1);
		return "front/member/register";
	}
	
	// ----- 註冊成功畫面 -----
		@PostMapping("/member/register")
		public String postRegister(@ModelAttribute(name="registersubmit") Member member,RedirectAttributes re) {
			Member hasMember = mService.findByEmail(member.getEmail());
			if (hasMember!=null) {
				re.addAttribute("Msg", "帳號重複!");
				System.out.println("帳號重複!");
				return "redirect:/member/register";
			} else {
				//加鹽密碼Bcrypt
				String saltPwd = BCrypt.hashpw(member.getPassword(), BCrypt.gensalt());
				member.setPassword(saltPwd);
				mService.insert(member);
				re.addAttribute("Msg", "註冊成功!");
				System.out.println("註冊成功!");
				return "redirect:/member/login";
			}
		}
}
