package lala.controller;

import java.io.IOException;
import java.net.URLEncoder;
import java.sql.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import lala.service.AdminQnaServiceImpl;
import lala.service.IAdminQnaService;
import lala.service.ICustQnaService;
import lala.service.INewsService;
import lala.service.NewsServiceImpl;
import lala.service.custQnaServiceImpl;
import lala.vo.NewsVO;
import lala.vo.customerQnaVO;

//web.xml에서 설정하거나 어노테이션(@WebServlet)해도 됨.
@MultipartConfig
@WebServlet(value = "/qna/adminInsert.do")
public class AdminQnAInsert extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		

		String adminId = (String) req.getSession().getAttribute("loginCode");
		req.setAttribute("loginCode", adminId);
		System.out.println("관리자 인서트에서 온 아이디 세션 : " + adminId);

		
		String qCd = req.getParameter("qCd");
		System.out.println("doget에서 qCd : "  + qCd);
		
		
		String aContent = req.getParameter("aContent");
		
		IAdminQnaService adminService = AdminQnaServiceImpl.getInstance();
		customerQnaVO cqv = adminService.getQnaSV(qCd);
		req.setAttribute("cqv", cqv);
		
	
		// jsp화면으로 포워딩 처리하기 // 서블릿에서 요청이 오고 요청을 보내는 객체
		RequestDispatcher rd = req.getRequestDispatcher("/views/qna/adminQnaInsert.jsp");
		rd.forward(req, resp);

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		req.setCharacterEncoding("UTF-8");

		// 1.요청 파라미터 정보 가져오기
		String qCd = req.getParameter("qCd");
		System.out.println("doPost에서 qCd:" +qCd);
		
		String adminId = (String)req.getSession().getAttribute("loginCode");
		System.out.println("dopost 관리자 아이디 : " +adminId);
		
		//String memId = (String)req.getSession().getAttribute("loginCode");

				
		String aContent = req.getParameter("aContent");
		System.out.println("문의내용 있니 ?? "+ aContent);

		
		
		// 2. 서비스 객체 생성하기
		IAdminQnaService adminService = AdminQnaServiceImpl.getInstance();
		
		// 3. 답변 등록
		customerQnaVO ctv = new customerQnaVO();
		ctv.setAdminId(adminId);		
		ctv.setaContent(aContent);
		ctv.setqCd(qCd);
		
		
		int cnt = adminService.answerInsertSV(ctv);

		String msg = "";

		if (cnt > 0) {
			// 성공
			msg = "ok";
		} else {
			// 실패
			msg = "fail";
		}

		HttpSession httpSession = req.getSession();
		httpSession.setAttribute("msg", msg);

		// 4. 고객센터 메인 화면 으로 이동
		resp.sendRedirect(req.getContextPath() + "/qna/adminMain.do?=msg" + 
				URLEncoder.encode(msg, "UTF-8"));

	}
}
