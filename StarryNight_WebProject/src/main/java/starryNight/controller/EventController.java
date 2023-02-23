package starryNight.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import starryNight.service.EventService;
import starryNight.vo.Event;

@Controller
public class EventController {
	
	@Autowired(required = false)
	private EventService service;

	// http://localhost:7080/StarryNight/eventList.do
	@RequestMapping("eventList.do")
	public String eventList(Event evSch, Model m) {
		m.addAttribute("eventList", service.eventList(evSch));
		return "WEB-INF\\views\\event\\eventList.jsp";
	}

	@RequestMapping("eventDetail.do")
	public String getEvent(@RequestParam("event_no") int event_no, Model m) {
		m.addAttribute("event", service.eventDetail(event_no));
		return "WEB-INF\\views\\event\\eventDetail.jsp";
	}
	
	@RequestMapping("eventInsertForm.do")
	public String eventInsertForm(){
		return "WEB-INF\\views\\event\\eventInsert.jsp";
	}
	
	@RequestMapping("eventInsert.do")
	public String eventInsert(Event evIns, Model m){
		service.insertEvent(evIns);
		m.addAttribute("isInserted", "Y");
		return "WEB-INF\\views\\event\\eventInsert.jsp";
	}
	
	@RequestMapping("eventUpdate.do")
	public String eventUpdate(Event evUpt, Model m){
		m.addAttribute("event_no", evUpt.getEvent_no());
		m.addAttribute("event", service.updateEvent(evUpt));
		m.addAttribute("proc", "upt");
		return "WEB-INF\\views\\event\\eventDetail.jsp";
	}
	
	@RequestMapping("eventDelete.do")
	public String eventDelete(@RequestParam(value="event_no") int event_no, Model m) {
		service.deleteEvent(event_no);
		m.addAttribute("event_no", event_no);
		m.addAttribute("proc", "del");
		return "WEB-INF\\views\\event\\eventDetail.jsp";
	}
	
	// http://localhost:7080/StarryNight/event.do
	@RequestMapping("event.do")
	public String event1(@RequestParam("event_no") int event_no, Model m) {
		m.addAttribute("event", service.eventDetail(event_no));
		return "WEB-INF\\views\\event\\event.jsp";
	}
	
	// http://localhost:7080/StarryNight/event2.do
	@RequestMapping("event2.do")
	public String event2(@RequestParam("event_no") int event_no, Model m) {
		m.addAttribute("event", service.eventDetail(event_no));
		return "WEB-INF\\views\\event\\event2.jsp";
	}
	
	// http://localhost:7080/StarryNight/event3.do
	@RequestMapping("event3.do")
	public String event3(@RequestParam("event_no") int event_no, Model m) {
		m.addAttribute("event", service.eventDetail(event_no));
		return "WEB-INF\\views\\event\\event3.jsp";
	}
	
	

}
