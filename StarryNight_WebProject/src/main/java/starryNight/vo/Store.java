package starryNight.vo;
/*
CREATE TABLE store(
	store_no NUMBER NOT null,
	store_name VARCHAR2(100),
	store_loc VARCHAR2(200),
	store_contact VARCHAR2(20)
); 
 **/
public class Store {
	private int store_no;
	private String store_name;
	private String store_loc;
	private String store_contact;
	public Store() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Store(int store_no, String store_name, String store_loc, String store_contact) {
		this.store_no = store_no;
		this.store_name = store_name;
		this.store_loc = store_loc;
		this.store_contact = store_contact;
	}
	public int getStore_no() {
		return store_no;
	}
	public void setStore_no(int store_no) {
		this.store_no = store_no;
	}
	public String getStore_name() {
		return store_name;
	}
	public void setStore_name(String store_name) {
		this.store_name = store_name;
	}
	public String getStore_loc() {
		return store_loc;
	}
	public void setStore_loc(String store_loc) {
		this.store_loc = store_loc;
	}
	public String getStore_contact() {
		return store_contact;
	}
	public void setStore_contact(String store_contact) {
		this.store_contact = store_contact;
	}
	
}
