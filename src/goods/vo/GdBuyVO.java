package goods.vo;

import java.util.List;

public class GdBuyVO {
	private String gdbCd;
	private String gdbChk;
	private String memId;
	private String gdCd;
	
	//GdBuyVO : GdBkVO = 1 : N
	private List<GdBkVO> gdBkVOList;
	
	public GdBuyVO() {}	

	public GdBuyVO(String memId) {
		super();
		this.memId = memId;
	}

	public String getGdbCd() {
		return gdbCd;
	}

	public void setGdbCd(String gdbCd) {
		this.gdbCd = gdbCd;
	}

	public String getGdbChk() {
		return gdbChk;
	}

	public void setGdbChk(String gdbChk) {
		this.gdbChk = gdbChk;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	public String getGdCd() {
		return gdCd;
	}

	public void setGdCd(String gdCd) {
		this.gdCd = gdCd;
	}

	@Override
	public String toString() {
		return "GdBuyVO [gdbCd=" + gdbCd + ", gdbChk=" + gdbChk + ", memId=" + memId + ", gdCd=" + gdCd
				+ ", gdBkVOList=" + gdBkVOList + "]";
	}
	
}
