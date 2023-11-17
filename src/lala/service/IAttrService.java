package lala.service;


import java.util.List;

import lala.vo.attractionVO;

public interface IAttrService {

	//어트랙션 정보(이름, 키, 소개, 이미지, 상태)
	public List<attractionVO> getAttraction(attractionVO vo);

	
//	// 어트랙션코드를 이용하여 어트랙션 이름을 가져오기 위한 메서드
//	public String getAttrNm(String atCd);
//
//	// 구역코드를 이용하여 어트랙션 정보
//	public String getAttrIf(String zoneCd);
//
//	// 구역코드를 이용하여 어트랙션 이미지
//	public String getAttrImg(String zoneCd);
//
//	// 어트랙션 키
//	public String getAttrHt(String atCd);
	
	}


