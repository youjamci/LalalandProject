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
import goods.service.ZzimService;
import goods.vo.GdPayVO;
import goods.vo.GoodsVO;
import goods.vo.ZzimVO;
import ticket.vo.ContentVO;


@WebServlet("/mypage/goodspay.do")
public class MyGdPayController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession httpSession = req.getSession();
		String memId = (String) httpSession.getAttribute("loginCode");
		
		GdPayService gdPayService = GdPayService.getInstance();
		
		String gdpCd = req.getParameter("gdpCd");
		if(gdpCd != null) {
			gdPayService.refundGoodsPay(gdpCd);
		}
		
		List<GdPayVO> mygdPayList = gdPayService.showMyGoodsPay(memId);
		
		req.setAttribute("mygdPayList", mygdPayList);
		req.getRequestDispatcher("/views/goods/mygoodspay.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}