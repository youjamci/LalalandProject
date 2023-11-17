package lala.service;

import java.util.List;

import lala.dao.AttractionDao;
import lala.vo.attractionVO;

public class AttractionService {

	private AttractionDao attractionDao;
	
	private static AttractionService instance;
	private AttractionService() {
		attractionDao = AttractionDao.getInstance();
	}
	public static AttractionService getInstance() {
		if(instance == null) instance = new AttractionService();
		return instance;
	}
	
	public List<attractionVO> getAllAttractionInfo(attractionVO atVO){
		return attractionDao.getAllAttractionInfo(atVO);
	}
	
	public int updateAttractionOpenChkInfo(attractionVO atVO) {
		return attractionDao.updateAttractionOpenChkInfo(atVO);
	}
	
	public int updateAttractionCloseChkInfo(attractionVO atVO) {
		return attractionDao.updateAttractionCloseChkInfo(atVO);
	}
	
	public List<attractionVO> getAllAttraction(attractionVO atVO){
		return attractionDao.getAllAttraction(atVO);
	}
	
}
