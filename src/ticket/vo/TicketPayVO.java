package ticket.vo;

import java.text.SimpleDateFormat;
import java.util.Date;

public class TicketPayVO {
	
	private String tkpCd;
	private String tkpMh;
	private int tkpSum;
	private String tkpChk;
	private Date tkpDate;
	private String tkpSdate;
	private String tkbCd;

	private String memId;
	private String memName;
	private Date tkDate;
	private String tkSdate;
	private String tkCd;
	private String tkSort;
	private String tkAge;
	private int tkNum;
	private int tkPrice;
	private int tkSum;
	private String con;	
	
	
	public TicketPayVO() {}
	
	public TicketPayVO(String tkpCd, String tkpMh, int tkpSum, String tkpChk, Date tkpDate, String tkbCd) {
		this.tkpCd = tkpCd;
		this.tkpMh = tkpMh;
		this.tkpSum = tkpSum;
		this.tkpChk = tkpChk;
		this.tkpDate = tkpDate;
		this.tkbCd = tkbCd;
	}

	public String getTkpCd() {
		return tkpCd;
	}

	public void setTkpCd(String tkpCd) {
		this.tkpCd = tkpCd;
	}

	public String getTkpMh() {
		return tkpMh;
	}

	public void setTkpMh(String tkpMh) {
		this.tkpMh = tkpMh;
	}

	public int getTkpSum() {
		return tkpSum;
	}

	public void setTkpSum(int tkpSum) {
		this.tkpSum = tkpSum;
	}

	public String getTkpChk() {
		return tkpChk;
	}

	public void setTkpChk(String tkpChk) {
		this.tkpChk = tkpChk;
	}

	public Date getTkpDate() {
		return tkpDate;
	}

	public void setTkpDate(Date tkpDate) {
		this.tkpDate = tkpDate;
		SimpleDateFormat dateFormat = new SimpleDateFormat("yy/MM/dd HH:mm");
		this.tkpSdate = dateFormat.format(tkpDate);
	}	

	public String getTkpSdate() {
		return tkpSdate;
	}

	public void setTkpSdate(String tkpSdate) {
		this.tkpSdate = tkpSdate;
	}

	public String getTkbCd() {
		return tkbCd;
	}

	public void setTkbCd(String tkbCd) {
		this.tkbCd = tkbCd;
	}
		

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	public String getMemName() {
		return memName;
	}

	public void setMemName(String memName) {
		this.memName = memName;
	}

	public Date getTkDate() {
		return tkDate;
	}

	public void setTkDate(Date tkDate) {
		this.tkDate = tkDate;
		SimpleDateFormat dateFormat = new SimpleDateFormat("yy/MM/dd");
		this.tkSdate = dateFormat.format(tkDate);
	}	

	public String getTkSdate() {
		return tkSdate;
	}

	public void setTkSdate(String tkSdate) {
		this.tkSdate = tkSdate;
	}

	public String getTkCd() {
		return tkCd;
	}

	public void setTkCd(String tkCd) {
		this.tkCd = tkCd;
	}

	public String getTkSort() {
		return tkSort;
	}

	public void setTkSort(String tkSort) {
		this.tkSort = tkSort;
	}

	public String getTkAge() {
		return tkAge;
	}

	public void setTkAge(String tkAge) {
		this.tkAge = tkAge;
	}

	public int getTkNum() {
		return tkNum;
	}

	public void setTkNum(int tkNum) {
		this.tkNum = tkNum;
	}

	public int getTkPrice() {
		return tkPrice;
	}

	public void setTkPrice(int tkPrice) {
		this.tkPrice = tkPrice;
	}	

	public int getTkSum() {
		return tkSum;
	}

	public void setTkSum(int tkSum) {
		this.tkSum = tkSum;
	}

	public String getCon() {
		return con;
	}

	public void setCon(String con) {
		this.con = con;
	}

	@Override
	public String toString() {
		return "TkPayVO [tkpCd=" + tkpCd + ", tkpMh=" + tkpMh + ", tkpSum=" + tkpSum + ", tkpChk=" + tkpChk
				+ ", tkpDate=" + tkpDate + ", tkbCd=" + tkbCd + "]";
	}
	
	
}
