package goods.vo;

import java.util.List;

public class GdBkVO {
	private String gdbCd;
	private String gdCd;
	private int    gdNum;
	private String memId;
	
	//GdBkVO : GoodsVO = 1 : N
	private List<GoodsVO> goodsVOList;
	
	public GdBkVO(String gdbCd, String gdCd, int gdNum, String memId) {
		super();
		this.gdbCd = gdbCd;
		this.gdCd = gdCd;
		this.gdNum = gdNum;
		this.memId = memId;
	}

	public GdBkVO() {}
	
	public String getGdbCd() {
		return gdbCd;
	}

	public void setGdbCd(String gdbCd) {
		this.gdbCd = gdbCd;
	}

	public String getGdCd() {
		return gdCd;
	}

	public void setGdCd(String gdCd) {
		this.gdCd = gdCd;
	}

	public int getGdNum() {
		return gdNum;
	}

	public void setGdNum(int gdNum) {
		this.gdNum = gdNum;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	@Override
	public String toString() {
		return "GdBkVO [gdbCd=" + gdbCd + ", gdCd=" + gdCd + ", gdNum=" + gdNum + ", memId=" + memId + "]";
	}

	
	
	
}
