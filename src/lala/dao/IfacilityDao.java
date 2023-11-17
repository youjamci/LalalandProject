package lala.dao;

import java.util.List;

import lala.vo.FacilityVO;
 
public interface IfacilityDao {

	//편의시설들의 정보를 가져온다.
	public List<FacilityVO> getFacility();
	


}
