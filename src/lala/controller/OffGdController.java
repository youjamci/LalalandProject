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
import lala.service.IOffGdService;
import lala.service.OffGdServiceImpl;
import lala.vo.OffGoodsVO;
import lala.vo.attractionVO;


//web.xml에서 설정하거나 어노테이션(@WebServlet)해도 됨. 
@WebServlet(value = "/offgdshop.do")
public class OffGdController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		
		//1. 서비스임플 클래스 객체 생성하기
		IOffGdService offgdService = OffGdServiceImpl.getInstance();
		
		
		//2. offList에 넣기
		List<OffGoodsVO> offList = offgdService.getOffGd();

		
		//3. jsp가 사용할 수 있도록 요청객체에 저장하기(응답하기 전까지는 데이터 살아있음)
		req.setAttribute("offList", offList);
		
		
		//4. jsp화면으로 포워딩 처리하기    // 서블릿에서 요청이 오고 요청을 보내는 객체
		RequestDispatcher rd = req.getRequestDispatcher("views/goods/offgdshop.jsp");
		rd.forward(req, resp);

	}
	
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);

	}
}
