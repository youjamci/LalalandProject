package lala.service;

import java.util.List;

import lala.dao.QnaDao;
import lala.vo.customerQnaVO;

public class QnaService{

	private QnaDao qnaDao;
	
	private static QnaService instance;
	private QnaService(){
		qnaDao = QnaDao.getInstance();
	}
	public static QnaService getInstance() {
		if(instance == null) instance = new QnaService();
		return instance;
	}
	
	public List<customerQnaVO> myPageQna(customerQnaVO cqVO){
		return qnaDao.myPageQna(cqVO);
	}
	
}
