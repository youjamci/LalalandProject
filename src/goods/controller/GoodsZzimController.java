package goods.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import goods.service.ZzimService;
import goods.vo.GoodsVO;
import goods.vo.ZzimVO;


@WebServlet("/mypage/zzim.do")
public class GoodsZzimController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession httpSession = req.getSession();
		String memId = (String) httpSession.getAttribute("loginCode");
		
		ZzimService zzimService = ZzimService.getInstance();

		if(req.getParameter("gdCd") != null) {
			String gdCd = req.getParameter("gdCd");
			ZzimVO zzimVO = new ZzimVO(gdCd, memId);
			zzimService.removeZzim(zzimVO);
		}
		
		List<GoodsVO> zzimList = zzimService.showMyZzim(memId);
		
		for(GoodsVO gd : zzimList) {
			System.out.println("세션: " + gd);
		}
		
		req.setAttribute("zzimList", zzimList);
		req.getRequestDispatcher("/views/goods/myzzimgoods.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
