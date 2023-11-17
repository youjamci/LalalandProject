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
import member.vo.MemberVO;


@WebServlet(value = "/news/main.do")	
//value타입 요소만 있다면 생략가능(안써도 됨)
public class MainNewsListController extends HttpServlet{
	
	
	/*
	 * doGet은  URL에 파라미터를 포함하여 서버로 데이터를 전송하는 방식
	 * 링크를 클릭하거나 엔터를 치거나 해서 -> 전송함
	 * */
	@Override	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		//세션객체를 가지고옴 
		HttpSession session = req.getSession();
		
		//세션 객체에 저장된 회원 아이디를 가지고 옴
		String memId = (String)session.getAttribute("loginCode");
						
		//관리자 아이디를 세팅
		session.setAttribute("adminId", "ad001");
		
		// 회원 아이디가 있으면 
	    if (memId != null) {
	        System.out.println("회원아이디 있다고");
	    }
	       
	     	
		
		//1. 서비스 생성
		INewsService newsService = NewsServiceImpl.getInstance();

		//2. 뉴스공지글 모든 내역 
		//뉴스vo의 리스트타입으로 받음
		List<NewsVO> newsList = newsService.getAllNewsSV();	
		
	
		//3. 요청객체에 데이터 저장 
		req.setAttribute("newsList", newsList);

		
		//4. 뉴스공지 메인 전체목록 화면으로 전달
		//현재의 서블릿에서 jsp 파일로 요청을 전달
		req.getRequestDispatcher("/views/useInfo/newsMain.jsp").forward(req, resp);
		
		
		// 관리자<등록 수정 삭제> 사용자 공지메인<그냥 목록 보기만>
		

	}
	
	
	
 
	 /*
	  * 본문에 데이터를 포함하여 서버로 데이터를 전송하는 방식
	  */
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


	}
	

}
