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
@WebServlet("/goods/adminmodify.do")
public class AdminModifyGoodsController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String gdCd = req.getParameter("gdCd");

		GoodsService goodsService = GoodsService.getInstance();
		GoodsVO gd = goodsService.showDetailGoods(gdCd);

		req.setAttribute("goodsDetail", gd);
		req.getRequestDispatcher("/views/goods/adminmodifygoods.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		GoodsVO gd = new GoodsVO();
		GoodsService goodsService = GoodsService.getInstance();
		
		gd = goodsService.uploadFile(req);
		
		System.out.println("이미지 다녀온 후..." + gd);
		
		gd.setGdCd(req.getParameter("gdCd"));
		gd.setGdName(req.getParameter("gdName"));
		gd.setGdInfo(req.getParameter("gdInfo"));
		gd.setGdPrice(Integer.parseInt(req.getParameter("gdPrice")));
		gd.setGdStock(Integer.parseInt(req.getParameter("gdStock")));
				
		if(gd.getGdImg() == null) {
			gd.setGdImg(req.getParameter("orgnGdImg"));
		}
		if(gd.getGdDimg() == null) {
			gd.setGdDimg(req.getParameter("orgnGdDimg"));
		}
		
		System.out.println(gd);
		
		if(req.getParameter("gdChk") == null) {
			gd.setGdChk("판매중단");
		} else {
			gd.setGdChk(req.getParameter("gdChk"));
		}
				
		System.out.println(gd);
		
		int result = goodsService.modifyGoods(gd);
		
		String msg = null;
		if(result > 0) {
			msg = "성공";
		}
		
		HttpSession httpSession = req.getSession();
		httpSession.setAttribute("msg", msg);
		resp.sendRedirect(req.getContextPath() + "/goods/adminmain.do");
	}
}
