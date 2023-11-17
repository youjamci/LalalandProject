package lala.dao;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
 
import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;

import comm.util.MyBatisUtil;
import lala.vo.NewsVO;

public class newsDaoImpl implements INewsDao {

	private static INewsDao newsDao;

	private newsDaoImpl() {
	}

	public static INewsDao getInstance() {
		if (newsDao == null) {
			newsDao = new newsDaoImpl();
		}

		return newsDao;
	}

	
	
	// 뉴스공지 인서트
	@Override
	public int insertNews(NewsVO nv) {

		int cnt = 0;

		SqlSession session = MyBatisUtil.getInstance();

		try {
			cnt = session.insert("news.insertNews", nv);
			session.commit();

		} catch (PersistenceException e) {
			session.rollback();
			e.printStackTrace();
		
		} finally {
			session.close();
		}

		return cnt;
	}

	
	
	// 뉴스공지 수정
	@Override
	public int updateNews(NewsVO nv) {

		int cnt = 0;

		SqlSession session = MyBatisUtil.getInstance();

		try {
			cnt = session.update("news.updateNews", nv);
			//세션커밋!!!!!!
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
	public int deleteNews(String notiCd) {
		int cnt = 0;

		SqlSession session = MyBatisUtil.getInstance();

		try {
			cnt = session.delete("news.deleteNews", notiCd);
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
	public List<NewsVO> getAllNews() {
		List<NewsVO> newsList = new ArrayList<NewsVO>();

		SqlSession session = MyBatisUtil.getInstance();

		try {
			newsList = session.selectList("news.getAllNews");
			session.commit();

		} catch (PersistenceException e) {
			session.rollback();
			e.printStackTrace();

		} finally {
			session.close();
		}

		return newsList;
	}

	
	
	@Override
	public List<NewsVO> searchNews(String Keyword) {

		List<NewsVO> newsList = Collections.EMPTY_LIST;

		SqlSession session = MyBatisUtil.getInstance();

		try {

			newsList = session.selectList("news.getAllNews", Keyword);
		//SELECT 문을 실행하여 데이터를 조회하는 경우에는 세션을 커밋할 필요가 없습니다.


		} catch (PersistenceException e) {
			e.printStackTrace();

		} finally {
			session.close();
		}

		return newsList;

	}

	
	
	@Override
	public NewsVO getNews(String notiCd) {
		
		SqlSession session = MyBatisUtil.getInstance();
		NewsVO nv = null;
		
		try {

		nv = session.selectOne("news.getNews", notiCd);
		
		} catch (PersistenceException e) {
			e.printStackTrace();

		} finally {
			session.close();
		}
		return nv;
	}

}
