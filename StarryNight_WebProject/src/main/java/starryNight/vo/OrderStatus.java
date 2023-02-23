package starryNight.vo;

public class OrderStatus {
	private int completed;
	private int pickup;
	private int confirm;
	private int cancel;
	private int exchange;
	private int order_no;
	
	public OrderStatus() {}

	public OrderStatus(int completed, int pickup, int confirm, int cancel, int exchange, int order_no) {
		this.completed = completed;
		this.pickup = pickup;
		this.confirm = confirm;
		this.cancel = cancel;
		this.exchange = exchange;
		this.order_no = order_no;
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

	public int getOrder_no() {
		return order_no;
	}

	public void setOrder_no(int order_no) {
		this.order_no = order_no;
	}

	@Override
	public String toString() {
		return "OrderStatus [completed=" + completed + ", pickup=" + pickup + ", confirm=" + confirm + ", cancel="
				+ cancel + ", exchange=" + exchange + ", order_no=" + order_no + "]";
	}
	
	
}
