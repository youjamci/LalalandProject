package goods.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import goods.service.GdPayService;
import goods.service.GoodsService;
import goods.service.ZzimService;
import goods.vo.GdPayVO;
import goods.vo.GoodsVO;
import goods.vo.ZzimVO;

@WebServlet("/goods/adminsales.do")
public class AdminGdSalesController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		GdPayService gdPayService = GdPayService.getInstance();
		List<GoodsVO> gdSalesList = gdPayService.showGoodsSales();
		req.setAttribute("gdSalesList", gdSalesList);

		req.getRequestDispatcher("/views/goods/admingoodssales.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}