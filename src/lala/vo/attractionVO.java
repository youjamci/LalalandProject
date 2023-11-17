package lala.vo;


/**
 * DB테이블에 있는 컬럼명을 기준으로 데이터를 객체화하기 위한 클래스
 * @author PC-16
 * 
 *<p>
 *	DB테이블의 '컬럼명'을 참고하여 클래스의 '멤버변수'를 작성한다.
 *</p>
 */

public class attractionVO {
	private String atCd;
	private String atName;
	private String atHeight;
	private String atInfo;
	private String atChk;
	
	private String atImg;
	
	private String zoneCd;
	private String zoneName;
	
	public attractionVO() {}
	
	public String getAtCd() {
		return atCd;
	}
	public void setAtCd(String atCd) {
		this.atCd = atCd;
	}
	public String getAtName() {
		return atName;
	}
	public void setAtName(String atName) {
		this.atName = atName;
	}
	public String getAtHeight() {
		return atHeight;
	}
	public void setAtHeight(String atHeight) {
		this.atHeight = atHeight;
	}
	public String getAtInfo() {
		return atInfo;
	}
	public void setAtInfo(String atInfo) {
		this.atInfo = atInfo;
	}
	public String getAtImg() {
		return atImg;
	}
	public void setAtImg(String atImg) {
		this.atImg = atImg;
	}
	public String getAtChk() {
		return atChk;
	}
	public void setAtChk(String atChk) {
		this.atChk = atChk;
	}
	public String getZoneCd() {
		return zoneCd;
	}
	public void setZoneCd(String zoneCd) {
		this.zoneCd = zoneCd;
	}

	@Override
	public String toString() {
		return "attractionVO [atCd=" + atCd + ", atName=" + atName + ", atHeight=" + atHeight + ", atInfo=" + atInfo
				+ ", atChk=" + atChk + ", atImg=" + atImg + ", zoneCd=" + zoneCd + ", zoneName=" + zoneName + "]";
	}

	public String getZoneName() {
		return zoneName;
	}

	public void setZoneName(String zoneName) {
		this.zoneName = zoneName;
	}
	
}
