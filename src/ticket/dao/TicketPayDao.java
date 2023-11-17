package ticket.dao;

import java.util.List;

import comm.dao.MyBatisDao;
import ticket.vo.TicketPayVO;

public class TicketPayDao extends MyBatisDao{
	
	private static TicketPayDao instance;
	private TicketPayDao() {}
	public static TicketPayDao getInstance() {
		if(instance == null) instance = new TicketPayDao();
		return instance;
	}

	public List<TicketPayVO> getAllTicketPay() {
		return selectList("ticketpay.getAllTicketPay");
	}

	public List<TicketPayVO> getMyTicketPay(String memId) {
		return selectList("ticketpay.getMyTicketPay", memId);
	}
	
	public List<TicketPayVO> tkpCdTicket(String tkpCd) { // 연결안됨
		return selectList("ticketpay.tkpCdTicket", tkpCd);
	}

	public int cancleTicketPay(String tkbCd) {
		return update("ticketpay.cancleTicketPay", tkbCd);
	}
	

}
