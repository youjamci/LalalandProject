package goods.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import goods.service.GoodsService;
import goods.vo.GoodsVO;

@WebServlet("/goods/adminmain.do")
public class AdminGoodsController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		GoodsService goodsService = GoodsService.getInstance();
		List<GoodsVO> goodsList = goodsService.showAllGoods();
		req.setAttribute("goodsList", goodsList);
		
		for(GoodsVO gd : goodsList) {
			System.out.println(gd);
		}
		
		String gdSortCode = req.getParameter("gdSortCode");
		System.out.println(gdSortCode);
		if(gdSortCode != null && !gdSortCode.equals("X")) {
			List<GoodsVO> sortList = goodsService.showAllGoodsSort(gdSortCode);
			req.setAttribute("sortList", sortList);
		}

		req.getRequestDispatcher("/views/goods/admingoodsmain.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
