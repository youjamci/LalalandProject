package goods.vo;

public class ZzimVO {

	private String gdCd;
	private String memId;
	
	private void ZzimVO() {}

	public ZzimVO(String gdCd, String memId) {
		super();
		this.gdCd = gdCd;
		this.memId = memId;
	}

	public String getGdCd() {
		return gdCd;
	}

	public void setGdCd(String gdCd) {
		this.gdCd = gdCd;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	@Override
	public String toString() {
		return "ZzimVO [gdCd=" + gdCd + ", memId=" + memId + "]";
	}

}
