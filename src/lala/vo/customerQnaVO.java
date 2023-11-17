package lala.vo;

import java.sql.Date;

public class customerQnaVO {

	// Q_CD, MEM_ID, Q_SORT, Q_TITLE, Q_CONTENT, Q_DATE, Q_IMG,
	// ADMIN_ID, A_CONTENT, A_DATE, A_CHK
	
	private String qCd;
	private String memId;
	private String qSort;
	private String qTitle;
	private String qContent;
	
	//String으로 했을 때 터져
	private Date qDate;
	private String qImg;
	
	//관리자 아이디, 답변, 답변일자, 답변 y/n
	private String adminId;
	private String aContent;
	private Date aDate;
	private String aChk;

	//기본생성자를 만드니까 오류가 안나요
	public customerQnaVO() {}
	
	
	
	
	
	public customerQnaVO(String qTitle, String qContent) {
		super();
		this.qTitle = qTitle;
		this.qContent = qContent;
	}






	public customerQnaVO(String qSort, String qTitle, String qContent) {
		super();
		this.qSort = qSort;
		this.qTitle = qTitle;
		this.qContent = qContent;
	}





	public customerQnaVO(String memId, String qSort, String qTitle, String qContent) {
		super();
		this.memId = memId;
		this.qSort = qSort;
		this.qTitle = qTitle;
		this.qContent = qContent;
	}



	public customerQnaVO(String qCd, String memId, String qSort, String qTitle, String qContent, String  adminId,
			 String aContent, String aChk) {
		super();
		this.qCd = qCd;
		this.memId = memId;
		this.qSort = qSort;
		this.qTitle = qTitle;
		this.qContent = qContent;
		this.adminId = adminId;
		this.aContent = aContent;
		this.aChk = aChk;
	}





	public String getqCd() {
		return qCd;
	}

	public void setqCd(String qCd) {
		this.qCd = qCd;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	public String getqSort() {
		return qSort;
	}

	public void setqSort(String qSort) {
		this.qSort = qSort;
	}

	public String getqTitle() {
		return qTitle;
	}

	public void setqTitle(String qTitle) {
		this.qTitle = qTitle;
	}

	public String getqContent() {
		return qContent;
	}

	public void setqContent(String qContent) {
		this.qContent = qContent;
	}

	public Date getqDate() {
		return qDate;
	}

	public void setqDate(Date qDate) {
		this.qDate = qDate;
	}

	public String getqImg() {
		return qImg;
	}

	public void setqImg(String qImg) {
		this.qImg = qImg;
	}

	public String getAdminId() {
		return adminId;
	}

	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}

	public String getaContent() {
		return aContent;
	}

	public void setaContent(String aContent) {
		this.aContent = aContent;
	}

	public Date getaDate() {
		return aDate;
	}

	public void setaDate(Date aDate) {
		this.aDate = aDate;
	}

	public String getaChk() {
		return aChk;
	}

	public void setaChk(String aChk) {
		this.aChk = aChk;
	}

	@Override
	public String toString() {
		return "CustomerQnAVO [qCd=" + qCd + ", memId=" + memId + ", qSort=" + qSort + ", qTitle=" + qTitle
				+ ", qContent=" + qContent + ", qDate=" + qDate + ", qImg=" + qImg + ", adminId=" + adminId
				+ ", aContent=" + aContent + ", aDate=" + aDate + ", aChk=" + aChk + "]";
	}

}
