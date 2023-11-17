package lala.service;

import java.util.List;

import lala.vo.customerQnaVO;

public interface IAdminQnaService {

	
	//사용자가 고객센터에 문의글을 남기지 로그인(id)해서 

	///*****마이페이지에서 수정삭제가 가능*******
	
	//문의글 작성 (디비에 들어가면 1 실패하면 0)
	public int answerInsertSV(customerQnaVO ctv);
	
	
	//문의글 수정(디비에 들어가면 1 실패하면 0)
	public int answerUpdateSV(customerQnaVO ctv);
	
	
	//문의글 삭제(디비에 들어가면 1 실패하면 0)
	//public int answerDeleteSV(String qCd);
	
	
	//전체 문의글 목록
	public List<customerQnaVO> getAllQnaListSV();
	
	
	//문의글 하나만 뽑기
	public customerQnaVO getQnaSV(String qCd);
	
	
	
	
	
}
