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

import lala.service.ICustQnaService;
import lala.service.INewsService;
import lala.service.NewsServiceImpl;
import lala.service.custQnaServiceImpl;
import lala.vo.NewsVO;
import lala.vo.customerQnaVO;

@MultipartConfig
@WebServlet(value = "/qna/userupdate.do")
public class custQnaUpdateController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String qCd = req.getParameter("qCd");
		System.out.println("수정컨트롤러에서 온 문의 번호: " +qCd);
		
		String memId = (String)req.getSession().getAttribute("loginCode");
		req.setAttribute("loginCode", memId);
		System.out.println("수정컨트롤에서 가져온 세션 아이디:" +memId);
		
		
		// 1. 서비스 생성
		ICustQnaService custService = custQnaServiceImpl.getInstance();

		// 2.뉴스공지 내용 조회
		customerQnaVO cqv = custService.getQnaSV(qCd);
			
		// 3. 요청객체에 데이터 저장
		req.setAttribute("cqv", cqv);

		// 4. 뉴스 업데이트로 전달
		req.getRequestDispatcher("/views/qna/custQnaUpdate.jsp").forward(req, resp);

	}

	//수정될 문의 유형, 제목과 내용, 번호를 받음
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//게시판 제목이 깨져..
		req.setCharacterEncoding("UTF-8");	

		
		// 1.요청 파라미터 정보 가져오기
		String qCd = req.getParameter("qCd");
		String qSort = req.getParameter("qSort");
		String qTitle = req.getParameter("qTitle");
		String qContent = req.getParameter("qContent");
		String memId = (String)req.getSession().getAttribute("loginCode");
				
		
		// 2. 서비스 객체 생성하기
		ICustQnaService custService = custQnaServiceImpl.getInstance();

		
		// 3. 뉴스공지 글 수정
		customerQnaVO ctv = new customerQnaVO(qSort, qTitle, qContent);
		ctv.setqCd(qCd);
		ctv.setMemId(memId);
		
		int cnt = custService.updateQnaSV(ctv);

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

		// 4. 수정이 되면 큐엔에이 게시판 목록화면으로 이동
		resp.sendRedirect(req.getContextPath() + "/qna/usermain.do?msg=" + 
				URLEncoder.encode(msg, "UTF-8"));

	}

}
