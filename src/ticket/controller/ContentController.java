package ticket.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ticket.service.ContentService;
import ticket.vo.ContentVO;

@WebServlet("/content/res.do")
public class ContentController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doGet(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession httpSession = req.getSession();
		String memId = (String) httpSession.getAttribute("loginCode");
		
		String ctDate = req.getParameter("ctDate");
		String ctSn = req.getParameter("ctSn");
		String ctCd = req.getParameter("ctCd");
		String ctReshmA = req.getParameter("ctReshmA");
		String ctReshmK = req.getParameter("ctReshmK");
		
		System.out.println(ctDate + ctSn + ctCd + ctReshmA + ctReshmK + memId);
		
		
		ContentService ctService = ContentService.getInstance();

		ContentVO contentVO = new ContentVO();
		contentVO.setMemId(memId);		
		ctService.makeCtrCd(contentVO);
		
		contentVO.setCtSdate(ctDate);
		contentVO.setCtSn(Integer.parseInt(ctSn));
		contentVO.setCtCd(ctCd+"001");
		contentVO.setCtReshm(Integer.parseInt(ctReshmA));
		System.out.println(contentVO);
		int resA = ctService.finCtRsv(contentVO);
		
		contentVO.setCtCd(ctCd+"002");
		contentVO.setCtReshm(Integer.parseInt(ctReshmK));
		int resK = ctService.finCtRsv(contentVO);
		
		PrintWriter out = resp.getWriter();
		
		System.out.println(resA + resK);
		if(resA>0 && resK>0) {
			System.out.println("둘 다 성공");
			out.print(true); // String으로 반환...
		} else {
			System.out.println("어딘가에서 실패");
			out.print(false);
		}
	}
	
}