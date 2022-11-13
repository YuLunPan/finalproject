package com.finalProject.demo.jwtInterceptor;

import com.finalProject.demo.util.JwtUtil;
import io.jsonwebtoken.Claims;
import io.jsonwebtoken.JwtException;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import static com.finalProject.demo.util.CookieUtil.getCookieByName;
import static com.finalProject.demo.util.CookieUtil.removeUserCookieToken;

@Component
public class BackInterceptor implements HandlerInterceptor {


    //請求在進入controller前執行
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        //從http請求頭獲取token
        Cookie[] cookies = request.getCookies();
        if (cookies.length>0){
            Cookie tokenByCookie = getCookieByName(request, "tokenM");
            if (tokenByCookie!=null){
                String tokenValue = tokenByCookie.getValue();
                try {
                    Claims claims = JwtUtil.verify(tokenValue);
                    assert claims != null;
                    Integer managerId = (Integer) claims.get("id");
                    String name = (String) claims.get("name");
                    String role =(String) claims.get("role");
                    if (role.equals("manager")){
                        if (managerId != 0){
                            request.setAttribute("managerId",managerId);
                            request.setAttribute("managerName",name);
                            return true;
                        }
                    }else {
                        response.sendRedirect(request.getContextPath()+"/Back/manager/login");
                        return false;
                    }
                }catch (JwtException jwtException){
                    //當verify發現token已經過期時，會丟出JwtException，在這裡做處理
                    //跳轉到登入畫面
                    //進入到登入並發送時會404
                    response.sendRedirect(request.getContextPath()+"/Back/manager/login");
                    return false;
                }
            }else {

//                String requestURI = request.getRequestURI();
//                request.setAttribute("uri",requestURI);
//                request.getRequestDispatcher("/member/login").forward(request,response);
                boolean b = removeUserCookieToken(request,response, "token");
                response.sendRedirect(request.getContextPath()+"/Back/manager/login");
                return false;
            }

        }
        response.sendRedirect(request.getContextPath()+"/Back/manager/login");
        return false;

    }
    //controller之後執行
    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
        HandlerInterceptor.super.postHandle(request, response, handler, modelAndView);
    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
        HandlerInterceptor.super.afterCompletion(request, response, handler, ex);
    }

}
