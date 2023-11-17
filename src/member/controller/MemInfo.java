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
import javax.servlet.http.HttpSession;

import member.service.IMemberService;
import member.service.MemberServiceImpl;
import member.vo.MemberVO;

@WebServlet("/views/login/memInfo.do")
public class MemInfo extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private IMemberService memService;

    public MemInfo() {
        super();
        memService = MemberServiceImpl.getInstance();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // 세션에서 로그인된 회원의 아이디를 가져옴
        HttpSession session = request.getSession();
        String memId = (String) session.getAttribute("loginCode");
        System.out.println("로그인코드: " + memId);

        memService = MemberServiceImpl.getInstance();
        
        try {
			MemberVO mv = memService.MemInfo(memId);
			request.setAttribute("mv", mv);
			System.out.println("회원 정보: " + mv);
			request.getRequestDispatcher("/views/login/memInfo.jsp").forward(request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}
