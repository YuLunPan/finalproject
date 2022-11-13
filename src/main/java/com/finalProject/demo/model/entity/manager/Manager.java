package com.finalProject.demo.model.entity.manager;


import org.springframework.web.bind.annotation.RequestMapping;

import javax.persistence.*;

@Entity
public class Manager {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "managerId", unique = true, nullable = false)
    private Long managerId;

    @Column(name = "managerName", nullable = false,columnDefinition ="nvarchar(10)" )
    private String managerName;

    @Column(name = "phone", nullable = false)
    private String phone;

    @Column(name = "email", nullable = false,columnDefinition = "nvarchar(50)")
    private String email;

    public Manager(){

    }

    public Long getManagerId() {
        return managerId;
    }

    public void setManagerId(Long managerId) {
        this.managerId = managerId;
    }

    public String getManagerName() {
        return managerName;
    }
    public void setManagerName(String managerName) {
        this.managerName = managerName;
    }
    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Column(name ="password", nullable = false,columnDefinition = "nvarchar(Max)")
    private String password;


}
