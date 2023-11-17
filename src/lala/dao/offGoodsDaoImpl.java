package lala.dao;

import java.util.ArrayList;
 import java.util.List;
 
import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;

import comm.util.MyBatisUtil;
import lala.vo.OffGoodsVO;
import lala.vo.attractionVO;

public class offGoodsDaoImpl implements IOffGoodsDao {

	private static IOffGoodsDao offgdDao;	//인터페이스 정적변수
	
	private offGoodsDaoImpl() {			//생성자 메서드
	}

	public static IOffGoodsDao getInstance() {	//attractionDaoImpl객체 생성
		if (offgdDao == null) {
			offgdDao = new offGoodsDaoImpl();
		}
		return offgdDao;
	}

	
	@Override
	public List<OffGoodsVO> getOffGoods() {
	
		List<OffGoodsVO> offgdList = new ArrayList<OffGoodsVO>();
		
		SqlSession session = MyBatisUtil.getInstance();
		
		try {
			offgdList = session.selectList("offgds.getOffGoods");
		
		}catch (PersistenceException e) {
			e.printStackTrace();
		
		}finally {
			session.close();
		}
		
		return offgdList;
	}

	
	 
	 

}
