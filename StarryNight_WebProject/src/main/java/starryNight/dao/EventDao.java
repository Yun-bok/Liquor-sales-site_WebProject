package starryNight.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import starryNight.vo.Event;

@Repository
public interface EventDao {
	
	public List<Event> eventList(Event evSch);
	
	public Event eventDetail(int event_no);
	
	public void insertEvent(Event evIns);
	
	public void updateEvent(Event evUpt);
	
	public void deleteEvent(int event_no);
	
}
