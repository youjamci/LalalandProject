package lala.service;

import java.util.List;

import lala.dao.IattractionDao;
import lala.dao.IfacilityDao;
import lala.dao.attractionDaoImpl;
import lala.dao.facilityDaoImpl;
import lala.vo.FacilityVO;
import lala.vo.attractionVO;

public class FacServiceImpl implements IFacilityService {

	private static IFacilityService facService;
	
	
	public static IFacilityService getInstance() {
		if(facService == null) {
			facService = new FacServiceImpl();
		}
		return facService;
	}
	
	
	private IfacilityDao facDao;
	
	private FacServiceImpl(){
		facDao = facilityDaoImpl.getInstance();
	}
	
	
	@Override
	public List<FacilityVO> getFacilitySV() {

		return facDao.getFacility();
	}
	
	

}
