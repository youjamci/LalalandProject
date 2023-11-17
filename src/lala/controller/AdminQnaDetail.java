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
import lala.service.INewsService;
import lala.service.NewsServiceImpl;
import lala.service.custQnaServiceImpl;
import lala.vo.NewsVO;
import lala.vo.customerQnaVO;

@WebServlet(value = "/qna/adminDetail.do")	
public class AdminQnaDetail extends HttpServlet{

	
	/*
	 * doGet은  URL에 파라미터를 포함하여 서버로 데이터를 전송하는 방식
	 * 링크를 클릭하거나 엔터를 치거나 함
	 * */
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
	
		//회원아이디 세션에서 가져오기
		
		String qCd = req.getParameter("qCd");
		
		//jsp파일에서 주소가 잘못되었음.(다오임플에서도 qCd가 없었음)
		System.out.println("디테일 컨트롤러 에서 문의 코드 : " + qCd);
		
		String memId = (String) req.getSession().getAttribute("loginCode");
		req.setAttribute("loginCode", memId);
		System.out.println("디테일 컨트롤러에서 세션 아이디: " +  memId);
		
		//String qSort = req.getParameter("qSort");
		
		/*
		 * 관리자 아이디를 세션에 저장해서 NewsDetailContent.jsp파일로 보냄 String adminId = "ad001";
		 * req.setAttribute("adminId", adminId);
		 */
		
		//1. 서비스 생성
		ICustQnaService custService = custQnaServiceImpl.getInstance();
	
		
		//2.고객센터 내용 하나만 조회
		customerQnaVO cqv  = custService.getQnaSV(qCd);

		
		//3. 요청객체에 데이터 저장 
		req.setAttribute("cqv", cqv);
		
		
		//4. 큐엔에이 디테일로 전달
		req.getRequestDispatcher("/views/qna/adminQnaDetail.jsp").forward(req, resp);
	
	}
	
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


	}
	
}
