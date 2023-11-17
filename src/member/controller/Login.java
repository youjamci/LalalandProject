package member.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.service.IMemberService;
import member.service.MemberServiceImpl;

@WebServlet("/Login.do")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Login() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//서블릿에 진입했으므로 실제 이동하고자 하는 경로 WEB-INF/secureIndex.jsp로 이동하기
//		request.getRequestDispatcher("views/login/login.jsp").forward(request, response); //해당 위치로 페이지 변경 // 이걸 살리면 로그인이 안되고
//		disp.forward(request, response);
		doPost(request, response); // 이걸 살리면 메인을 Login.do로 못하네
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String uId = request.getParameter("userId");
		String uPw = request.getParameter("userPw");
		
		System.out.println("넘어온 유저정보>>" + uId + " / " + uPw);
		
		//MVC2 =>	Model-vo에 담겨 service에서 처리되는 데이터, 
		//			View- jsp에서 최종 응답 가공,
		//			Controller-servlet의 역할이 나눠져 각자의 역할을 진행하는 구조
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("mId", uId);
		map.put("mPw", uPw);
		
		//서비스 객체가 필요 - 싱글톤 방식
		IMemberService service = MemberServiceImpl.getInstance();
		String memId = service.loginChk(map);

		System.out.println("db조회 결과 >>" + memId);
		
		if(memId != null) {
			//세션에 정보를 담아서 메인페이지로 이동
			HttpSession session = request.getSession();
			session.setAttribute("loginCode", memId);
			
			// root 적용시 >> contextroot하위 webContent위치를 나타냄 (=index페이지로 이동..) // 이게 메인임
			request.getRequestDispatcher("/").forward(request, response); //해당 위치로 페이지 변경
			
		}else {
			//기존 페이지(login.html)에 머무르기..
//			response.sendRedirect("login.jsp"); //새로운 url을 요청
			request.setAttribute("msg", "실패");
			request.getRequestDispatcher("views/login/login.jsp").forward(request, response);			
		}
	
	}

}
