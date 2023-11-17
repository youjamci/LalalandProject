package lala.service;

import java.util.List;

import org.eclipse.jdt.internal.compiler.lookup.IQualifiedTypeResolutionListener;

import lala.dao.AdminQnaDaoImpl;
import lala.dao.IAdminQnaDao;
import lala.dao.INewsDao;
import lala.dao.IcustQnaDao;
import lala.dao.custQnaDaoImpl;
import lala.dao.newsDaoImpl;
import lala.vo.NewsVO;
import lala.vo.customerQnaVO;

  
public class AdminQnaServiceImpl implements IAdminQnaService {

	private static IAdminQnaService adminService;
	
	private IAdminQnaDao adminDao;
	
	private AdminQnaServiceImpl() {
		
		adminDao = AdminQnaDaoImpl.getInstance();
		
	}
	
	public static IAdminQnaService getInstance() {
		if(adminService ==  null) {
			adminService = new AdminQnaServiceImpl();
		}
		return adminService;
	}

	@Override
	public int answerInsertSV(customerQnaVO ctv) {

		return adminDao.answerInsert(ctv);
	}

	@Override
	public int answerUpdateSV(customerQnaVO ctv) {

		return adminDao.answerUpdate(ctv);
	}

	/*
	 * @Override public int answerDeleteSV(String qCd) {
	 * 
	 * return adminDao.answerDeleteSV(qCd); }
	 */

	@Override
	public List<customerQnaVO> getAllQnaListSV() {

		return adminDao.getAllQnaList();
	}

	@Override
	public customerQnaVO getQnaSV(String qCd) {

		return adminDao.getQna(qCd);
	}
	
}