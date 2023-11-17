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
import goods.service.ZzimService;
import goods.vo.GoodsVO;
import goods.vo.ZzimVO;

@WebServlet("/goods/main.do")
public class GoodsController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		GoodsService goodsService = GoodsService.getInstance();
		List<GoodsVO> goodsList = goodsService.showSalesGoods();
		req.setAttribute("goodsList", goodsList);
		
		for(GoodsVO gd : goodsList) {
			System.out.println(gd);
		}
		
		String gdSortCode = req.getParameter("gdSortCode");
		if(gdSortCode != null && !gdSortCode.equals("X")) {
			List<GoodsVO> sortList = goodsService.showSalesGoodsSort(gdSortCode);
			req.setAttribute("sortList", sortList);
		}
		
		HttpSession httpSession = req.getSession();
		String memId = (String) httpSession.getAttribute("loginCode");
		
		ZzimService zzimService = ZzimService.getInstance();
				
		String gdCd = req.getParameter("gdCd");
		if(memId != null && gdCd != null) {
			ZzimVO zzimVO = new ZzimVO(gdCd, memId);
			System.out.println(gdCd);
			int result = zzimService.removeZzim(zzimVO); // 찜 해제
			System.out.println(result);
			if(result == 0) { // 찜 해제할 일이 없다면 찜 추가
				result = zzimService.addZzim(zzimVO);
			}
			
			String msg = null;
			if(result > 0) {
				msg = "성공";
			}
			
			req.setAttribute("msg", msg);
		}
		
		if(memId != null) {
			List<GoodsVO> zzimList = zzimService.showMyZzim(memId);
			req.setAttribute("zzimList", zzimList);
		}

		req.getRequestDispatcher("/views/goods/goodsmain.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}

// 상품을 담고 구매하기 버튼눌렀을때