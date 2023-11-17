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


@WebServlet("/mypage/content.do")
public class MyContentController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession httpSession = req.getSession();
		String memId = (String) httpSession.getAttribute("loginCode");
		
		ContentService ctService = ContentService.getInstance();
		
		String ctrCd = req.getParameter("ctrCd");
		String ctdCd = req.getParameter("ctdCd");
		if(ctrCd != null && ctdCd != null) {
			ContentVO contentVO = new ContentVO();
			contentVO.setCtrCd(ctrCd);
			contentVO.setCtdCd(ctdCd);
			ctService.cancleCtRsv(contentVO);
		}
		
		List<ContentVO> myCtList = ctService.myCt(memId);
		
		req.setAttribute("myCtList", myCtList);
		req.getRequestDispatcher("/views/ticket/mycontent.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
