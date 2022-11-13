package com.finalProject.demo.controller.back.Manager;


import com.finalProject.demo.service.Manager.ManagerService;
import com.finalProject.demo.util.CookieUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("Back")
public class backLogoutController {

    @Autowired
    private ManagerService mService;

    @GetMapping("/manager/logout")
    public String logout(HttpServletRequest request, HttpServletResponse response) {
        String cookieName = "tokenM";
        boolean b = CookieUtil.removeManagerCookieToken(request, response, cookieName);
        return "redirect:/Back/manager/login";
    }


}
