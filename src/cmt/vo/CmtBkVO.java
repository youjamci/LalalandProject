package cmt.vo;

public class CmtBkVO {
	
	private String cmtName;
	private String cmtCd;
	private int cmtNum;
	private String cmtbCd;
	
	
	public CmtBkVO(){}

	public CmtBkVO(String cmtName, String cmtCd, int cmtNum) {
		super();
		this.cmtName = cmtName;
		this.cmtCd = cmtCd;
		this.cmtNum = cmtNum;
	}

	public String getCmtName() {
		return cmtName;
	}

	public void setCmtName(String cmtName) {
		this.cmtName = cmtName;
	}

	public String getCmtCd() {
		return cmtCd;
	}

	public void setCmtCd(String cmtCd) {
		this.cmtCd = cmtCd;
	}

    public int getCmtNum() {
        return cmtNum;
    }

    public void setCmtNum(int cmtNum) {
        this.cmtNum = cmtNum;
    }

	public String getCmtbCd() {
		return cmtbCd;
	}

	public void setCmtbCd(String cmtbCd) {
		this.cmtbCd = cmtbCd;
	}

	@Override
	public String toString() {
		return "CmtBkVO [cmtName=" + cmtName + ", cmtCd=" + cmtCd + ", cmtNum=" + cmtNum + ", cmtbCd=" + cmtbCd + "]";
	}
	
	
}
