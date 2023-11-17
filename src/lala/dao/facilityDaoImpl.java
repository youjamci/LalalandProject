package lala.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;

import comm.util.MyBatisUtil;
import lala.vo.FacilityVO;

public class facilityDaoImpl implements IfacilityDao {

	private static IfacilityDao facDao;
	
	private facilityDaoImpl() {}
	
	public static IfacilityDao getInstance() {
		if(facDao == null) {
			facDao  = new facilityDaoImpl();
		}
		return facDao;
		
	}
	
	
	
	@Override
	public List<FacilityVO> getFacility() {
		
		List<FacilityVO> facList = new ArrayList<FacilityVO>();
		
		SqlSession session = MyBatisUtil.getInstance();
		
		try {
			facList = session.selectList("fac.getFacility");
			session.commit();		
			
		} catch (PersistenceException ex) {
			ex.printStackTrace();
			
		} finally {
			session.close();
		}
		return facList;
	}

}
