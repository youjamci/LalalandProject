package lala.service;

import java.util.List;

import org.eclipse.jdt.internal.compiler.lookup.IQualifiedTypeResolutionListener;

import lala.dao.INewsDao;
import lala.dao.IcustQnaDao;
import lala.dao.custQnaDaoImpl;
import lala.dao.newsDaoImpl;
import lala.vo.NewsVO;
import lala.vo.customerQnaVO;

  
public class custQnaServiceImpl implements ICustQnaService {

	private static ICustQnaService quaService;
	
	private IcustQnaDao qnaDao;
	
	private custQnaServiceImpl() {
		
		qnaDao = custQnaDaoImpl.getInstance();
		
	}
	
	public static ICustQnaService getInstance() {
		if(quaService ==  null) {
			quaService = new custQnaServiceImpl();
		}
		return quaService;
	}
	
	
	@Override
	public int insertQnaSV(customerQnaVO ctv) {

		return qnaDao.insertQna(ctv);
	}

	@Override
	public int updateQnaSV(customerQnaVO ctv) {

		return qnaDao.updateQna(ctv);
	}

	
	@Override
	public int deleteQnaSV(String qCd) {

		return qnaDao.deleteQna(qCd);
	}

	
	@Override
	public List<customerQnaVO> getAllQnaListSV() {
		
		return qnaDao.getAllQnaList();
	}

	@Override
	public customerQnaVO getQnaSV(String qCd) {

		return qnaDao.getQna(qCd);
	}
	
}