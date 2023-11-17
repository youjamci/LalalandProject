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
import goods.vo.GdBkVO;
import goods.vo.GdBuyVO;
import goods.vo.GoodsVO;

@WebServlet(value="/goods/goodsbucketpay.do")
public class GdBucketPayController extends HttpServlet{

	GoodsService goodsService = GoodsService.getInstance();
	GdPayService gdPayService = GdPayService.getInstance();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession httpSession = req.getSession();
		String memId = (String)httpSession.getAttribute("loginCode");
				
		String[] gdNumArr = req.getParameterValues("gdNum");
		String[] gdCdArr = req.getParameterValues("gdCd");
		String[] gdbCdArr = req.getParameterValues("gdbCd");
		
		for(String gdNum : gdNumArr) {
			System.out.println("gdNum : " + gdNum);
			
		}
		for(String gdbCd : gdbCdArr) {
			System.out.println("gdbCd : " + gdbCd);
		}
		for(String gdCd : gdCdArr) {
			System.out.println("gdCd : " + gdCd);
		}
		
		for (int i = 0; i < gdNumArr.length; i++) {
			GdBkVO gdBkVO = new GdBkVO();
			gdBkVO.setMemId(memId);
			gdBkVO.setGdNum(Integer.parseInt(gdNumArr[i]));
			gdBkVO.setGdCd(gdCdArr[i]); // 굿즈코드
			gdBkVO.setGdbCd(gdbCdArr[i]); // 구매코드
			
			goodsService.updateGoodsNum(gdBkVO);
			
		}
		
		GdBuyVO gdBuyVO = new GdBuyVO();
		gdBuyVO.setMemId(memId); 
		gdBuyVO.setGdbCd(gdbCdArr[0]); 
		
		List<GoodsVO> shoppingList = goodsService.memberShoppingList(gdBuyVO);
		int gdpSum = 0;
		for (GoodsVO gv : shoppingList) {
			gdpSum += gv.getGdPrice() * gv.getGdNum();
		}
		// 한 굿즈의 가격 total 세션에 저장
		httpSession.setAttribute("gdpSum", gdpSum);
		// 굿즈구매코드 세션에 저장
		httpSession.setAttribute("gdbCd", gdbCdArr[0]); // 원본
//		httpSession.setAttribute("gdbCd", String.valueOf(gdbCdArr[0])); // 테스트
		
		req.getRequestDispatcher("/views/goods/goodsbucketpay.jsp").forward(req, resp);
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		doGet(req, resp);
		
	}
	
	
	
}

