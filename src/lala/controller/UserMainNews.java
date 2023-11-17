package lala.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import lala.service.INewsService;
import lala.service.NewsServiceImpl;
import lala.vo.NewsVO;


@WebServlet(value = "/news/umain.do")	
//value타입 요소만 있다면 생략가능(안써도 됨)
public class UserMainNews extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		//getAttribute()는 set- 사용했을 때만 사용함
				
		//1. 서비스 생성
		INewsService newsService = NewsServiceImpl.getInstance();
		
		//2. 뉴스공지글 모든 내역 (MemberService와 Dao에 getMember메서드를 구현해놓음)
		List<NewsVO> newsList = newsService.getAllNewsSV();	
		
		
	
		//3. 요청객체에 데이터 저장 
		req.setAttribute("newsList", newsList);
		
		
		//4. 뉴스공지 메인 전체목록 화면으로 전달
		
		
		// 사용자 공지메인<그냥 목록 보기만>
		req.getRequestDispatcher("/views/useInfo/UserNewsMain.jsp").forward(req, resp);
		
		
		

	}
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


	}
	

}
