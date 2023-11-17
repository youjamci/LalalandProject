package cmt.service;

import cmt.vo.CmtBuyVO;
import cmt.vo.CmtPayVO;

import cmt.dao.CmtDao;
import cmt.vo.CmtBkVO;

public class CmtService {
    
	private static CmtService instacnce = new CmtService();
    private CmtService() {}
    public static CmtService getInstance() {return instacnce;}
    
    CmtDao cmtDao = CmtDao.getInstance();
	    
    // 1) Cmt_BUY(memId)
 	public int cmtBuyInsert(CmtBuyVO cmtBuyVO) {
 		return cmtDao.cmtBuyInsert(cmtBuyVO);
 	}

 	// 2) CMT_BK(cmtbCd(1)), cmtCd, cmtNum)
 	public int cmtBkInsert(CmtBkVO cmtBkVO) {
 		return cmtDao.cmtBkInsert(cmtBkVO);
 	}

 	// 3) CMT_PAY(cmtpMh, cmtpSum, cmtbCd(1))
 	public int cmtPayInsert(CmtPayVO cmtPayVO) {
 		return cmtDao.cmtPayInsert(cmtPayVO);
 	}
}
