package cmt.service;

import java.util.List;

import cmt.dao.CmtPayDao;
import cmt.vo.CmtPayVO;

public class CmtPayService {
	private CmtPayDao cmtPayDao;
	
	private static CmtPayService instance;
	private CmtPayService() {
		cmtPayDao = CmtPayDao.getInstance();
	}
	public static CmtPayService getInstance() {
		if(instance == null) instance = new CmtPayService();
		return instance;
	}
	
	public List<CmtPayVO> showAllCmtPay() {
		return cmtPayDao.getAllCmtPay();
	}
	
	public List<CmtPayVO> cmtpCdTicket(String cmtpCd) {
		return cmtPayDao.cmtpCdCMTicket(cmtpCd);
	}
	
	public List<CmtPayVO> showMyCMTicketPay(String memId) {
		return cmtPayDao.getMyCMTicketPay(memId);
	}
	
	public int refundCMTPay(String cmtbCd) {
		return cmtPayDao.cancleCMTPay(cmtbCd);
	}
	
	
}
