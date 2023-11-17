package lala.dao;

import java.util.List;

import lala.vo.NewsVO;

//이용정보 > 뉴스 공지
public interface INewsDao {

	//디비에 넣을 데이터를 담고 있는 NewsVO객체 
	//새글 작성 (db에 들어가면 1 실패하면 0을 리턴)
	public int insertNews(NewsVO nv);
	
	
	//NewsVO에 담긴 데이터를 DB에 업데이트 하기 위한 메서드
	//글 수정 (db에 들어가면 1 실패하면 0을 리턴)
	public int updateNews(NewsVO nv);

	
	//뉴스공지글을 삭제하기 위한 메서드
	public int deleteNews(String notiCd);

		
	//DB에 존재하는 모든  뉴스공지글 가져와 list에 담아서 반환
	//전체 뉴스공지글 출력()
	public List<NewsVO> getAllNews();
	
	
	//뉴스공지 검색?
	public List<NewsVO> searchNews(String Keyword);
	
	////뉴스공지글 하나만 
	public NewsVO getNews(String notiCd);
	
	
	
	//글 존재 여부 체크
//	public boolean checkNews(String newCd);
			
		
}
