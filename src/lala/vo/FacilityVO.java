package lala.vo;

public class FacilityVO {

	private String facCd;
	private String facName;
	private String facInfo;
	private String facImg;
	private String zoneCd;

	
	
	
	
	public FacilityVO(String facCd, String facName, String facInfo, String facImg, String zoneCd) {
		super();
		this.facCd = facCd;
		this.facName = facName;
		this.facInfo = facInfo;
		this.facImg = facImg;
		this.zoneCd = zoneCd;
	}


		//쿼리문과 같이 생성자 메서드가 필요함
	public FacilityVO(String facCd, String facName, String facInfo, String facImg) {
		super();
		this.facCd = facCd;
		this.facName = facName;
		this.facInfo = facInfo;
		this.facImg = facImg;
	}


	public FacilityVO(String facName, String facInfo, String facImg) {
		super();
		this.facName = facName;
		this.facInfo = facInfo;
		this.facImg = facImg;
	}

	
	public String getFacCd() {
		return facCd;
	}

	public void setFacCd(String facCd) {
		this.facCd = facCd;
	}

	public String getFacName() {
		return facName;
	}

	public void setFacName(String facName) {
		this.facName = facName;
	}

	public String getFacInfo() {
		return facInfo;
	}

	public void setFacInfo(String facInfo) {
		this.facInfo = facInfo;
	}

	public String getFacImg() {
		return facImg;
	}

	public void setFacImg(String facImg) {
		this.facImg = facImg;
	}

	public String getZoneCd() {
		return zoneCd;
	}

	public void setZoneCd(String zoneCd) {
		this.zoneCd = zoneCd;
	}

	
	
	@Override
	public String toString() {
		return "FacilityVO [facName=" + facName + ", facInfo=" + facInfo + ", facImg=" + facImg + "]";
	}

	
	
	
	
}
