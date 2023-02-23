package starryNight.vo;

public class Wishlist {
	private int product_no;
	private int member_no;
	public Wishlist() {
		// TODO Auto-generated constructor stub
	}
	public Wishlist(int product_no, int member_no) {
		this.product_no = product_no;
		this.member_no = member_no;
	}
	public int getProduct_no() {
		return product_no;
	}
	public void setProduct_no(int product_no) {
		this.product_no = product_no;
	}
	public int getMember_no() {
		return member_no;
	}
	public void setMember_no(int member_no) {
		this.member_no = member_no;
	}
	
	
}
