package starryNight.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import starryNight.vo.Event;

@Controller
public class MainController {

	// http://localhost:7080/StarryNight/StarryMain.do
	
	
	// http://localhost:7080/StarryNight/weatherProd.do?w_category=맑음
	@RequestMapping("StarryMain.do")
	public String StarryMain(){
		return "WEB-INF\\views\\mainpage\\mainpages.jsp";
	}
	// http://localhost:7080/StarryNight/Starryframe.do
		@RequestMapping("Starryframe.do")
		public String Starryframe(){
			return "WEB-INF\\views\\mainpage\\obsrframe.jsp";
		}
		 
		// http://localhost:7080/StarryNight/StarryMap.do
				@RequestMapping("StarryMap.do")
				public String StarryMap(){	
		return "WEB-INF\\views\\mainpage\\mapstore.jsp";
		
				}
}
