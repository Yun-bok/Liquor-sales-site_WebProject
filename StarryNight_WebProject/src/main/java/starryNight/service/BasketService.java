package starryNight.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import starryNight.dao.BasketDao;
import starryNight.vo.Basket;

@Service
public class BasketService {
	@Autowired(required=false)
	private BasketDao dao;
	public List<Basket> basketList(Basket sch){
		return dao.basketList(sch);
	}
	public void deleteBasket(int no) {
		dao.deleteBasket(no);
	}
}
