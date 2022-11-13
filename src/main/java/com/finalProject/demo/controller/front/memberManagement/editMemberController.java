package com.finalProject.demo.controller.front.memberManagement;

import com.finalProject.demo.model.entity.member.Member;
import com.finalProject.demo.service.member.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class editMemberController {

    @Autowired
    private MemberService mService;

//    =============================================  SESSION方式/ 顯示修改會員資料 ===========================================

//    @GetMapping("/member")
//    public String viewUser(HttpServletRequest request , Member member, Model model) {
//					HttpSession session = request.getSession();
//					String email = session.getAttribute("email").toString(); // 使用Session是因為要用抓這人的帳密來判斷這人的資料
//					String password = session.getAttribute("password").toString();
//					Member user = mService.viewUser(email, password);
//					if (user != null){
//						// 表示有資料
//						model.addAttribute("email", userList.get(0).getEmail());
//						model.addAttribute("memberName", userList.get(0).getMemberName());
//						model.addAttribute("birthday", userList.get(0).getBirthday());
//						model.addAttribute("phone", userList.get(0).getPhone());
//						model.addAttribute("usersubmit", user);
//						return "front/member/user";
//					}else {
//						//表示帳密錯誤 或者Session有問題
//						session.removeAttribute("email"); 	// 刪掉
//						session.removeAttribute("password");
//						return "redirect:index";
//					}
//    }

    // ===================================== SESSION方式/ 送出：修改使用者資料 =======================================
//    @PostMapping("/member")
//    public String UpdateUser(HttpServletRequest request,
//                             @ModelAttribute(name="usersubmit")Member member, Model model) {
//					System.out.println("===============送出修改按鈕=================");
//					HttpSession session = request.getSession();
//					String email = session.getAttribute("email").toString(); // 使用Session是因為要用抓這人的帳密來判斷這人的資料
//					String password = session.getAttribute("password").toString();
//					System.out.println("id: " + member.getMemberId());
//
//        Member mmm = mService.insert(member);			// 把資料放進去(insert)
//        if(mmm != null) {
//						System.out.println("更新成功!");
//						model = getViewUser(request, model);		// 如果要顯示更新成功這三段就要開啟getViewUser方法
//            model.addAttribute("Msg", "更新成功!");
//						return "user/user";
//            return "front/member/user";						// 使用此return是不會顯示更新成功
//        }
//        else {
//						System.out.println("更新失敗!");
//            model.addAttribute("Msg", "更新失敗!"); // 畫面顯示：更新失敗!
//            return "front/member/login"; 		   // 返回登入畫面
//        }

//        ========================================JWT 方式 :只有會員(有TOKEN)才能輸入 ======================================
        @GetMapping("/member")
        public String viewUser(HttpServletRequest request, Model model) {
            //object -> String ->Long
            String stringId = String.valueOf(request.getAttribute("memberId"));
            Long memberId = Long.valueOf(stringId);
            Member memberData = mService.findById(memberId);
            model.addAttribute("usersubmit",memberData);
            return "front/member/user";
        }

        @PostMapping("/member")
        public String UpdateUser(HttpServletRequest request,
                @ModelAttribute(name="usersubmit")Member updateMember, Model model) {
            Member member = mService.insert(updateMember);
            if(member != null) {
                model.addAttribute("Msg", "更新成功!");
                return "front/member/user";
            }
            else {
                model.addAttribute("Msg", "更新失敗!");
                return "front/member/login";
            }
    }
}
