package ticket.service;

import ticket.dao.TicketDao;
import ticket.vo.TicketBkVO;
import ticket.vo.TicketBuyVO;
import ticket.vo.TicketPayVO;

public class TicketService {
	private static TicketService instacnce = new TicketService();
    private 	   TicketService() {}
    public static TicketService getInstance() {return instacnce;}
    
    TicketDao ticketDao = TicketDao.getInstance();
	
    
    // 1) TK_BUY(memId)
 	public int tkBuyInsert(TicketBuyVO ticketBuyVO) {
 		return ticketDao.tkBuyInsert(ticketBuyVO);
 	}

 	// 2) TK_BK(tkbCd(1)), tkCd, tkNum, tkDate)
 	public int tkBkInsert(TicketBkVO ticketBkVO) {
 		return ticketDao.tkBkInsert(ticketBkVO);
 	}

 	// 3) TK_PAY(tkpMh, tkpSum, tkbCd(1))
 	public int tkPayInsert(TicketPayVO ticketPayVO) {
 		return ticketDao.tkPayInsert(ticketPayVO);
 	}
}
