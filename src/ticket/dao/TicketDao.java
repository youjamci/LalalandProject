package ticket.dao;

import java.util.List;

import comm.dao.MyBatisDao;
import ticket.vo.TicketBkVO;
import ticket.vo.TicketBuyVO;
import ticket.vo.TicketPayVO;
import ticket.vo.TicketVO;

public class TicketDao extends MyBatisDao {

	private static TicketDao instance;

	private TicketDao() {
	}

	public static TicketDao getInstance() {
		if (instance == null)
			instance = new TicketDao();
		return instance;
	}

	public TicketVO getTicket(String tkCd) {
		return selectOne("ticket.getTk", tkCd);
	}

	public int createTicket(TicketVO ticketVO) {
		return insert("ticket.createTk", ticketVO);
	}

	public TicketVO getTicketByCd(String tkCd) {
		return selectOne("ticket.getTkByCd", tkCd);
	}

	public List<TicketVO> getAllTicket() {
		return selectList("ticketpay.getAllTk");
	}

	// 1) TK_BUY(memId)
	public int tkBuyInsert(TicketBuyVO ticketBuyVO) {
		return insert("ticket.tkBuyInsert", ticketBuyVO);
	}

	// 2) TK_BK(tkbCd(1)), tkCd, tkNum, tkDate)
	public int tkBkInsert(TicketBkVO ticketBkVO) {
		return insert("ticket.tkBkInsert", ticketBkVO);
	}

	// 3) TK_PAY(tkpMh, tkpSum, tkbCd(1))
	public int tkPayInsert(TicketPayVO ticketPayVO) {
		return insert("ticket.tkPayInsert", ticketPayVO);
	}
}
