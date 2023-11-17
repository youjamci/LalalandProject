package lala.controller;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import lala.service.INewsService;
import lala.service.NewsServiceImpl;
import lala.vo.NewsVO;

//web.xml에서 설정하거나 어노테이션(@WebServlet)해도 됨.
@MultipartConfig
@WebServlet(value = "/news/insert.do")
public class NewsInsertController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	// jsp화면으로 포워딩 처리하기 // 서블릿에서 요청이 오고 요청을 보내는 객체
	RequestDispatcher rd = req.getRequestDispatcher("/views/useInfo/NewsInsertForm.jsp");
	rd.forward(req, resp);
	

	
	}

	
	 
	// 본문에 데이터를 포함하여 서버로 데이터를 전송하는 방식
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
	//서비스 객체를 생성	
	INewsService newsService = NewsServiceImpl.getInstance();
	
	req.setCharacterEncoding("UTF-8");	
		
	NewsVO newsVO = new NewsVO();
	newsVO = newsService.uploadFile(req);
	
	if(newsVO.getNotiImg() == null) {
		newsVO.setNotiImg("null");
	}
		
		String notiTitle = req.getParameter("notiTitle");
		String notiContent = req.getParameter("notiContent");
		String adminId = "ad001";
		
		newsVO.setAdminId(adminId);
		newsVO.setNotiTitle(notiTitle);
		newsVO.setNotiContent(notiContent);
		
		int cnt = newsService.insertNewsSV(newsVO);
		
		if(cnt > 0) {
			System.out.println("성공!!");
		} else {
			System.out.println("실패!!");
		}
	
		String msg = "";
		
		if (cnt > 0) {
			//성공
			msg = "ok"; 
		} else {
			//실패
			msg = "fail"; 
		}
		
		HttpSession httpSession = req.getSession();
		httpSession.setAttribute("msg", msg);
		
		//4.뉴스공지 게시판 목록화면으로 이동
		resp.sendRedirect(req.getContextPath() + "/news/main.do?msg=" + 
				URLEncoder.encode(msg, "UTF-8"));

	
	
	
	}
}
