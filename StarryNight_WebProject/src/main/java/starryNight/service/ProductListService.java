package starryNight.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import starryNight.dao.ProductListDao;
import starryNight.vo.Product;

@Service
public class ProductListService {
	
	@Autowired(required=false)
	private ProductListDao dao;
	
	public List<Product> alcoholList(Product sch){
		return dao.alcoholList(sch);
	}
	
	public List<Product> weatherProd(String w_category){
		return dao.weatherProd(w_category);
	}
	
	public List<Product> acProd(String ac_category){
		return dao.acProd(ac_category);
	}

}
