package goods.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import goods.service.GoodsService;
import goods.vo.GdBuyVO;
import goods.vo.GoodsVO;

@WebServlet(value = "/goods/mypageshoppinglist.do")
public class MyPageShoppingListController extends HttpServlet{

	GoodsService goodsService = GoodsService.getInstance();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HttpSession httpSession = req.getSession();
		String memId = (String)httpSession.getAttribute("loginCode");
		
		GdBuyVO gdBuyVO = new GdBuyVO();
		gdBuyVO.setMemId(memId);
		
		List<GoodsVO> goodsShoppingList = goodsService.memberShoppingList(gdBuyVO);
		
		req.setAttribute("shoppingList", goodsShoppingList);
		
		req.getRequestDispatcher("/views/goods/goodsbucket.jsp").forward(req, resp);
		
		resp.setContentType("text/plain");  
		resp.setCharacterEncoding("UTF-8"); 
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		doGet(req, resp);
		
	}
	
}
