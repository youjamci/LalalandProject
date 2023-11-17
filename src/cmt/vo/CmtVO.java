package cmt.vo;

public class CmtVO {
	
	private String cmtCd;
	private String cmtName;
	private int cmtPrice;
	private String cmtSort;
	private String memId;

	
	public CmtVO() {}


	public CmtVO(String cmtCd, String cmtName, int cmtPrice, String cmtSort, String memId) {
		super();
		this.cmtCd = cmtCd;
		this.cmtName = cmtName;
		this.cmtPrice = cmtPrice;
		this.cmtSort = cmtSort;
		this.memId = memId;
	}


	public String getCmtCd() {
		return cmtCd;
	}


	public void setCmtCd(String cmtCd) {
		this.cmtCd = cmtCd;
	}


	public String getCmtName() {
		return cmtName;
	}


	public void setCmtName(String cmtName) {
		this.cmtName = cmtName;
	}


	public int getCmtPrice() {
		return cmtPrice;
	}


	public void setCmtPrice(int cmtPrice) {
		this.cmtPrice = cmtPrice;
	}


	public String getCmtSort() {
		return cmtSort;
	}


	public void setCmtSort(String cmtSort) {
		this.cmtSort = cmtSort;
	}


	public String getMemId() {
		return memId;
	}


	public void setMemId(String memId) {
		this.memId = memId;
	}


	@Override
	public String toString() {
		return "CmtVO [cmtCd=" + cmtCd + ", cmtName=" + cmtName + ", cmtPrice=" + cmtPrice + ", cmtSort=" + cmtSort
				+ ", memId=" + memId + "]";
	}


}
