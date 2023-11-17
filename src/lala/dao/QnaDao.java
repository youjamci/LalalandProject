package lala.dao;

import java.util.List;

import comm.dao.MyBatisDao;
import lala.vo.customerQnaVO;

public class QnaDao extends MyBatisDao{

	private static QnaDao instance;
	private QnaDao() {}
	public static QnaDao getInstance() {
		if(instance == null) instance = new QnaDao();
		return instance;
	}
	
	public List<customerQnaVO> myPageQna(customerQnaVO cqVO){
		return selectList("userqna.mypageQna", cqVO);
	}
	
}
