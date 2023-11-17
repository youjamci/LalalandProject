package lala.dao;

import java.util.List;

import comm.dao.MyBatisDao;
import lala.vo.attractionVO;

public class AttractionDao extends MyBatisDao{

	private static AttractionDao instance;
	private AttractionDao() {}
	public static AttractionDao getInstance() {
		if(instance == null) instance = new AttractionDao();
		return instance;
	}
	
	public List<attractionVO> getAllAttractionInfo(attractionVO atVO){
		return selectList("attraction.selectAllAttractionInfo", atVO);
	}
	
	public int updateAttractionOpenChkInfo(attractionVO atVO) {
		return update("attraction.updateAttractionOpenChkInfo", atVO);
	}
	
	public int updateAttractionCloseChkInfo(attractionVO atVO) {
		return update("attraction.updateAttractionCloseChkInfo", atVO);
	}
	
	public List<attractionVO> getAllAttraction(attractionVO atVO){
		return selectList("attraction.getAllAttraction", atVO);
	}
}
