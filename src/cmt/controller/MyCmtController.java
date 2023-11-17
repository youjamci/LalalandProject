package cmt.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cmt.service.CmtPayService;
import cmt.vo.CmtPayVO;

@WebServlet("/mypage/cmt.do")
public class MyCmtController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession httpSession = req.getSession();
		String memId = (String) httpSession.getAttribute("loginCode");
		
		CmtPayService cmtpService = CmtPayService.getInstance();
		
		String cmtbCd = req.getParameter("cmtbCd");
		if(cmtbCd != null) {
			cmtpService.refundCMTPay(cmtbCd);
		}
		
		List<CmtPayVO> myCmtpList = cmtpService.showMyCMTicketPay(memId);
		
		req.setAttribute("myCmtpList", myCmtpList);
		req.getRequestDispatcher("/views/ticket/mycmt.jsp").forward(req, resp);
	}
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
