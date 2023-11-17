package ticket.vo;

public class TicketBuyVO {
	
	private String tkbCd;
	private String memId;
	
	
	public TicketBuyVO() {}
	
	public TicketBuyVO(String tkbCd, String memId) {
		this.tkbCd = tkbCd;
		this.memId = memId;
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

	@Override
	public String toString() {
		return "TkBuyVO [tkbCd=" + tkbCd + ", memId=" + memId + "]";
	}
	
	
}
