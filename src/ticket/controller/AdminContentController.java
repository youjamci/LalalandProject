package ticket.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ticket.service.ContentService;
import ticket.vo.ContentVO;


@WebServlet("/adminpage/content.do")
public class AdminContentController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		ContentService ctService = ContentService.getInstance();
		
		List<ContentVO> CtList = ctService.getAllCtLeft();
		
		req.setAttribute("CtList", CtList);
		req.getRequestDispatcher("/views/ticket/admincontentrsv.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
