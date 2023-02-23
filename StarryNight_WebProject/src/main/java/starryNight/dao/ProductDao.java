package starryNight.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import starryNight.vo.Basket;
import starryNight.vo.Member;
import starryNight.vo.Product;
import starryNight.vo.Review;
import starryNight.vo.Wishlist;

@Repository
public interface ProductDao {

	public List<Product> ProductList(int product_no);

	public List<Review> ReviewList(int product_no);

	public void InsertBasket(Basket b);

	public int CheckBasket(Basket b);

	public void UpdateBasket(Basket b);

	public void InsertWishlist(Wishlist w);

	public void DeleteWishlist(Wishlist w);

	public int WishCheck(Wishlist w);

	public void InsertReview(Review r);

	public List<Product> ProductListAll(Product p);

	public void DeleteProduct(int product_no);

	public List<Product> SelectProduct(String product_name);

	public void InsertProduct(Product p);

	public List<Product> ProductListAll2();

	public int loginCheck(Member m);

	public int selectMemberno(String email);

}
