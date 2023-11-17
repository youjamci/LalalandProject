package ticket.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ticket.service.TicketPayService;
import ticket.vo.TicketPayVO;

@WebServlet("/mypage/ticket.do")
public class MyTicketController extends HttpServlet {
		
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession httpSession = req.getSession();
		String memId = (String) httpSession.getAttribute("loginCode");
		
		TicketPayService tkpService = TicketPayService.getInstance();
		
		String tkbCd = req.getParameter("tkbCd");
		if(tkbCd != null) {
			tkpService.refundTicketPay(tkbCd);
		}
		
		List<TicketPayVO> myTkpList = tkpService.showMyTicketPay(memId);
		
		req.setAttribute("myTkpList", myTkpList);
		req.getRequestDispatcher("/views/ticket/myticket.jsp").forward(req, resp);
	}
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
