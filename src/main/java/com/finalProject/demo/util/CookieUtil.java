package com.finalProject.demo.util;

import io.jsonwebtoken.Claims;
import org.springframework.stereotype.Component;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@Component
public class CookieUtil {


    public static Long getIdByCookie(HttpServletRequest request,String cookieName){
        return getaLong(getCookieByName(request, cookieName));

    }

    public static String getUserNameByCookie(HttpServletRequest request, String cookieName ){
        return getaName(getCookieByName(request,cookieName));
    }

    public static Cookie getCookieByName(HttpServletRequest request, String cookieName){
        Cookie[] cookies = request.getCookies();
        if(cookies!=null){
            for (Cookie cookie : cookies){
                if (cookieName.equals(cookie.getName())){
                    return cookie;
                }
            }
        }
        return null;
    }

    public static Long getaLong(Cookie cookieByName) {
        if (cookieByName !=null){
            String value = cookieByName.getValue();
            Claims claims = JwtUtil.verify(value);
            assert claims != null;
            Integer stringId = (Integer) claims.get("id");
            return stringId.longValue();

        }
        return null;
    }

    public static String getaName(Cookie cookieByName) {
        if (cookieByName !=null){
            String value = cookieByName.getValue();
            Claims claims = JwtUtil.verify(value);
            assert claims != null;
            return (String) claims.get("name");
        }
        return null;
    }

    public  static  boolean removeUserCookieToken(HttpServletRequest request, HttpServletResponse response, String cookieName){
        Cookie token = getCookieByName(request, cookieName);
        if (token!=null){
            token.setValue(null);
            token.setMaxAge(0);
            token.setPath("/Chezmoi");
            response.addCookie(token);
            return true;
        }
        return false;
    }

    public  static  boolean removeManagerCookieToken(HttpServletRequest request, HttpServletResponse response, String cookieName){
        Cookie token = getCookieByName(request, cookieName);
        if (token!=null){
            token.setValue(null);
            token.setMaxAge(0);
            token.setPath("/Chezmoi/Back");
            response.addCookie(token);
            return true;
        }
        return false;
    }
}
