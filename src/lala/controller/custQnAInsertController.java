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

import lala.service.ICustQnaService;
import lala.service.INewsService;
import lala.service.NewsServiceImpl;
import lala.service.custQnaServiceImpl;
import lala.vo.NewsVO;
import lala.vo.customerQnaVO;

//web.xml에서 설정하거나 어노테이션(@WebServlet)해도 됨.
@MultipartConfig
@WebServlet(value = "/qna/userinsert.do")
public class custQnAInsertController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
	// jsp화면으로 포워딩 처리하기 // 서블릿에서 요청이 오고 요청을 보내는 객체
	RequestDispatcher rd = req.getRequestDispatcher("/views/qna/custQnaInsert.jsp");
	rd.forward(req, resp);

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	req.setCharacterEncoding("UTF-8");	
	
	
	//1.요청 파라미터 정보 가져오기	
	String qTitle = req.getParameter("qTitle");
	String qContent = req.getParameter("qContent");
	
	String memId = (String) req.getSession().getAttribute("loginCode");
	req.setAttribute("loginCode", memId);

	System.out.println("인서트 컨트롤러에서 온 아이디 세션 : " + memId );
	//String qImg = req.getParameter("qImg");
	String qSort = req.getParameter("qSort");
	
	// 2. 서비스 객체 생성하기
	ICustQnaService custService = custQnaServiceImpl.getInstance();
	
	
	//3.  글 등록
	customerQnaVO ctv = new customerQnaVO(memId, qSort, qTitle, qContent);
		
	int cnt = custService.insertQnaSV(ctv);
		
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
		
		
		//4. 고객센터 메인 화면 으로 이동
		resp.sendRedirect(req.getContextPath() + "/qna/usermain.do?msg=" + 
				URLEncoder.encode(msg, "UTF-8"));
		
	}
}
