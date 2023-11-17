package member.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.service.IMemberService;
import member.service.MemberServiceImpl;

@WebServlet("/FindId")
public class FindId extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private IMemberService memberService;

    public FindId() {
        memberService = MemberServiceImpl.getInstance();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//서블릿에 진입했으므로 실제 이동하고자 하는 경로 WEB-INF/secureIndex.jsp로 이동하기
		RequestDispatcher disp = request.getRequestDispatcher("WEB-INF/secureIndex.jsp");
		disp.forward(request, response);
	}
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 한글깨지니까
    	request.setCharacterEncoding("utf-8");
    	String name = request.getParameter("mem_name");
        String email = request.getParameter("mem_email");

        Map<String, Object> map = new HashMap<>();
        map.put("mName", name);
        map.put("mEmail", email);

        String foundId;
        foundId = memberService.IdChk(map);

        request.setAttribute("foundId", foundId);

        RequestDispatcher dispatcher = request.getRequestDispatcher("/views/login/FindId.jsp");
        dispatcher.forward(request, response);
    }
}
