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

@WebServlet("/goods/detail.do")
public class GoodsDetailController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String gdCd = req.getParameter("gdCd");

		GoodsService goodsService = GoodsService.getInstance();
		GoodsVO gd = goodsService.showDetailGoods(gdCd);

		req.setAttribute("goodsDetail", gd);
		req.getRequestDispatcher("/views/goods/goodsdetail.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
