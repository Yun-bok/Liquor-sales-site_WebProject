package starryNight.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import starryNight.service.ProductListService;
import starryNight.vo.Product;

@Controller
public class ProductListController {
	
	@Autowired(required=false)
	private ProductListService service;
	
	// http://localhost:7080/StarryNight/alcoholList.do
	@RequestMapping("alcoholList.do")
	public String alcoholList(Product sch, Model d) {

		d.addAttribute("product", service.alcoholList(sch));
		return "WEB-INF\\views\\productList\\ProductList.jsp";
	}
	@RequestMapping("weatherProd.do")
	public String weatherProd(String w_category, Model d) {
		d.addAttribute("product", service.weatherProd(w_category));
		return "WEB-INF\\views\\productList\\ProductList.jsp";
	}
	@RequestMapping("acProd.do")
	public String acProd(String ac_category, Model d) {
		d.addAttribute("product", service.acProd(ac_category));
		return "WEB-INF\\views\\productList\\ProductList.jsp";
	}

}
