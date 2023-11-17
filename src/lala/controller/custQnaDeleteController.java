package lala.controller;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import lala.service.ICustQnaService;
 import lala.service.custQnaServiceImpl;

@WebServlet("/qna/userdelete.do")
public class custQnaDeleteController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String qCd = req.getParameter("qCd");
		System.out.println("삭제 컨트롤러에서 문의 코드: " + qCd);

		//1. 서비스 생성
		ICustQnaService custService = custQnaServiceImpl.getInstance();		
		
		int cnt = custService.deleteQnaSV(qCd);
		
		String msg ="";
	
		if(cnt>0) {
			 msg ="success";
		
		}else {
			msg ="fail";
		}
		
		HttpSession httpSession = req.getSession();
		httpSession.setAttribute("msg", msg);
	
		resp.sendRedirect(req.getContextPath() +"/qna/usermain.do?msg=" + 
							URLEncoder.encode(msg, "UTF-8"));
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
		super.doPost(req, resp);
	}
	
}
