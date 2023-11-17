package cmt.dao;

import java.util.List;

import cmt.vo.CmtBkVO;
import cmt.vo.CmtBuyVO;
import cmt.vo.CmtPayVO;
import cmt.vo.CmtVO;
import comm.dao.MyBatisDao;

public class CmtDao extends MyBatisDao {
    
    private static CmtDao instance;
    
    private CmtDao() {}
    
    public static CmtDao getInstance() {
        if (instance == null)
            instance = new CmtDao();
        return instance;
    }
    
    public CmtVO getTicket(String cmtCd) {
        return selectOne("cmt.getCmt", cmtCd);
    }
    
    public int createCmt(CmtVO cmtVO) {
        return insert("cmt.createCmt", cmtVO);
    }
    
    public CmtVO getCmtByCd(String cmtCd) {
        return selectOne("cmt.getCmtByCd", cmtCd);
    }
    
    public List<CmtVO> getAllCmt() {
        return selectList("cmt.getAllCmt");
    }
    
	// 1) CMT_BUY(memId)
	public int cmtBuyInsert(CmtBuyVO cmtBuyVO) {
		return insert("cmt.cmtBuyInsert", cmtBuyVO);
	}

	// 2) CMT_BK(cmtbCd(1)), cmtCd, cmtNum)
	public int cmtBkInsert(CmtBkVO cmtBkVO) {
		return insert("cmt.cmtBkInsert", cmtBkVO);
	}

	// 3) CMT_PAY(cmtpMh, cmtpSum, cmtbCd(1), cmtDate)
	public int cmtPayInsert(CmtPayVO cmtPayVO) {
		return insert("cmt.cmtPayInsert", cmtPayVO);
	}
}
