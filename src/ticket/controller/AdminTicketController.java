package ticket.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ticket.service.TicketPayService;
import ticket.vo.TicketPayVO;

@WebServlet("/adminpage/ticket.do")
public class AdminTicketController extends HttpServlet{

		@Override
		protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			
			TicketPayService ticketPayService = TicketPayService.getInstance();
			
			List<TicketPayVO> ticketPayList = ticketPayService.showAllTicketPay();

		
			req.setAttribute("ticketPayList", ticketPayList);
			req.getRequestDispatcher("/views/ticket/adminticket.jsp").forward(req, resp);
		}
		
		@Override
		protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
		}
	
	}
