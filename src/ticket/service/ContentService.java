package ticket.service;

import java.util.List;

import ticket.dao.ContentDao;
import ticket.vo.ContentVO;

public class ContentService {
	
	private ContentDao contentDao;
	
	private static ContentService instance;
	private ContentService() {
		contentDao = ContentDao.getInstance();
	}
	public static ContentService getInstance() {
		if(instance == null) instance = new ContentService();
		return instance;
	}
	
	public int makeCtrCd(ContentVO contentVO) { // ctrCd 공통으로 사용 필요
		return contentDao.insertCtRsv(contentVO);
	}
	
	public int finCtRsv(ContentVO contentVO) {
		String ctdCd = contentDao.ctDayCheck(contentVO);
		if(ctdCd == null) {
			contentDao.insertCtday(contentVO);
			System.out.println("ctdCd세팅? " + contentVO);
			if(getCtLeft(contentVO.getCtdCd()).getCtLeft() >= contentVO.getCtReshm()) {
				return contentDao.insertCtRday(contentVO);
			} else {
				return -1; // 남은인원 이상으로 예약 시도 -> 실패
			}
		} else {
			if(getCtLeft(ctdCd).getCtLeft() >= contentVO.getCtReshm()) {
				contentVO.setCtdCd(ctdCd);
				return contentDao.insertCtRday(contentVO);
			} else {
				return -1; // 남은인원 이상으로 예약 시도 -> 실패
			}
		}
	}
	
	public List<ContentVO> getAllCtLeft() {
		return contentDao.getAllCtLeft();
	}
	
	public ContentVO getCtLeft(String ctdCd) {
		return contentDao.getCtLeft(ctdCd);
	}
	
	public List<ContentVO> myCt(String memId) {
		return contentDao.myCt(memId);
	}
	
	public int cancleCtRsv(ContentVO contentVO) {
		return contentDao.deleteCtRday(contentVO);
	}
}