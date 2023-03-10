package starryNight.vo;

import java.util.Date;

public class Event {
	
	private int event_no;
	private String event_title;
	private String event_content;
	private Date event_regDate;
	private Date event_stDate;
	private Date event_dueDate;
	private String event_stDateS;
	private String event_dueDateS;
	private String event_img;
	private int event_readCnt;
	
	public Event() {}

	public Event(int event_no, String event_title, String event_content, Date event_regDate, Date event_stDate,
			Date event_dueDate, String event_img, int event_readCnt) {
		this.event_no = event_no;
		this.event_title = event_title;
		this.event_content = event_content;
		this.event_regDate = event_regDate;
		this.event_stDate = event_stDate;
		this.event_dueDate = event_dueDate;
		this.event_img = event_img;
		this.event_readCnt = event_readCnt;
	}

	public String getEvent_stDateS() {
		return event_stDateS;
	}

	public void setEvent_stDateS(String event_stDateS) {
		this.event_stDateS = event_stDateS;
	}

	public String getEvent_dueDateS() {
		return event_dueDateS;
	}

	public void setEvent_dueDateS(String event_dueDateS) {
		this.event_dueDateS = event_dueDateS;
	}

	public int getEvent_no() {
		return event_no;
	}

	public void setEvent_no(int event_no) {
		this.event_no = event_no;
	}

	public String getEvent_title() {
		return event_title;
	}

	public void setEvent_title(String event_title) {
		this.event_title = event_title;
	}

	public String getEvent_content() {
		return event_content;
	}

	public void setEvent_content(String event_content) {
		this.event_content = event_content;
	}

	public Date getEvent_regDate() {
		return event_regDate;
	}

	public void setEvent_regDate(Date event_regDate) {
		this.event_regDate = event_regDate;
	}

	public Date getEvent_stDate() {
		return event_stDate;
	}

	public void setEvent_stDate(Date event_stDate) {
		this.event_stDate = event_stDate;
	}

	public Date getEvent_dueDate() {
		return event_dueDate;
	}

	public void setEvent_dueDate(Date event_dueDate) {
		this.event_dueDate = event_dueDate;
	}

	public String getEvent_img() {
		return event_img;
	}

	public void setEvent_img(String event_img) {
		this.event_img = event_img;
	}

	public int getEvent_readCnt() {
		return event_readCnt;
	}

	public void setEvent_readCnt(int event_readCnt) {
		this.event_readCnt = event_readCnt;
	}

	@Override
	public String toString() {
		return "Event [event_no=" + event_no + ", " + (event_title != null ? "event_title=" + event_title + ", " : "")
				+ (event_content != null ? "event_content=" + event_content + ", " : "")
				+ (event_regDate != null ? "event_regDate=" + event_regDate + ", " : "")
				+ (event_stDate != null ? "event_stDate=" + event_stDate + ", " : "")
				+ (event_dueDate != null ? "event_dueDate=" + event_dueDate + ", " : "")
				+ (event_img != null ? "event_img=" + event_img + ", " : "") + "event_readCnt=" + event_readCnt + "]";
	}
	
}
