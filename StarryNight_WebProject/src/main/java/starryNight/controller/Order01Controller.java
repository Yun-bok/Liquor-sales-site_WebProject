package starryNight.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import starryNight.service.BasketService;
import starryNight.service.Order01Service;
import starryNight.vo.Member;
import starryNight.vo.Order01;

@Controller
public class Order01Controller {
	@Autowired(required=false)
	private Order01Service service;
	//http://localhost:7080/StarryNight/order01.do
	@RequestMapping("order01.do")
	public String getOrder01(Order01 sch, Member member, Model d) {
		d.addAttribute("ordlist", service.order01List(sch));
		return "WEB-INF\\views\\order\\order01.jsp";
	}
	
}

