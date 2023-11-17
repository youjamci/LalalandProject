package lala.vo;


/**
 * DB테이블에 있는 컬럼명을 기준으로 데이터를 객체화하기 위한 클래스
 * @author PC-16
 * 
 *
 *	DB테이블의 '컬럼명'을 참고하여 클래스의 '멤버변수'를 작성한다.
 */

//OFFGD_CD, OFFGD_NAME, OFFGD_INFO, OFFGD_OPEN, OFFGD_CLOSE, OFFGD_IMG, ZONE_CD
public class OffGoodsVO {
	private String offGdCd;
	private String offGdName;
	private String offGdInfo;
	private String offGdOpen;
	private String offGdClose;
	private String offGdImg;
	private String zoneCd;
	
	
	
	public OffGoodsVO() {}
	
	public OffGoodsVO(String offGdCd, String offGdName, String offGdInfo, String offGdOpen, String offGdClose,
			String offGdImg, String zoneCd) {
		super();
		this.offGdCd = offGdCd;
		this.offGdName = offGdName;
		this.offGdInfo = offGdInfo;
		this.offGdOpen = offGdOpen;
		this.offGdClose = offGdClose;
		this.offGdImg = offGdImg;
		this.zoneCd = zoneCd;
	}

	
	
	public String getOffGdCd() {
		return offGdCd;
	}

	public void setOffGdCd(String offGdCd) {
		this.offGdCd = offGdCd;
	}

	public String getOffGdName() {
		return offGdName;
	}

	public void setOffGdName(String offGdName) {
		this.offGdName = offGdName;
	}

	public String getOffGdInfo() {
		return offGdInfo;
	}

	public void setOffGdInfo(String offGdInfo) {
		this.offGdInfo = offGdInfo;
	}

	public String getOffGdOpen() {
		return offGdOpen;
	}

	public void setOffGdOpen(String offGdOpen) {
		this.offGdOpen = offGdOpen;
	}

	public String getOffGdClose() {
		return offGdClose;
	}

	public void setOffGdClose(String offGdClose) {
		this.offGdClose = offGdClose;
	}

	public String getOffGdImg() {
		return offGdImg;
	}

	public void setOffGdImg(String offGdImg) {
		this.offGdImg = offGdImg;
	}

	public String getZoneCd() {
		return zoneCd;
	}

	public void setZoneCd(String zoneCd) {
		this.zoneCd = zoneCd;
	}

	
	
	@Override
	public String toString() {
		return "OffGoodsVO [offGdName=" + offGdName + ", offGdInfo=" + offGdInfo + ", offGdOpen=" + offGdOpen
				+ ", offGdClose=" + offGdClose + ", offGdImg=" + offGdImg + "]";
	}
	


	
	
	
	
}
