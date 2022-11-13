package com.finalProject.demo.repository.member;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.finalProject.demo.model.entity.member.Member;

public interface MemberRepository extends JpaRepository<Member, Long> {
	
	//註冊 + 忘記密碼
	@Query(value = "from Member where email = :email")
	public Member findByEmail(String email);
	
	//登入
	@Query(value = "from Member where email = ?1 and password = ?2")
	public List<Member> findLogin(String email, String password);
	
	//顯示會員資料
	@Query(value = "from Member where email = :email and password = :password")
	public Member viewUser(String email, String password);

	//忘記密碼
//	@Query(value = "from Member where email = :email and phone = :phone")
//	public Member findPassword(@Param("email")String email,@Param("phone") String phone); //用@Param或上面改 = ?1 ,= ?2

//	//修改會員資料
//	@Modifying
//	@Query(value = "update Member set memberName= ?1 where birthday =?2 and phone =?3 and email =?4",nativeQuery=true)
//	public Integer updateUser(String memberName, String birthday, String phone, String email);
	
}
