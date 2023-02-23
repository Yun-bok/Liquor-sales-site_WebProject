package starryNight.vo;

public class Review {
	private int review_no;
	private String review_title;
	private String review_content;
	private String review_img;
	private int product_no;
	public Review() {
		// TODO Auto-generated constructor stub
	}
	public Review(int review_no, String review_title, String review_content, String review_img, int product_no) {
		this.review_no = review_no;
		this.review_title = review_title;
		this.review_content = review_content;
		this.review_img = review_img;
		this.product_no = product_no;
	}
	public int getReview_no() {
		return review_no;
	}
	public void setReview_no(int review_no) {
		this.review_no = review_no;
	}
	public String getReview_title() {
		return review_title;
	}
	public void setReview_title(String review_title) {
		this.review_title = review_title;
	}
	public String getReview_content() {
		return review_content;
	}
	public void setReview_content(String review_content) {
		this.review_content = review_content;
	}
	public String getReview_img() {
		return review_img;
	}
	public void setReview_img(String review_img) {
		this.review_img = review_img;
	}
	public int getProduct_no() {
		return product_no;
	}
	public void setProduct_no(int product_no) {
		this.product_no = product_no;
	}
	
	
	
}
