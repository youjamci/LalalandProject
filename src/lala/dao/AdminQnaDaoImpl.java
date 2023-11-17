package lala.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;

import comm.util.MyBatisUtil;
import lala.vo.customerQnaVO;

public class AdminQnaDaoImpl implements IAdminQnaDao {

	private static IAdminQnaDao adminDao; // 정적변수

	private AdminQnaDaoImpl() {
	} // 생성자메서드

	public static IAdminQnaDao getInstance() {
		if (adminDao == null) {
			adminDao = new AdminQnaDaoImpl();
		}
		return adminDao;
	}

	
	
	//답변 등록!
	@Override
	public int answerInsert(customerQnaVO ctv) {
		
		int cnt =0; 
		
		SqlSession session = MyBatisUtil.getInstance(); 
		
		try {
			cnt = session.insert("userqna.answerInsert", ctv);
			session.commit();
			
		} catch (PersistenceException e) {
			session.rollback();
			e.printStackTrace();
			
		} finally {
			session.close();
		}
		
		return cnt;
	}

	
	//////////////////////////////////////
	@Override
	public int answerUpdate(customerQnaVO ctv) {
 	
		int cnt =0; 
		
		SqlSession session = MyBatisUtil.getInstance(); 
		
		try {
			cnt = session.insert("userqna.answerUpdate", ctv);
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
