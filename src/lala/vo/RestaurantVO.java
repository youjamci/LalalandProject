package lala.vo;


/**
 * DB테이블에 있는 컬럼명을 기준으로 데이터를 객체화하기 위한 클래스
 * @author PC-16
 * 
 *<p>
 *	DB테이블의 '컬럼명'을 참고하여 클래스의 '멤버변수'를 작성한다.
 *</p>
 */

//	RES_CD, RES_NAME, RES_SORT, RES_INFO, RES_OPEN, RES_CLOSE, RES_IMG, ZONE_CD

public class RestaurantVO {
	
	private String resCd;
	private String resName;
	private String resSort;
	private String resInfo;
	private String resOpen;
	private String resClose;
	private String resImg;
	private String zoneCd;
	

public RestaurantVO() {}



public RestaurantVO(String resCd, String resName, String resSort, String resInfo, String resOpen, String resClose,
		String resImg, String zoneCd) {
	super();
	this.resCd = resCd;
	this.resName = resName;
	this.resSort = resSort;
	this.resInfo = resInfo;
	this.resOpen = resOpen;
	this.resClose = resClose;
	this.resImg = resImg;
	this.zoneCd = zoneCd;
}


public String getResCd() {
	return resCd;
}


public void setResCd(String resCd) {
	this.resCd = resCd;
}


public String getResName() {
	return resName;
}


public void setResName(String resName) {
	this.resName = resName;
}


public String getResSort() {
	return resSort;
}


public void setResSort(String resSort) {
	this.resSort = resSort;
}


public String getResInfo() {
	return resInfo;
}


public void setResInfo(String resInfo) {
	this.resInfo = resInfo;
}


public String getResOpen() {
	return resOpen;
}


public void setResOpen(String resOpen) {
	this.resOpen = resOpen;
}


public String getResClose() {
	return resClose;
}


public void setResClose(String resClose) {
	this.resClose = resClose;
}


public String getResImg() {
	return resImg;
}


public void setResImg(String resImg) {
	this.resImg = resImg;
}


public String getZoneCd() {
	return zoneCd;
}


public void setZoneCd(String zoneCd) {
	this.zoneCd = zoneCd;
}






@Override
public String toString() {
	return "RestaurantVO [resName=" + resName + ", resSort=" + resSort + ", resInfo=" + resInfo + ", resOpen=" + resOpen
			+ ", resClose=" + resClose + ", resImg=" + resImg + "]";
}

	
	
	
}
