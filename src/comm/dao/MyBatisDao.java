package comm.dao;

import java.sql.SQLException;
import java.util.Collections;
import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;

import comm.util.MyBatisUtil;


public class MyBatisDao {
	
	/**
	 * 데이터가 한 개인 경우 사용할 메서드
	 * @param <T>
	 * @param statement 실행할 쿼리ID
	 * @return 실행 결과
	 */
	public <T> T selectOne(String statement) {
	
		SqlSession sqlSession = MyBatisUtil.getInstance(true);
		
		T obj = null;
		
		try {
			obj = sqlSession.selectOne(statement);			
		}catch(PersistenceException ex) {
			// checked 예외(Exception) -> 에러 핸들링 필요
			// unchecked 예외(RuntimeException) -> 핸들링 강제화하지 않음
			throw new RuntimeException("마이바티스에서 데이터 조회 중 예외발생!", ex);
		}finally {
			sqlSession.close(); // 세션 닫기
		}
		
		return obj;
		
	}
	
	/**
	 * 데이터가 한 개인 경우 사용할 메서드
	 * @param <T>
	 * @param statement 실행할 쿼리ID
	 * @param parameter 쿼리 실행에 사용할  파라미터
	 * @return 실행 결과
	 */
	public <T> T selectOne(String statement, Object parameter) {
		
		SqlSession sqlSession = MyBatisUtil.getInstance(true);
		
		T obj = null;
		
		try {
			obj = sqlSession.selectOne(statement, parameter);			
		}catch(PersistenceException ex) {
			throw new RuntimeException("마이바티스에서 데이터 조회 중 예외발생!", ex);
		}finally {
			sqlSession.close(); // 세션 닫기
		}
		
		return obj;
		
	}
	
	/**
	 * 목록 조회 메서드
	 * @param <T> 
	 * @param statement 실행할 쿼리ID
	 * @return 실행 결과
	 */
	public <T> List<T> selectList(String statement) {

		SqlSession session = MyBatisUtil.getInstance(true);
		
		List<T> list = Collections.EMPTY_LIST;
		
		try {
			list = session.selectList(statement);
		}catch(PersistenceException ex) {
			throw new RuntimeException("마이바티스에서 목록 조회 중 예외발생!", ex);
		}finally {
			session.close();
		}
		
		return list;
		
	}
	
	public <T> List<T> selectList(String statement, Object parameter) {

		SqlSession session = MyBatisUtil.getInstance(true);
		
		List<T> list = Collections.EMPTY_LIST;
		
		try {
			list = session.selectList(statement, parameter);
		}catch(PersistenceException ex) {
			throw new RuntimeException("마이바티스에서 목록 조회 중 예외발생!", ex);
		}finally {
			session.close();
		}
		
		return list;
		
	}
	
	public int insert(String statement, Object parameter) {
		
		SqlSession session = MyBatisUtil.getInstance();
		
		int cnt = 0;
		
		try {
			cnt = session.insert(statement, parameter);
			
			session.commit();			
		}catch (PersistenceException ex) {
			session.rollback();
			
			throw new RuntimeException("마이바티스에서 데이터 등록 중 예외 발생!", ex);
		}finally {
			session.close();
		}
		
		return cnt;
		
	}
	
	public int update(String statement, Object parameter) {
		
		SqlSession session = MyBatisUtil.getInstance();
		
		int cnt = 0;
		
		try {
			cnt = session.update(statement, parameter);
			
			session.commit();			
		}catch (PersistenceException ex) {
			session.rollback();
			
			throw new RuntimeException("마이바티스에서 데이터 수정 중 예외 발생!", ex);
		}finally {
			session.close();
		}
		
		return cnt;
		
	}
	
	public int delete(String statement, Object parameter) {
		
		SqlSession session = MyBatisUtil.getInstance();
		
		int cnt = 0;
		
		try {
			cnt = session.delete(statement, parameter);
			
			session.commit();			
		}catch (PersistenceException ex) {
			session.rollback();
			
			throw new RuntimeException("마이바티스에서 데이터 삭제 중 예외 발생!", ex);
		}finally {
			session.close();
		}
		
		return cnt;
		
	}

	public String IdChk(String name, String email) {
	    SqlSession sqlSession = MyBatisUtil.getInstance(true);

	    try {
	        // MyBatis를 사용하여 데이터베이스에서 조회하는 로직을 작성합니다.
	        // 예를 들어, 아래와 같이 매퍼 파일에서 필요한 쿼리를 실행할 수 있습니다.
	        // return sqlSession.selectOne("mapper.member.IdChk", parameter);

	        // 예시로 이름과 이메일이 일치하는 회원의 아이디를 조회하는 쿼리를 실행합니다.
	        return sqlSession.selectOne("mapper.member.IdChk", Collections.singletonMap("name", name));
	    } catch (PersistenceException ex) {
	        throw new RuntimeException("마이바티스에서 데이터 조회 중 예외 발생!", ex);
	    } finally {
	        sqlSession.close();
	    }
	}

	
}
