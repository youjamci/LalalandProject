package lala.vo;

/**
 * DB테이블에 있는 컬럼명을 기준으로 데이터를 객체화하기 위한 클래스
 * 
 * @author PC-16
 * 
 * <p>
 * DB테이블의 '컬럼명'을 참고하여 클래스의 '멤버변수'를 작성한다.
 * </p>
 */

//NOTI_CD, NOTI_TITLE, NOTI_CONTENT, NOTI_DATE, NOTI_IMG, ADMIN_ID
public class NewsVO {

	private String notiCd;
	private String notiTitle;
	private String notiContent;
	private String notiDate;
	private String notiImg;
	private String adminId;

	private String notiImgPath;
	
	public NewsVO() {}
	
	public NewsVO(String notiCd) {
		this.notiCd = notiCd;
	}
	

	
	public NewsVO(String notiTitle, String notiContent) {
		//생성자 메서드 안에 값 만들어야지
		this.notiTitle = notiTitle;
		this.notiContent = notiContent;
	}
	
	
	
	public NewsVO(String notiCd, String notiTitle, String notiContent, String notiDate, String notiImg,
			String adminId) {
		super();
		this.notiCd = notiCd;
		this.notiTitle = notiTitle;
		this.notiContent = notiContent;
		this.notiDate = notiDate;
		this.notiImg = notiImg;
		this.adminId = adminId;
	}

	public NewsVO(String notiTitle, String notiContent, String adminId) {
		super();
		this.notiTitle = notiTitle;
		this.notiContent = notiContent;
		this.adminId = adminId;
	}

	
		
	public NewsVO(String notiTitle, String notiContent, String notiDate, String notiImg) {
		super();
		this.notiTitle = notiTitle;
		this.notiContent = notiContent;
		this.notiDate = notiDate;
		this.notiImg = notiImg;
	}

	public String getNotiImgPath() {
		return notiImgPath;
	}

	public void setNotiImgPath(String notiImgPath) {
		this.notiImgPath = notiImgPath;
	}
	
	public String getNotiCd() {
		return notiCd;
	}

	public void setNotiCd(String notiCd) {
		this.notiCd = notiCd;
	}

	public String getNotiTitle() {
		return notiTitle;
	}

	public void setNotiTitle(String notiTitle) {
		this.notiTitle = notiTitle;
	}

	public String getNotiContent() {
		return notiContent;
	}

	public void setNotiContent(String notiContent) {
		this.notiContent = notiContent;
	}

	public String getNotiDate() {
		return notiDate;
	}

	public void setNotiDate(String notiDate) {
		this.notiDate = notiDate;
	}

	public String getNotiImg() {
		return notiImg;
	}

	public void setNotiImg(String notiImg) {
		this.notiImg = notiImg;
		if(notiImg.contains("WebContent")) {
			this.notiImgPath = notiImg.substring(notiImg.indexOf("WebContent")+10);
		}
	}

	public String getAdminId() {
		return adminId;
	}

	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}

	@Override
	public String toString() {
		return "NewsVO [notiCd=" + notiCd + ", notiTitle=" + notiTitle + ", notiContent=" + notiContent + ", notiDate="
				+ notiDate + ", notiImg=" + notiImg + ", adminId=" + adminId + ", notiImgPath=" + notiImgPath + "]";
	}





}
