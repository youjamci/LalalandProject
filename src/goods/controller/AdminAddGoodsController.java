package goods.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import goods.service.GoodsService;
import goods.vo.GoodsVO;

@MultipartConfig
@WebServlet("/goods/adminadd.do")
public class AdminAddGoodsController extends HttpServlet {
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/views/goods/adminaddgoods.jsp").forward(req, resp);
	}


	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		GoodsVO gd = new GoodsVO();
		GoodsService goodsService = GoodsService.getInstance();
		
		gd = goodsService.uploadFile(req);
		
		gd.setGdSortCode(req.getParameter("gdSortCode"));
		gd.setGdName(req.getParameter("gdName"));
		gd.setGdInfo(req.getParameter("gdInfo"));
		gd.setGdPrice(Integer.parseInt(req.getParameter("gdPrice")));
		gd.setGdStock(Integer.parseInt(req.getParameter("gdStock")));

		if(req.getParameter("gdChk") == null) {
			gd.setGdChk("판매중단");
		} else {
			gd.setGdChk(req.getParameter("gdChk"));
		}
		
		System.out.println("인서트 준비 완료 : " + gd);
		
		int result = goodsService.addGoods(gd);
		
		String msg = null;
		if(result > 0) {
			msg = "성공";
		}
		
		HttpSession httpSession = req.getSession();
		httpSession.setAttribute("msg", msg);
		resp.sendRedirect(req.getContextPath() + "/goods/adminmain.do");
	}

}
