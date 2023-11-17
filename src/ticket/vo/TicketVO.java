package ticket.vo;

public class TicketVO {
	
	private String tkCd;
	private String tkSort;
	private String tkAge;
	private int tkPrice;
	private String memId;
	
	public TicketVO() {}

	public TicketVO(String tkCd, String tkSort, String tkAge, int tkPrice, String memId) {
		super();
		this.tkCd = tkCd;
		this.tkSort = tkSort;
		this.tkAge = tkAge;
		this.tkPrice = tkPrice;
		this.memId = memId;
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

	public int getTkPrice() {
		return tkPrice;
	}

	public void setTkPrice(int tkPrice) {
		this.tkPrice = tkPrice;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	@Override
	public String toString() {
		return "TicketVO [tkCd=" + tkCd + ", tkSort=" + tkSort + ", tkAge=" + tkAge + ", tkPrice=" + tkPrice
				+ ", memId=" + memId + "]";
	}


	
	
}

