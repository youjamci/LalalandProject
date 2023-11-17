package lala.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import lala.service.INewsService;
import lala.service.NewsServiceImpl;

@WebServlet("/news/delete.do")
public class NewsDeleteController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//디테일컨텐트jsp에서 삭제버튼 클릭하면 공지코드가 넘어옴
		String notiCd = req.getParameter("notiCd");
		
		INewsService newsService = NewsServiceImpl.getInstance();
		
		int cnt = newsService.deleteNewsSV(notiCd);
		
		String msg ="";
	
		if(cnt>0) {
			 msg ="success";
		
		}else {
			msg ="fail";
		}
		
		HttpSession httpSession = req.getSession();
		httpSession.setAttribute("msg", msg);
	
		resp.sendRedirect(req.getContextPath() +"/news/main.do");
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
		super.doPost(req, resp);
	}
	
}
