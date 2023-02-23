package starryNight.vo;

import java.util.Date;

public class MemberOrder {
	private int member_no;
	private int product_no;
	private String product_name;
	private String product_info;
	private Date order_date;
	private int order_no;
	private int order_amount;
	private int completed;
	private int pickup;
	private int confirm;
	private int cancel;
	private int exchange;
	
	public MemberOrder() {}

	public MemberOrder(int member_no, int product_no, String product_name, String product_info, Date order_date,
			int order_no, int order_amount, int completed, int pickup, int confirm, int cancel, int exchange) {
		this.member_no = member_no;
		this.product_no = product_no;
		this.product_name = product_name;
		this.product_info = product_info;
		this.order_date = order_date;
		this.order_no = order_no;
		this.order_amount = order_amount;
		this.completed = completed;
		this.pickup = pickup;
		this.confirm = confirm;
		this.cancel = cancel;
		this.exchange = exchange;
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

	public String getProduct_name() {
		return product_name;
	}

	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}

	public String getProduct_info() {
		return product_info;
	}

	public void setProduct_info(String product_info) {
		this.product_info = product_info;
	}

	public Date getOrder_date() {
		return order_date;
	}

	public void setOrder_date(Date order_date) {
		this.order_date = order_date;
	}

	public int getOrder_no() {
		return order_no;
	}

	public void setOrder_no(int order_no) {
		this.order_no = order_no;
	}

	public int getOrder_amount() {
		return order_amount;
	}

	public void setOrder_amount(int order_amount) {
		this.order_amount = order_amount;
	}

	public int getCompleted() {
		return completed;
	}

	public void setCompleted(int completed) {
		this.completed = completed;
	}

	public int getPickup() {
		return pickup;
	}

	public void setPickup(int pickup) {
		this.pickup = pickup;
	}

	public int getConfirm() {
		return confirm;
	}

	public void setConfirm(int confirm) {
		this.confirm = confirm;
	}

	public int getCancel() {
		return cancel;
	}

	public void setCancel(int cancel) {
		this.cancel = cancel;
	}

	public int getExchange() {
		return exchange;
	}

	public void setExchange(int exchange) {
		this.exchange = exchange;
	}

	@Override
	public String toString() {
		return "MemberOrder [member_no=" + member_no + ", product_no=" + product_no + ", "
				+ (product_name != null ? "product_name=" + product_name + ", " : "")
				+ (product_info != null ? "product_info=" + product_info + ", " : "")
				+ (order_date != null ? "order_date=" + order_date + ", " : "") + "order_no=" + order_no
				+ ", order_amount=" + order_amount + ", completed=" + completed + ", pickup=" + pickup + ", confirm="
				+ confirm + ", cancel=" + cancel + ", exchange=" + exchange + "]";
	}

	
}
