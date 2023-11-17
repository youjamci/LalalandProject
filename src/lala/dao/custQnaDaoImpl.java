package lala.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;

import comm.util.MyBatisUtil;
import lala.vo.customerQnaVO;

public class custQnaDaoImpl implements IcustQnaDao {

	private static IcustQnaDao customerDao; //정적변수
	
	private custQnaDaoImpl() {}			//생성자메서드
	
	public static IcustQnaDao getInstance() {
		if(customerDao == null) {
			customerDao = new custQnaDaoImpl();
		}
		return customerDao;
	}
	
	
	
	@Override
	public int insertQna(customerQnaVO ctv) {
		
		int cnt =0; 
		
		SqlSession session = MyBatisUtil.getInstance();
		
		try {
			cnt = session.insert("userqna.insertQna", ctv);
			session.commit();
			
		} catch (PersistenceException e) {
			session.rollback();
			e.printStackTrace();
			
		} finally {
			session.close();
		}
		
		return cnt;
	}

	
	
	@Override
	public int updateQna(customerQnaVO ctv) {
		
		int cnt =0; 
		
		SqlSession session = MyBatisUtil.getInstance();
		
		try {
			cnt = session.insert("userqna.updateQna", ctv);
			session.commit();

		} catch (PersistenceException e) {
			session.rollback();
			e.printStackTrace();
		
		} finally {
			session.close();
		}
		
		
		return cnt;
	}

	
	@Override
	public int deleteQna(String qCd) {

		int cnt =0; 
		
		SqlSession session = MyBatisUtil.getInstance();
		
		try {
			cnt = session.insert("userqna.deleteQna", qCd);
			session.commit();

		} catch (PersistenceException e) {
			session.rollback();
			e.printStackTrace();
		
		} finally {
			session.close();
		}
		
		return cnt;
	}	
	
	
	@Override
	public List<customerQnaVO> getAllQnaList() {
		List<customerQnaVO> qList = new ArrayList<customerQnaVO>();
		
		SqlSession session = MyBatisUtil.getInstance();
		
		try {
			qList = session.selectList("userqna.getAllQnaList");
			session.commit();

		} catch (PersistenceException e) {
			session.rollback();
			e.printStackTrace();

		} finally {
			session.close();
		}

		return qList;
	}

	
	
	
	@Override
	public customerQnaVO getQna(String qCd) {
		SqlSession session = MyBatisUtil.getInstance(true);
		
		customerQnaVO cqv = null;
		
		try {
			cqv = session.selectOne("userqna.getQna", qCd);

		} catch (PersistenceException e) {
			e.printStackTrace();

		} finally {
			session.close();
		}
		
		return cqv;
		
		
		
	}

	
}
