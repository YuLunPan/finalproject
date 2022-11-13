package com.finalProject.demo.util;

import io.jsonwebtoken.*;
import io.jsonwebtoken.io.Decoders;
import io.jsonwebtoken.security.Keys;
import org.springframework.stereotype.Service;

import javax.crypto.SecretKey;
import java.util.Date;


@Service
public class JwtUtil {

    public   static final long EXPIRE = 1000*60*60;//有效期限1hr
    public static final String TOKEN_SECRET = "####HEYTHEREWELCOMETOCHEZMOIWebtheBestallfromkorea####";//私鑰保存在Server

    /**
     *
     * @param email
     * @param name
     * @return
     */
    public static String getUserJwtToken(String email, String name, Long id){


        byte[] key = Decoders.BASE64.decode((TOKEN_SECRET));
        SecretKey secretKey = Keys.hmacShaKeyFor(key);
        return Jwts.builder()
                .setHeaderParam("typ","JWT")//標頭
                .setHeaderParam("alg","HS256")
                .setSubject(name)
                .setIssuedAt(new Date())
                .setExpiration(new Date(System.currentTimeMillis()+EXPIRE))
                .claim("name",name)
                .claim("id",id)
                .claim("role","user")
                .signWith(secretKey,SignatureAlgorithm.HS256)
                .compact();
    }

    public static String getManagerJwtToken(String email, String name, Long id){


        byte[] key = Decoders.BASE64.decode((TOKEN_SECRET));
        SecretKey secretKey = Keys.hmacShaKeyFor(key);
        return Jwts.builder()
                .setHeaderParam("typ","JWT")//標頭
                .setHeaderParam("alg","HS256")
                .setSubject(name)
                .setIssuedAt(new Date())
                .setExpiration(new Date(System.currentTimeMillis()+EXPIRE))
                .claim("name",name)
                .claim("id",id)
                .claim("role","manager")
                .signWith(secretKey,SignatureAlgorithm.HS256)
                .compact();
    }

    public static Claims verify(String token) throws JwtException{
            Jws<Claims> claimsJws = Jwts
                    .parserBuilder()
                    .setSigningKey(TOKEN_SECRET)
                    .build()
                    .parseClaimsJws(token);

            return claimsJws.getBody();

    }






}
