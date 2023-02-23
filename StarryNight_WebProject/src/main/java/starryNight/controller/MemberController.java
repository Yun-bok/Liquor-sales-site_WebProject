package starryNight.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import starryNight.service.MemberService;
import starryNight.vo.Member;

@Controller
public class MemberController {

	@Autowired(required=false)
	private MemberService service;
	
	// http://localhost:7080/StarryNight/memberAgree.do
	
		@RequestMapping("memberInsertForm.do")
		public String memberInsertForm() {
			return "WEB-INF\\views\\member\\MemberInsert.jsp";
		}
		
		@RequestMapping("memberInsert.do")
		public String memberInsert(Member ins, Model d) {
			service.insertMember(ins);
			d.addAttribute("isInsert", "Y");
			d.addAttribute("proc", "ins");
			return "WEB-INF\\views\\member\\MemberInsert.jsp";
		}
		@RequestMapping("memberAgree.do")
		public String memberAgree() {
			return "WEB-INF\\views\\member\\MemberAgree.jsp";
		}
		
		// http://localhost:7080/StarryNight/memberDeleteForm.do
		@RequestMapping("memberDeleteForm.do")
		public String memberDeleteForm() {
			return "WEB-INF\\views\\member\\MemberDelete.jsp";
		}
		
		@RequestMapping("memberDelete.do")
		public String memberDelete(@RequestParam("email") String email, Model d) {
			service.deleteMember(email);
			d.addAttribute("isDelete", "Y");
			return "WEB-INF\\views\\member\\MemberDelete.jsp";
		}
		
		// http://localhost:7080/StarryNight/memberList.do
		@RequestMapping("memberList.do")
		public String memberList(Member sch, Model d) {
			d.addAttribute("member", service.memberList(sch));				
		
			return "WEB-INF\\views\\member\\MemberList.jsp";
		}
}
