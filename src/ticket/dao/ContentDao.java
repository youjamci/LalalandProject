package ticket.dao;

import java.util.List;

import comm.dao.MyBatisDao;
import goods.dao.GoodsDao;
import ticket.vo.ContentVO;

public class ContentDao extends MyBatisDao {
	
	private static ContentDao instance;
	private ContentDao() {}
	public static ContentDao getInstance() {
		if(instance == null) instance = new ContentDao();
		return instance;
	}
	
	public int insertCtRsv(ContentVO contentVO) { // 콘텐츠예약코드 생성
		return insert("content.insertCtRsv", contentVO); // memId 필요 -> ctrCd 세팅
	}
	
	public String ctDayCheck(ContentVO contentVO) { // 콘텐츠일정 확인 -> ctdCd 세팅
		ContentVO ctVO = selectOne("content.ctDayCheck", contentVO);  // ctDate, ctSn, ctCd 필요
		if(ctVO == null || ctVO.getCtdCd() == null) {
			return null;
		} else {
			return ctVO.getCtdCd();
		}
	}
	
	public int insertCtday(ContentVO contentVO) { // 콘텐츠일정 생성 -> ctdCd 세팅
		return insert("content.insertCtDay", contentVO); // ctDate, ctSn, ctCd 필요
	}
	
	public int insertCtRday(ContentVO contentVO) { // 콘텐츠예약일정 인서트
		return insert("content.insertCtRday", contentVO); // ctReshm 필요
	}
	
	public List<ContentVO> getAllCtLeft() {
		return selectList("content.getAllCtLeft");
	}
	
	public ContentVO getCtLeft(String ctdCd) { // ctLeft에 남은 인원 세팅
		return selectOne("content.getCtLeft", ctdCd);
	}
	
	public List<ContentVO> myCt(String memId) {
		return selectList("content.myCt", memId);
	}
	
	public int deleteCtRday(ContentVO contentVO) {
		return delete("content.deleteCtRday", contentVO);
	}
	
}