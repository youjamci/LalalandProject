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
import goods.vo.GdBkVO;
import goods.vo.GdBuyVO;
import goods.vo.GoodsVO;

@WebServlet(value = "/goods/goodsbucket.do")
public class GoodsBucketController extends HttpServlet{
	
	GoodsService goodsService = GoodsService.getInstance();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HttpSession httpSession = req.getSession();
		String memId = (String)httpSession.getAttribute("loginCode");
		
		String gdCd = req.getParameter("gdCd"); // gdCd: 굿즈코드
		System.out.println("gdCd : " + gdCd);
		
		//장바구니 테이블에 상품을 담음
		//1) b003회원이 GD_BUY의 GBD_CHK가 구매중인 행이 있으면
		GdBuyVO gdBuyVO = new GdBuyVO(); // 굿즈구매 VO
		gdBuyVO.setMemId(memId);
		String gdbCd = goodsService.existGdbCd(gdBuyVO); // 굿즈구매코드
		System.out.println("gdbCd : " + gdbCd);
		
		if(gdbCd!=null) { // 굿즈구매코드가 널값이 아니면
			GdBkVO gdBkVO = new GdBkVO(); // 굿즈장바구니VO생성
			gdBkVO.setMemId(memId); // 장바구니회원아이디 'b003'으로 설정
			gdBkVO.setGdCd(gdCd); // 장바구니 굿즈코드
			goodsService.existGdbCdInsert(gdBkVO);
		}else {
	//		2) b003회원이 GD_BUY의 GBD_CHK가 구매중인 행이 없으면

			gdBuyVO.setMemId(memId); // 회원아이디 설정
			goodsService.nonExistGdbCd(gdBuyVO); // 구매테이블에 쿼리 날리기
			
			GdBkVO gdBkVO = new GdBkVO(); // 굿즈장바구니VO생성
			gdBkVO.setGdbCd(gdBuyVO.getGdbCd()); // 형성된 구매테이블의 굿즈구매코드 가져오기
			gdBkVO.setGdCd(gdCd); // 장바구니 굿즈코드
			goodsService.nonExistGdbCdInsert(gdBkVO);
		}

		resp.setContentType("text/plain");  // Set content type of the response so that jQuery knows what it can expect.
		resp.setCharacterEncoding("UTF-8"); // You want world domination, huh?
		resp.getWriter().write("success");       // Write response body.
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		doGet(req, resp);
		
	}
	
}
