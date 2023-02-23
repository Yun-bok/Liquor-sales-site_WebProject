package starryNight.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import starryNight.dao.ProductDao;
import starryNight.vo.Basket;
import starryNight.vo.Member;
import starryNight.vo.Product;
import starryNight.vo.Review;
import starryNight.vo.Wishlist;

@Service
public class ProductService {

	@Autowired(required = false)
	private ProductDao dao;
	
	public List<Product> ProductList(int product_no){
		return dao.ProductList(product_no);
	}

	public List<Review> ReviewList(int product_no) {
		// TODO Auto-generated method stub
		return dao.ReviewList(product_no);
	}

	public void InsertBasket(Basket b) {
		if(dao.CheckBasket(b)<1) {
		dao.InsertBasket(b);
		}else {
		dao.UpdateBasket(b);
		}

	}

	public void InsertWishlist(Wishlist w) {
		dao.InsertWishlist(w);
	}

	public void DeleteWishlist(Wishlist w) {
		dao.DeleteWishlist(w);
	}

	public int WishCheck(Wishlist w) {
		// TODO Auto-generated method stub
		return dao.WishCheck(w);
	}

	public void InsertReview(Review r) {
		dao.InsertReview(r);
	}

	public List<Product> ProductListAll(Product p) {
		// TODO Auto-generated method stub
		return dao.ProductListAll(p);
	}

	public void DeleteProduct(int product_no) {
		dao.DeleteProduct(product_no);
	}

	public List<Product> SelectProduct(String product_name) {
		return dao.SelectProduct(product_name);
	}

	public void InsertProduct(Product p) {
		dao.InsertProduct(p);
		
	}

	public List<Product> ProductListAll2() {
		// TODO Auto-generated method stub
		return dao.ProductListAll2();
	}

	public int loginCheck(Member m) {
		
		return dao.loginCheck(m);
	}

	public int selectMemberno(String email) {
		// TODO Auto-generated method stub
		return dao.selectMemberno(email);
	}
}
