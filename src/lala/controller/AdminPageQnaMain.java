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
import lala.service.custQnaServiceImpl;
import lala.vo.customerQnaVO;

@WebServlet("/adminpage/adminMain.do")
public class AdminPageQnaMain extends HttpServlet{
		
	
	//보통 데이터를 조회할 때
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//아이디세션 보냄
		String memId = (String)req.getSession().getAttribute("loginCode");
		req.setAttribute("loginCode", memId);

		System.out.println("관리자 메인에서 온 세션아이디 : " + memId );
		
		// ad001임
		
		
		//1.  서비스 객체 생성
		ICustQnaService custSv = custQnaServiceImpl.getInstance();
		
		//2. 모든 고객센터 글 내용
		List<customerQnaVO> qnaList = custSv.getAllQnaListSV(); 
		
		//3. 요청객체에 저장
		req.setAttribute("qnaList", qnaList);
		
		//4. 고객센터 메인 화면으로 전달함.
		//현재의 서블릿에서 jsp파일로 요청을 전달.
		req.getRequestDispatcher("/views/qna/adminPageQnaMain.jsp").forward(req, resp);
		
	}
	
	
	//데이터 등록, 수정, 삭제를 할 때
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		super.doPost(req, resp);
	}

}
