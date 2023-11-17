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

@WebServlet(value = "/goods/deleteShoppingList.do")
public class GoodsShoppingListDeleteController extends HttpServlet{
	
	GdPayService gdPayService = GdPayService.getInstance();
	GoodsService goodsService = GoodsService.getInstance();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession httpSession = req.getSession();
		String memId = (String)httpSession.getAttribute("loginCode");
		
		String gdCd = req.getParameter("gdCd");
		System.out.println("gdCd : " + gdCd);
		
		
		GdBuyVO gdBuyVO = new GdBuyVO();
		gdBuyVO.setMemId(memId);
		String gdbCd = goodsService.existGdbCd(gdBuyVO); // 굿즈구매코드
		
		gdBuyVO.setGdbCd(gdbCd);
		gdBuyVO.setGdCd(gdCd);
		
		int deleteShoppingList = 0;
		
		if(gdCd != null && !gdCd.isEmpty() && gdCd != "") {
			deleteShoppingList = gdPayService.deleteShoppingList(gdBuyVO);
		}
		
		if(deleteShoppingList > 0) {
			System.out.println("장바구니 품목 삭제작업 성공!!");
			
		}else {
			System.out.println("삭제작업 실패!!");
		}
		
		List<GoodsVO> deleteshoppingList = goodsService.memberShoppingList(gdBuyVO);
		
		req.setAttribute("deleteshoppingList", deleteshoppingList); // jsp에서 쓸수있게 set
		
		req.getRequestDispatcher("/views/goods/goodsbucket.jsp").forward(req, resp);
		
//		resp.sendRedirect(req.getContextPath() + "/views/goods/goodsbucket.jsp");
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		doGet(req, resp);
		
	}
	
	
}
