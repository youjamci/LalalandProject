package ticket.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ticket.service.ContentService;
import ticket.service.TicketService;
import ticket.vo.TicketBkVO;
import ticket.vo.TicketBuyVO;
import ticket.vo.TicketVO;

@WebServlet("/ticket/main.do")
public class TicketController extends HttpServlet {
	
	TicketService ticketService = TicketService.getInstance();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		super.doGet(req, resp);
	}
	@Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        
        HttpSession httpSession = req.getSession();
		String memId = (String) httpSession.getAttribute("loginCode");

		String tkCd = req.getParameter("tkCd");
		String tkNum = req.getParameter("tkNum");
		
		System.out.println(tkCd + tkNum + memId);
        
		TicketService tkService = TicketService.getInstance();

		TicketVO ticketVO = new TicketVO();
		ticketVO.setMemId(memId);		
//		ticketService.makeTkbCd(ticketVO);
		
		
		
	}
}
       