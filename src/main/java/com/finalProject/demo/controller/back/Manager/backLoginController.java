package com.finalProject.demo.controller.back.Manager;


import com.finalProject.demo.model.entity.manager.Manager;
import com.finalProject.demo.model.entity.member.Member;
import com.finalProject.demo.service.Manager.ManagerService;
import com.finalProject.demo.util.JwtUtil;
import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("Back")
public class backLoginController {

    @Autowired
    private ManagerService mService;

    @GetMapping("/manager/login")
    public String login(HttpServletRequest request, @ModelAttribute(name = "manager") Member member){
        return "back/manager/login";
    }

    @PostMapping("/manager/login")
    public String login(HttpServletRequest request, HttpServletResponse response, @ModelAttribute(name = "manager") Manager manager,
                              RedirectAttributes re, Model model) {

        Manager manager1 = mService.findEmail(manager.getEmail());
        if (manager1!=null) {
            String hasMemberPassword = manager1.getPassword();
            boolean check = BCrypt.checkpw(manager.getPassword(), hasMemberPassword);
            if (check){
                String jwtToken = JwtUtil.getManagerJwtToken(manager1.getEmail(),manager1.getManagerName(),manager1.getManagerId());
//					response.setHeader("Authorization", jwtToken);
                Cookie cookie = new Cookie("tokenM", jwtToken);
                cookie.setMaxAge(60*60*12);//有效期限2小時:60*60*12
                cookie.setPath("/Chezmoi/Back"); //設置Domain(重要!!!!)
                response.addCookie(cookie);
                return "redirect:/Back/member/showMember";
            }
        } else {
            model.addAttribute("Msg", "帳號或密碼輸入錯誤!");
        }
        return "back/manager/login";
    }



}
