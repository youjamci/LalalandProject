package lala.service;


import java.util.List;

import lala.vo.FacilityVO;
 
public interface IFacilityService {

	//편의시설 정보(이름, 정보, 이미지, 상태)
	public List<FacilityVO> getFacilitySV();

	
}


