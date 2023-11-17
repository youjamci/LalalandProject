package lala.dao;

import java.util.List;

import lala.vo.attractionVO;

public interface IattractionDao {

	//어트랙션 정보를 가져온다.
	public List<attractionVO> getAttraction(attractionVO vo);
	


}
