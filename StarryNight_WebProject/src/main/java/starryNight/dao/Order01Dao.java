package starryNight.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import starryNight.vo.Basket;
import starryNight.vo.Order01;
//starryNight.dao.Order01Dao.order01List
@Repository
public interface Order01Dao {
	public List<Order01> order01List(Order01 sch);
}

