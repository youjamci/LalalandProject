package lala.dao;

import java.util.ArrayList;
 import java.util.List;
 
import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;

import comm.util.MyBatisUtil;
import lala.vo.attractionVO;

public class attractionDaoImpl implements IattractionDao {

	private static IattractionDao attrDao;	//인터페이스 정적변수
	
	private attractionDaoImpl() {			//생성자 메서드
	}

	public static IattractionDao getInstance() {	//attractionDaoImpl객체 생성
		if (attrDao == null) {
			attrDao = new attractionDaoImpl();
		}
		return attrDao;
	}

	
	public List<attractionVO> getAttraction(attractionVO vo) {
		
		List<attractionVO> attrlist = new ArrayList<attractionVO>();

		SqlSession session = MyBatisUtil.getInstance();

		try {

			attrlist = session.selectList("attraction.getAttraction",vo);

		} catch (PersistenceException ex) {
			ex.printStackTrace();
			
		} finally {
			session.close();
		}
		
		System.out.println(attrlist);
		return attrlist;
		
	}
	 
	 


}
