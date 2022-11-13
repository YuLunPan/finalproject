package com.finalProject.demo.controller.front.memberManagement;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.finalProject.demo.mail.EmailSenderSerivce;
import com.finalProject.demo.model.entity.member.Member;
import com.finalProject.demo.service.member.MemberService;

@Controller
@SessionAttributes({"forgetPassword","memberForget"})
public class ForgotPwdController {

	@Autowired
	private EmailSenderSerivce emailservice;
	
	@Autowired
	private MemberService mService;
	
	// ============================ 忘記密碼頁面 ========================
	@GetMapping("/member/forgotpassword") 								
	public String forgotpassword(Model model,@ModelAttribute(name = "editpassword")Member member) {
			return "front/member/forgotpassword"; 			// 找 /forgotpassword.jsp 顯示畫面：登入畫面
	}
	
	// ============================ 忘記密碼:判斷email是否正確 ========================
			@PostMapping("/sendVerify")
			@ResponseBody
			public Map<String, String> findPassword(HttpServletRequest request, @RequestBody Member email,
					RedirectAttributes re,Model model) {
		// ---- 資料傳到SQL ------
				Member mmm = mService.findByEmail(email.getEmail());
				HashMap<String, String> map = new HashMap<>();
					System.out.println("==================== 忘記密碼 =========================");
					if (mmm != null) { 			   // 若資料庫沒有的帳密則登入失敗
//						// 如果登入成功帳密存到Session
//						// 第一步：獲取session
//						HttpSession session = request.getSession();
//						// 第二步：將想要保存到數據存入session中
//						session.setAttribute("email", mmm.getEmail()); // 取得那欄位的帳號,從0(陣列)開始,放入session
//						session.setAttribute("phone", mmm.getPhone());
//						// 完成了用戶名和密碼保存到session的操作
						model.addAttribute("memberForget", mmm);
						try {
			                String verifyString = emailservice.sendForgotPwdEmail(email.getEmail());
			                model.addAttribute("forgetPassword", verifyString);

			                map.put("sendOK", "信件寄出成功");
			                System.out.println(verifyString);
			                return map;     
			            } catch (Exception e) {
			                map.put("unexpectError", e.getMessage());
			                return map;
			            }
					 }else {
						 	re.addAttribute("Msg", "查無此信箱"); 			   // 畫面顯示：查無此信箱
				            map.put("emailError", "查無此信箱");
				            return map;
				        }
			}
			
			// ============================ 忘記密碼:判斷驗證碼是否正確 ========================
		    @PostMapping("/checkString")
		    @ResponseBody
		    public Map<String,String> checkRandomString(@RequestParam String randomString,
		                                                Model model) {
		        String rString = (String) model.getAttribute("forgetPassword");
		        HashMap<String, String> map = new HashMap<>();
		        System.out.println(rString);
	            System.out.println(randomString);
		        //比對認證
		        if(randomString.equals(rString)) {
		        	System.out.println("驗證成功");
		            map.put("OK", "驗證成功");
		        }else {
		        	System.out.println("驗證失敗");
		            map.put("Fail", "驗證失敗");   
		        }  
		        return map;       
		    }
		 // ============================ 修改密碼頁面 ========================
		    @GetMapping("/updatepassword") 								
			public String UpdatepasswordPage(Model model) {
		    	System.out.println(model.getAttribute("memberForget"));
				return "front/member/changepassword";
		    }
		    
			// ============================ 修改密碼 ========================
			@PostMapping("/updatepassword")
			public String UpdatePassword(HttpSession httpSession,SessionStatus status, 
					@ModelAttribute(name="updatepassword")Member member, Model model) {
				System.out.println("===============送出修改按鈕=================");
				
//				HttpSession session = request.getSession();
//				String email = session.getAttribute("email").toString(); // 使用Session是因為要用抓這人的帳密來判斷這人的資料
//				String password = session.getAttribute("password").toString();
//				System.out.println("id: " + member.getMemberId());
				//先從資料庫抓會員
				Member mb = (Member) model.getAttribute("memberForget");
				if(mb != null) {
					mb.setPassword(member.getPassword());
					String hashpw = BCrypt.hashpw(member.getPassword(), BCrypt.gensalt());
					mb.setPassword(hashpw);
					mService.insert(mb);
					System.out.println("更新成功!");
					//清除session
		            status.setComplete();
		            httpSession.invalidate();
//					model = getViewUser(request, model);		// 如果要顯示更新成功這三段就要開啟getViewUser方法
//					model.addAttribute("Msg", "更新成功!");
//					return "user/user";
					return "redirect:member/login";				// 使用此return是不會顯示更新成功
				}
				else {
					System.out.println("更新失敗!");
					return "front/member/forgotpassword"; 		   // 返回登入畫面
				}
			}
}
