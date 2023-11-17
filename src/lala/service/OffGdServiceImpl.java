package lala.service;

import java.util.List;

import lala.dao.IOffGoodsDao;
import lala.dao.offGoodsDaoImpl;
import lala.vo.OffGoodsVO;
 
public class OffGdServiceImpl implements IOffGdService {

	private static IOffGdService offgdService;
	
	
	public static IOffGdService getInstance() {
		
		if(offgdService == null) {
			offgdService = new OffGdServiceImpl();
		}
		
		return offgdService;
	}
	
	private IOffGoodsDao offgdDao;
	
	public OffGdServiceImpl() {
		//서비스 생성자 메서드에서 다오의 객체를 생성

		offgdDao = offGoodsDaoImpl.getInstance();
	}
	
	
	@Override
	public List<OffGoodsVO> getOffGd() {

		return offgdDao.getOffGoods();

	}
	
}
