package starryNight.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import starryNight.service.BasketService;
import starryNight.vo.Basket;

@Controller
public class BasketController {
	@Autowired(required=false)
	private BasketService service;
	//http://localhost:7080/StarryNight/basket1.do
	@RequestMapping("basket1.do")
	public String getBasket(Basket sch, Model d) {
		d.addAttribute("bslist",service.basketList(sch));
		return "WEB-INF\\views\\basket\\basket.jsp";
	}
	@RequestMapping("basketDelete.do")
	public String storeDelete(@RequestParam("no") int no, Model d) {
		service.deleteBasket(no);
		d.addAttribute("basket","del");
		return "WEB-INF\\views\\basket\\basket.jsp";
	}
}

