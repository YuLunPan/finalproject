package com.finalProject.demo.repository.manager;

import com.finalProject.demo.model.entity.manager.Manager;
import com.finalProject.demo.model.entity.member.Member;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface ManagerRepository extends JpaRepository<Manager, Long> {

    //註冊
    @Query(value = "from Manager where email = :email")
    public Manager findEmail(String email);

    //登入
    @Query(value = "from Manager where email = ?1 and password = ?2")
    public List<Manager> findLogin(String email, String password);

    //顯示會員資料
    @Query(value = "from Manager where email = :email and password = :password")
    public Manager viewUser(String email, String password);

    //忘記密碼
    @Query(value = "from Manager where email = :email and phone = :phone")
    public Manager findPassword(@Param("email")String email, @Param("phone") String phone);

}
