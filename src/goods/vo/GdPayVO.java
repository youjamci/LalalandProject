package goods.vo;

import java.text.SimpleDateFormat;
import java.util.Date;

public class GdPayVO {
	
	private String gdpCd;
	private int gdpSum;
	private Date gdpDate;
	private String gdpMh;
	private String gdpChk;
	private String gdpRname;
	private String gdpRtel;
	private String gdpAdd;
	private String gdpDadd;
	private String gdpReq;
	private String gdpRchk;
	private String gdbCd;
	private String memId;
	private String memName;
	
	private String newGdpDate;
	private String gdName;
	private String gdNum;
	
	public GdPayVO() {}
	
	public GdPayVO(int gdpSum, String gdpMh, String gdpRname, String gdpRtel, String gdpAdd, String gdpDadd,
			String gdpReq, String gdbCd) {
		super();
		this.gdpSum = gdpSum;
		this.gdpMh = gdpMh;
		this.gdpRname = gdpRname;
		this.gdpRtel = gdpRtel;
		this.gdpAdd = gdpAdd;
		this.gdpDadd = gdpDadd;
		this.gdpReq = gdpReq;
		this.gdbCd = gdbCd;
	}

	public String getGdpCd() {
		return gdpCd;
	}
	public void setGdpCd(String gdpCd) {
		this.gdpCd = gdpCd;
	}
	public int getGdpSum() {
		return gdpSum;
	}
	public void setGdpSum(int gdpSum) {
		this.gdpSum = gdpSum;
	}
	public Date getGdpDate() {
		return gdpDate;
	}
	public void setGdpDate(Date gdpDate) {
		this.gdpDate = gdpDate;
		SimpleDateFormat dateFormat = new SimpleDateFormat("yy/MM/dd HH:mm");
		this.newGdpDate = dateFormat.format(gdpDate);	
	}	
	public String getNewGdpDate() {
		return newGdpDate;
	}
	public void setNewGdpDate(String newGdpDate) {
		this.newGdpDate = newGdpDate;
	}
	public String getGdpMh() {
		return gdpMh;
	}
	public void setGdpMh(String gdpMh) {
		this.gdpMh = gdpMh;
	}
	public String getGdpChk() {
		return gdpChk;
	}
	public void setGdpChk(String gdpChk) {
		this.gdpChk = gdpChk;
	}
	public String getGdpRname() {
		return gdpRname;
	}
	public void setGdpRname(String gdpRname) {
		this.gdpRname = gdpRname;
	}
	public String getGdpRtel() {
		return gdpRtel;
	}
	public void setGdpRtel(String gdpRtel) {
		this.gdpRtel = gdpRtel;
	}
	public String getGdpAdd() {
		return gdpAdd;
	}
	public void setGdpAdd(String gdpAdd) {
		this.gdpAdd = gdpAdd;
	}
	public String getGdpDadd() {
		return gdpDadd;
	}
	public void setGdpDadd(String gdpDadd) {
		this.gdpDadd = gdpDadd;
	}
	public String getGdpReq() {
		return gdpReq;
	}
	public void setGdpReq(String gdpReq) {
		this.gdpReq = gdpReq;
	}
	public String getGdpRchk() {
		return gdpRchk;
	}
	public void setGdpRchk(String gdpRchk) {
		this.gdpRchk = gdpRchk;
	}
	public String getGdbCd() {
		return gdbCd;
	}
	public void setGdbCd(String gdbCd) {
		this.gdbCd = gdbCd;
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
	public String getGdName() {
		return gdName;
	}
	public void setGdName(String gdName) {
		this.gdName = gdName;
	}
	public String getGdNum() {
		return gdNum;
	}
	public void setGdNum(String gdNum) {
		this.gdNum = gdNum;
	}

	@Override
	public String toString() {
		return "GdPayVO [gdpCd=" + gdpCd + ", gdpSum=" + gdpSum + ", gdpDate=" + gdpDate + ", gdpMh=" + gdpMh
				+ ", gdpChk=" + gdpChk + ", gdpRname=" + gdpRname + ", gdpRtel=" + gdpRtel + ", gdpAdd=" + gdpAdd
				+ ", gdpDadd=" + gdpDadd + ", gdpReq=" + gdpReq + ", gdpRchk=" + gdpRchk + ", gdbCd=" + gdbCd
				+ ", memId=" + memId + "]";
	}
	
}
