package starryNight.vo;

public class Basket {
	private int member_no;
	private int product_no;
	private int product_cnt;
	public Basket() {
		// TODO Auto-generated constructor stub
	}
	public Basket(int member_no, int product_no, int product_cnt) {
		this.member_no = member_no;
		this.product_no = product_no;
		this.product_cnt = product_cnt;
	}
	public int getMember_no() {
		return member_no;
	}
	public void setMember_no(int member_no) {
		this.member_no = member_no;
	}
	public int getProduct_no() {
		return product_no;
	}
	public void setProduct_no(int product_no) {
		this.product_no = product_no;
	}
	public int getProduct_cnt() {
		return product_cnt;
	}
	public void setProduct_cnt(int product_cnt) {
		this.product_cnt = product_cnt;
	}
	
}
