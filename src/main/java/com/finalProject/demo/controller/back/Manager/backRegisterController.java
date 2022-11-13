package com.finalProject.demo.controller.back.Manager;

import com.finalProject.demo.model.entity.manager.Manager;
import com.finalProject.demo.service.Manager.ManagerService;
import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


@Controller
@RequestMapping("Back")
public class backRegisterController {
	
	@Autowired
	private ManagerService mService;
	
	@GetMapping("/manager/register")
	public String addRegister(@ModelAttribute("manager")Manager manager) {
		return "back/manager/register";
	}
	
	// ----- 註冊成功畫面 -----
	@PostMapping("/manager/register")
	public String postRegister(@ModelAttribute(name="manager") Manager manager, RedirectAttributes re, Model model) {
		Manager manager1 = mService.findEmail(manager.getEmail());
		if (manager1!=null) {
			model.addAttribute("Msg", "帳號重複!");
			return "back/manager/register";
		} else {
			//加鹽密碼Bcrypt
			String saltPwd = BCrypt.hashpw(manager.getPassword(), BCrypt.gensalt());
			manager.setPassword(saltPwd);
			mService.insert(manager);
			re.addAttribute("Msg", "註冊成功!請重新登入!");
			return "redirect:/Back/manager/login";
		}
	}

}
