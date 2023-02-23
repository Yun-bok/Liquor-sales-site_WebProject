package starryNight.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import starryNight.dao.Order01Dao;
import starryNight.vo.Order01;


@Service
public class Order01Service {
	
	@Autowired(required=false)
	private Order01Dao dao;	
	public List<Order01> order01List(Order01 sch){
		
		return dao.order01List(sch);
	}
	
}
