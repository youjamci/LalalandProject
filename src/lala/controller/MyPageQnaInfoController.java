package lala.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import lala.service.ICustQnaService;
import lala.service.QnaService;
import lala.service.custQnaServiceImpl;
import lala.vo.customerQnaVO;

@WebServlet(value = "/mypage/qnalist.do")
public class MyPageQnaInfoController extends HttpServlet{

	QnaService qnaService = QnaService.getInstance();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		HttpSession httpSession = req.getSession();
		String memId = (String)httpSession.getAttribute("loginCode");
	
		System.out.println("세션 아이디=> " + memId);
		
		customerQnaVO cqVO = new customerQnaVO();
		cqVO.setMemId(memId);
		
		
		List<customerQnaVO> qnaList = qnaService.myPageQna(cqVO);
		
		httpSession.setAttribute("qnaList", qnaList);
		
		//서비스 생성
//		ICustQnaService custService = custQnaServiceImpl.getInstance();
//
//		String qCd = req.getParameter("qCd");
//		System.out.println("qCd " + qCd );
//		
//		customerQnaVO qnaVO = custService.getQnaSV(qCd);
//		
//		req.setAttribute("qnaVO", qnaVO);
		
		
		
		req.getRequestDispatcher("/views/qna/mypageQna.jsp").forward(req, resp);
	
	
	}

	
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
	
}
