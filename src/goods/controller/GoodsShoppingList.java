package goods.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import goods.service.GdPayService;
import goods.service.GoodsService;
import goods.vo.GdBuyVO;
import goods.vo.GoodsVO;

@WebServlet(value="/goods/shoppinglist.do")
public class GoodsShoppingList extends HttpServlet{

	GoodsService goodsService = GoodsService.getInstance();
	GdPayService gdPayService = GdPayService.getInstance();
	
	// 장바구니 품목 삭제작업하는 코드 넣어줘야함 (필요 변수 : memId , gdCd)
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession httpSession = req.getSession();
		String memId = (String)httpSession.getAttribute("loginCode");
		
		String gdCd = req.getParameter("gdCd"); // gdCd: 굿즈코드
		System.out.println("gdCd : " + gdCd);
		
		GdBuyVO gdBuyVO = new GdBuyVO(); // 굿즈구매 VO
		gdBuyVO.setMemId(memId);

		System.out.println(gdCd);

		String gdbCd = goodsService.existGdbCd(gdBuyVO); // 굿즈구매코드
		System.out.println("gdbCd : " + gdbCd);
		
		httpSession.setAttribute("gdCd", gdCd);

		
		List<GoodsVO> shoppingList = goodsService.memberShoppingList(gdBuyVO);
		
		req.setAttribute("shoppingList", shoppingList); // jsp에서 쓸수있게 set
		
		req.getRequestDispatcher("/views/goods/goodsbucket.jsp").forward(req, resp);
		
		resp.setContentType("text/plain");  // Set content type of the response so that jQuery knows what it can expect.
		resp.setCharacterEncoding("UTF-8"); // You want world domination, huh?
		resp.getWriter().write("success");       // Write response body.

	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		doGet(req, resp);
		
	}

	
}
