package ticket.vo;

import java.text.SimpleDateFormat;
import java.util.Date;

public class ContentVO {
	
	// CT테이블
	private String ctCd;
	private String ctSort;
	private String ctName;
	private int ctFull;
	
	// CT_DAY테이블
	private String ctdCd;
	private Date ctDate; // select문에서 사용(오라클 타입이 date)
	private String ctSdate; // insert, update, delete
	private int ctSn;
	private int ctLeft; // 뷰에서 가져와야 함
	
	// CT_RDAY테이블
	private String ctrCd;
	private int ctReshm;
	
	// CT_RSV테이블
	private String memId;
	
	public ContentVO() {}

	public String getCtCd() {
		return ctCd;
	}

	public void setCtCd(String ctCd) {
		this.ctCd = ctCd;
	}

	public String getCtSort() {
		return ctSort;
	}

	public void setCtSort(String ctSort) {
		this.ctSort = ctSort;
	}

	public String getCtName() {
		return ctName;
	}

	public void setCtName(String ctName) {
		this.ctName = ctName;
	}

	public int getCtFull() {
		return ctFull;
	}

	public void setCtFull(int ctFull) {
		this.ctFull = ctFull;
	}

	public String getCtdCd() {
		return ctdCd;
	}

	public void setCtdCd(String ctdCd) {
		this.ctdCd = ctdCd;
	}

	public Date getCtDate() {
		return ctDate;
	}

	public void setCtDate(Date ctDate) {
		this.ctDate = ctDate;
		SimpleDateFormat dateFormat = new SimpleDateFormat("yy/MM/dd");
		this.ctSdate = dateFormat.format(ctDate);	
	}

	public String getCtSdate() {
		return ctSdate;
	}

	public void setCtSdate(String ctSdate) {
		this.ctSdate = ctSdate;
	}

	public int getCtSn() {
		return ctSn;
	}

	public void setCtSn(int ctSn) {
		this.ctSn = ctSn;
	}

	public int getCtLeft() {
		return ctLeft;
	}

	public void setCtLeft(int ctLeft) {
		this.ctLeft = ctLeft;
	}

	public String getCtrCd() {
		return ctrCd;
	}

	public void setCtrCd(String ctrCd) {
		this.ctrCd = ctrCd;
	}

	public int getCtReshm() {
		return ctReshm;
	}

	public void setCtReshm(int ctReshm) {
		this.ctReshm = ctReshm;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	@Override
	public String toString() {
		return "ContentVO [ctCd=" + ctCd + ", ctSort=" + ctSort + ", ctName=" + ctName + ", ctFull=" + ctFull
				+ ", ctdCd=" + ctdCd + ", ctDate=" + ctDate + ", ctSdate=" + ctSdate + ", ctSn=" + ctSn + ", ctLeft="
				+ ctLeft + ", ctrCd=" + ctrCd + ", ctReshm=" + ctReshm + ", memId=" + memId + "]";
	}
		
}