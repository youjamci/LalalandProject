package ticket.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ticket.service.TicketPayService;
import ticket.service.TicketService;

@WebServlet("/ticket/pay.do")
public class TicketPayController extends HttpServlet {
	  
	TicketService ticketService = TicketService.getInstance();
	TicketPayService ticketPayService = TicketPayService.getInstance();
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse resp) throws ServletException, IOException {
		String tkpCd = request.getParameter("tkpCd");
		String tkpMh = request.getParameter("tkpMh");
		String tkpSum = request.getParameter("tkpSum");
		String tkpDate = request.getParameter("tkpDate");
		String tkbCd = request.getParameter("tkbCd");
	
	}
}