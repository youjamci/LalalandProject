package goods.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.BeanUtils;

import goods.service.GdPayService;
import goods.service.GoodsService;
import goods.vo.GdBkVO;
import goods.vo.GdBuyVO;
import goods.vo.GdPayVO;
import goods.vo.GoodsVO;
import member.service.IMemberService;
import member.service.MemberServiceImpl;
import member.vo.MemberVO;

@WebServlet("/goods/directpay.do")
public class GoodsDBuyController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession httpSession = req.getSession();
		String memId = (String)httpSession.getAttribute("loginCode");
		String gdCd = (String)httpSession.getAttribute("gdCd");
		
		GoodsService goodsService = GoodsService.getInstance();
		GoodsVO gd = goodsService.showDetailGoods(gdCd);			
		
		GdBuyVO gdBuyVO = new GdBuyVO(memId);
		goodsService.nonExistGdbCd(gdBuyVO); // 구매 테이블 -> gdBuyVO에 굿즈구매코드 세팅
		
		String gdbCd = gdBuyVO.getGdbCd(); // 굿즈구매코드
		GdBkVO gdBkVO = new GdBkVO(); // 장바구니 테이블
		gdBkVO.setGdbCd(gdbCd);
		gdBkVO.setGdCd(gdCd);
		goodsService.nonExistGdbCdInsert(gdBkVO); // gdCd-1개 인서트
		
		GdPayService gdPayService = GdPayService.getInstance();
		GdPayVO gdPayVO = new GdPayVO();
		try {
			BeanUtils.populate(gdPayVO, req.getParameterMap());
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		gdPayVO.setGdpSum(gd.getGdPrice());
		gdPayVO.setGdbCd(gdbCd);
		
		int result = gdPayService.finGoodsPay(gdPayVO);
		
		PrintWriter out = resp.getWriter();
		if(result > 0) {
			out.print("성공");		
		}		
	
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
	
}
