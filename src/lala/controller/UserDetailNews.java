package lala.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import lala.service.INewsService;
import lala.service.NewsServiceImpl;
import lala.vo.NewsVO;

@WebServlet(value = "/news/udetail.do")	
public class UserDetailNews extends HttpServlet{

	INewsService newsService = NewsServiceImpl.getInstance();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		
		String notiCd = req.getParameter("notiCd");
		System.out.println("공지번호는 어디에서? " + notiCd);
	
		// 세션 가져오기
		HttpSession httpSession = req.getSession();
		String memId = (String)httpSession.getAttribute("loginCode");
		
		NewsVO newsVO = new NewsVO();
		newsVO.setAdminId(memId);
		
		//2.뉴스공지 내용 조회
		newsVO  = newsService.getNewsSV(notiCd);
		
		//3. 요청객체에 데이터 저장 
		httpSession.setAttribute("newsVO", newsVO);
		
		//4. 뉴스 디테일 컨텐트로 전달
		req.getRequestDispatcher("/views/useInfo/UserNewsDetail.jsp").forward(req, resp);
	
	}
	
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


	}
	
	
	
	
}
