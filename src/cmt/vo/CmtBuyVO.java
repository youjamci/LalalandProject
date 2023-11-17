package cmt.vo;

public class CmtBuyVO {
	
	private String cmtbCd;
	private String memId;
	
	
	public CmtBuyVO() {}

	public CmtBuyVO(String cmtbCd, String memId) {
		this.cmtbCd = cmtbCd;
		this.memId = memId;
	}

	public String getCmtbCd() {
		return cmtbCd;
	}

	public void setCmtbCd(String cmtbCd) {
		this.cmtbCd = cmtbCd;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	@Override
	public String toString() {
		return "CmtBuyVO [cmtbCd=" + cmtbCd + ", memId=" + memId + "]";
	}
	
	
}
