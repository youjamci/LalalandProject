package lala.service;

import java.util.List;

import lala.dao.IattractionDao;
import lala.dao.attractionDaoImpl;
import lala.vo.attractionVO;

public class AttrServiceImpl implements IAttrService {
	
	
	private static IAttrService attrService;	//정적변수
	
	public static IAttrService getInstance() {	//AttrServiceImpl 객체생성
		if(attrService == null) {
			attrService = new AttrServiceImpl();
		}
		return attrService;
	}
	
	private IattractionDao attrDao;
	
	public AttrServiceImpl() {
		attrDao = attractionDaoImpl.getInstance();	//다오임플 객체 생성
	}

	////////////////////////////////////////////////////////////////////////////////

	

	
	
	@Override
	public List<attractionVO> getAttraction(attractionVO vo) {

		return attrDao.getAttraction(vo);

	}
	

}
