package com.finalProject.demo.controller.back.pageController;

import com.finalProject.demo.util.CookieUtil;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;

@RestController
public class backNavbarController {


    @GetMapping(value = "/Back/showName")
    public ResponseEntity<String> showName(HttpServletRequest request){
        String name = CookieUtil.getUserNameByCookie(request, "tokenM");
        return new ResponseEntity<>(name, HttpStatus.OK);
    }
}
