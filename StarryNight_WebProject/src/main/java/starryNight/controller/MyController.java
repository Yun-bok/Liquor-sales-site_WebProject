package starryNight.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import starryNight.service.Myservice;
import starryNight.vo.Member;

@Controller
public class MyController {
	
	@Autowired(required = false)
	private Myservice service;
	
	// http://localhost:7080/StarryNight/myInfo.do
	@RequestMapping("myInfo.do")
	public String MyInfo(HttpSession session, Model m) {
		m.addAttribute("member_no", session.getAttribute("member_no"));
		int member_no = ((int) session.getAttribute("member_no"));
		m.addAttribute("member", service.getMember(member_no));
		return "WEB-INF\\views\\my\\myInfo.jsp";
	}

	@RequestMapping("updateMyInfo.do")
	public String updateMyInfo(Member memUpt, Model m) {
		m.addAttribute("member_no", memUpt.getMember_no());
		m.addAttribute("member", service.updateMember(memUpt));
		m.addAttribute("proc", "upt");
		return "WEB-INF\\views\\my\\myInfo.jsp";
	}

	// http://localhost:7080/StarryNight/orderInfo.do
	@RequestMapping("orderInfo.do")
	public String orderInfo(HttpSession session, Model m) {
		m.addAttribute("member_no", session.getAttribute("member_no"));
		int member_no = ((int) session.getAttribute("member_no"));
		m.addAttribute("member", service.getMember(member_no));
		m.addAttribute("memOrderList", service.memberOrderList(member_no));
		return "WEB-INF\\views\\my\\orderInfo.jsp";
	}

	@RequestMapping("wishlist.do")
	public String wishlist() {
		return "WEB-INF\\views\\my\\wishlist.jsp";
	}
}
