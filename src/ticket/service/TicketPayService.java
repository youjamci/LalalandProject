package ticket.service;

import java.util.List;

import ticket.dao.TicketPayDao;
import ticket.vo.TicketPayVO;


public class TicketPayService {
	private TicketPayDao ticketPayDao;
	
	private static TicketPayService instance;
	private TicketPayService() {
		ticketPayDao = TicketPayDao.getInstance();
	}
	public static TicketPayService getInstance() {
		if(instance == null) instance = new TicketPayService();
		return instance;
	}
	
	public List<TicketPayVO> showAllTicketPay() {
		return ticketPayDao.getAllTicketPay();
	}
	
	public List<TicketPayVO> tkpTicket(String tkpCd) {
		return ticketPayDao.tkpCdTicket(tkpCd);
	}
	
	public List<TicketPayVO> showMyTicketPay(String memId) {
		return ticketPayDao.getMyTicketPay(memId);
	}
	
	public int refundTicketPay(String tkbCd) {
		return ticketPayDao.cancleTicketPay(tkbCd);
	}
	
}
