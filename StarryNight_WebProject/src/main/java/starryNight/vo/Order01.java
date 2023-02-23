package starryNight.vo;

public class Order01 {
		private int member_no;
		private int product_no;
		private String order_date;
		private int order_amount;
		private int order_qty;
		private int store_no;
		
		public Order01() {
			super();
			// TODO Auto-generated constructor stub
		}
		public Order01(int member_no, int product_no, String order_date, int order_amount, int order_qty,
				int store_no) {
			this.member_no = member_no;
			this.product_no = product_no;
			this.order_date = order_date;
			this.order_amount = order_amount;
			this.order_qty = order_qty;
			this.store_no = store_no;
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
		public String getOrder_date() {
			return order_date;
		}
		public void setOrder_date(String order_date) {
			this.order_date = order_date;
		}
		public int getOrder_amount() {
			return order_amount;
		}
		public void setOrder_amount(int order_amount) {
			this.order_amount = order_amount;
		}
		public int getOrder_qty() {
			return order_qty;
		}
		public void setOrder_qty(int order_qty) {
			this.order_qty = order_qty;
		}
		public int getStore_no() {
			return store_no;
		}
		public void setStore_no(int store_no) {
			this.store_no = store_no;
		}
		
		
}
