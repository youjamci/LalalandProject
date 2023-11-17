package lala.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import lala.service.AttrServiceImpl;
import lala.service.IAttrService;
import lala.vo.attractionVO;


//web.xml에서 설정하거나 어노테이션(@WebServlet)해도 됨. 
@WebServlet(value = "/attraction.do")
public class AttrController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// /lala/attraction.do?zoneCd=z1
		//요청URL : /lala/attraction.do
		//요청파라미터(request객체에 들어있음) : zoneCd=z1
		String zoneCd = req.getParameter("zoneCd");//z1
		if(zoneCd==null) {
			zoneCd = "";
		}
		System.out.println("zoneCd : " + zoneCd);
		
		//1. 서비스 생성하기
		IAttrService attrService =AttrServiceImpl.getInstance();
		
		
		//2. 이미지 조회하기
		attractionVO vo = new attractionVO();
		vo.setZoneCd(zoneCd);
		
		List<attractionVO> attrList = attrService.getAttraction(vo);

		
		//3. jsp가 사용할 수 있도록 요청객체에 저장하기(응답하기 전까지는 데이터 살아있음)
		req.setAttribute("attrList", attrList);
		
 
		
		//4. jsp화면으로 포워딩 처리하기    // 서블릿에서 요청이 오고 요청을 보내는 객체
		RequestDispatcher rd = req.getRequestDispatcher("views/enjoy/attraction.jsp");
		rd.forward(req, resp);

	}
	
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);

	}
}
