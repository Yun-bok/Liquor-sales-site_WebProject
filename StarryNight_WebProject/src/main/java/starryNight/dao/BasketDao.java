package starryNight.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import starryNight.vo.Basket;
// starryNight.dao.BasketDao.basketList
@Repository
public interface BasketDao {
	public List<Basket> basketList(Basket sch);
	public void deleteBasket(int no);
}

