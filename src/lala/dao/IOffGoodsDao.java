package lala.dao;

import java.util.List;

import lala.vo.OffGoodsVO;
 
/**
 * 실제 DB에 연결해서 SQL문을 수행하여 결과를 서비스에 전달해주는 
 * DAO를 위한 인터페이스
 *
 */


public interface IOffGoodsDao {

	/** DB에 존재하는 
	 * 오프라인 굿즈샵 정보(굿즈샵이름, 설명, 오픈/마감시간, 사진 등)를 
	 * List에 담아서 반환하는 메서드
	 */
	public List<OffGoodsVO> getOffGoods();
	


}
