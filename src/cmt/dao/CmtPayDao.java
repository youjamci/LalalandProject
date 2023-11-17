package cmt.dao;

import java.util.List;

import cmt.vo.CmtPayVO;
import comm.dao.MyBatisDao;

public class CmtPayDao extends MyBatisDao {

	private static CmtPayDao instance;
	private CmtPayDao() {}
	public static CmtPayDao getInstance() {
		if(instance == null) instance = new CmtPayDao();
		return instance;
	}

	public List<CmtPayVO> getAllCmtPay() {
		return selectList("cmtpay.getAllCmtPay");

	}

	public List<CmtPayVO> cmtpCdCMTicket(String cmtpCd) {
		return selectList("cmtpay.cmtpCdTicket", cmtpCd);
	}

	public List<CmtPayVO> getMyCMTicketPay(String memId) {
		return selectList("cmtpay.getMyCMTicketPay", memId);
	}


	public int cancleCMTPay(String cmtpCd) {
		return update("cmtpay.cancleCMTPay", cmtpCd);

	}

}
