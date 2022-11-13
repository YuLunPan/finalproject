package com.finalProject.demo.service.member;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.finalProject.demo.model.entity.member.Member;
import com.finalProject.demo.repository.member.MemberRepository;

@Transactional
@Service
public class MemberService {
	
	@Autowired
	private MemberRepository mDao;
	
	//找Email是否註冊過 + 忘記密碼
	public Member findByEmail(String email) {
		return mDao.findByEmail(email);
	}
	
	//註冊新增至資料庫 修改資料至資料庫
	public Member insert(Member member) {
		return mDao.save(member);
	}
	
	//輸入資料庫手機左邊補0
	public String leftPadding(String phone) {
		return String.format("%010d",phone);
	}
		
	//後台全部會員資料
	public Page<Member> findByPage(Integer pageNumber){
		Pageable pgb = PageRequest.of(pageNumber-1, 10, Sort.Direction.ASC, "memberId");
		Page<Member> page = mDao.findAll(pgb);
		return page;
	}
	
	//登入
	public List<Member> findLogin(String email,String password) {
		return mDao.findLogin(email,password);
	}
	
	//顯示會員資料
	public Member viewUser(String email, String password){
		return mDao.viewUser(email, password);
	}
	
	//忘記密碼
//		public Member findByEmail(String email) {
//			return mDao.findEmail(email);
//		}
	
	//修改會員資料
//	public int updateUser(Member member) {
//		String email = member.getEmail();
//		String memberName = member.getMemberName();
//		String birthday = member.getBirthday();
//		String phone = member.getPhone();
//		int result = mDao.updateUser(email, memberName, birthday, phone);
//		
//		return result;
//				mDao.update(member);	
//	}
	
//	public List<Member> findAll() {
//		return mDao.findAll();
//	}
	
	public Member findById(Long memberId) {
		Optional<Member> optional = mDao.findById(memberId);
		
		if(optional.isPresent()) {
			return optional.get();
		}
		
		return null;
	}
	
	
	//忘記密碼
//	public Member findPassword(String email, String phone) {
//		Optional<Member> optional = mDao.findPassword(email,phone);
//		
//		if(optional.isPresent()) {
//			return optional.get();
//		}
//		
//		return null;
//	}
	
	
	
}
