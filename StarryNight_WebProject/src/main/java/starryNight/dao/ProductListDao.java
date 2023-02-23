package starryNight.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import starryNight.vo.Product;

@Repository
public interface ProductListDao {
	
	public List<Product> alcoholList(Product sch);
	
	public List<Product> weatherProd(String w_category);
	
	public List<Product> acProd(String ac_category);
	
	
	
}
