package lala.controller;

import java.io.IOException;
import java.net.URLEncoder;
 
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

@MultipartConfig
@WebServlet(value = "/news/update.do")
public class NewsUpdateController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String notiCd = req.getParameter("notiCd");
		
		// 1. 서비스 생성
		INewsService newsService = NewsServiceImpl.getInstance();
		
		// 2.뉴스공지 내용 조회
		NewsVO nv = newsService.getNewsSV(notiCd);

		// 3. 요청객체에 데이터 저장
		req.setAttribute("nv", nv);

		// 4. 뉴스 업데이트로 전달
		req.getRequestDispatcher("/views/useInfo/NewsUpdateForm.jsp").forward(req, resp);

	}

	//수정될 제목과 내용, 번호를 받음
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//게시판 제목이 깨져..
		req.setCharacterEncoding("UTF-8");	

		
		// 1.요청 파라미터 정보 가져오기
		String notiTitle = req.getParameter("notiTitle");
		String notiImg = req.getParameter("notiImg");
		String notiCd = req.getParameter("notiCd");
		
		// 2. 서비스 객체 생성하기
		INewsService newsService = NewsServiceImpl.getInstance();
		NewsVO nv = new NewsVO();
		
		nv = newsService.uploadFile(req);
		nv.setNotiTitle(notiTitle);
		nv.setNotiCd(notiCd);

		int cnt = newsService.updateNewsSV(nv);

		String msg = "";

		if (cnt > 0) {
			// 성공
			msg = "okay";
		} else {
			// 실패
			msg = "fail";
		}

		HttpSession httpSession = req.getSession();
		httpSession.setAttribute("msg", msg);

		// 4. 수정이 되면 뉴스공지 게시판 목록화면으로 이동
		resp.sendRedirect(req.getContextPath() + "/news/main.do");

	}

}
