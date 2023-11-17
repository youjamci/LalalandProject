package lala.service;


import java.util.List;

import lala.vo.OffGoodsVO;

public interface IOffGdService {



	/** 
	 * 모든 오프라인 굿즈샵 정보(굿즈샵이름, 설명, 오픈/마감시간, 사진 등)를 
	 * List에 담아서 반환하는 메서드
	 */
	public List<OffGoodsVO> getOffGd();

	

	}


