package lala.dao;

import java.util.List;

import lala.vo.NewsVO;
import lala.vo.customerQnaVO;

//Q_CD, MEM_ID, Q_SORT, Q_TITLE, Q_CONTENT, Q_DATE, Q_IMG,
	// ADMIN_ID, A_CONTENT, A_DATE, A_CHK
	


	//사용자가 고객센터에 문의글을 남기지 로그인(id)해서 
	public interface IAdminQnaDao {

	///*****마이페이지에서 수정삭제가 가능*******
	
	
	//답변 작성 (디비에 들어가면 1 실패하면 0)
	public int answerInsert(customerQnaVO ctv);
	
	
	//답변 수정(디비에 들어가면 1 실패하면 0)
	public int answerUpdate(customerQnaVO ctv);
	
	
	//답변 삭제(디비에 들어가면 1 실패하면 0)
	//public int answerDelete(String qCd);
	
	
	//전체 문의글 목록
	public List<customerQnaVO> getAllQnaList();
	
	
	//문의글 하나만 뽑기
	public customerQnaVO getQna(String qCd);
	
	
	
	
	
	
}
