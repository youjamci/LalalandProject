package ticket.vo;

import java.util.Date;

public class TicketBkVO {

	private String tkbCd;
	private String tkCd;
	private int tkNum;	
	private Date tkDate;
	
	public TicketBkVO() {}
	
	public TicketBkVO(String tkbCd, String tkCd, int tkNum, Date tkDate) {
		super();
		this.tkbCd = tkbCd;
		this.tkCd = tkCd;
		this.tkNum = tkNum;
		this.tkDate = tkDate;
	}

	public String getTkbCd() {
		return tkbCd;
	}

	public void setTkbCd(String tkbCd) {
		this.tkbCd = tkbCd;
	}

	public String getTkCd() {
		return tkCd;
	}

	public void setTkCd(String tkCd) {
		this.tkCd = tkCd;
	}

	public int getTkNum() {
		return tkNum;
	}

	public void setTkNum(int tkNum) {
		this.tkNum = tkNum;
	}

	public Date getTkDate() {
		return tkDate;
	}

	public void setTkDate(Date tkDate) {
		this.tkDate = tkDate;
	}

	@Override
	public String toString() {
		return "TkBkVO [tkbCd=" + tkbCd + ", tkCd=" + tkCd + ", tkNum=" + tkNum + ", tkDate=" + tkDate + "]";
	}

	
}
