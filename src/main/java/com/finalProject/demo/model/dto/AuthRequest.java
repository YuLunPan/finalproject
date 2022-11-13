package com.finalProject.demo.model.dto;

import org.springframework.validation.annotation.Validated;

import javax.validation.constraints.NotBlank;

public class AuthRequest {

    @NotBlank
    private String userName;

    @NotBlank
    private String password;


    public AuthRequest() {
    }


    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
