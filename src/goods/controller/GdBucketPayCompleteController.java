package goods.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.BeanUtils;

import goods.service.GdPayService;
import goods.vo.GdPayVO;

@WebServlet(value="/goods/gdbucketpaycomplete.do")
public class GdBucketPayCompleteController extends HttpServlet{

	GdPayService gdPayService = GdPayService.getInstance();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		System.out.println("세션위로 왔니?");
		HttpSession httpSession = req.getSession();
		String memId = (String)httpSession.getAttribute("loginCode");
		String gdbCd = (String)httpSession.getAttribute("gdbCd");
		
		GdPayVO gdPayVO = new GdPayVO();
		gdPayVO.setMemId(memId);
		
		try {
			
			BeanUtils.populate(gdPayVO, req.getParameterMap());
			gdPayVO.setGdbCd(gdbCd);
			System.out.println(gdPayVO);
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			e.printStackTrace();
		}
		
		int result = gdPayService.goodsPayInfo(gdPayVO);
		
		System.out.println("너 어디니?");
		
		PrintWriter out = resp.getWriter();
		if(result > 0) {
			out.print("성공");
		}
		
		System.out.println("이 방법이 맞는걸까?");
		
		req.getRequestDispatcher("/views/goods/gdbucketpaycomplete.jsp").forward(req, resp);
		
	}
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		doGet(req, resp);
		
	}
	
//	String gdpMh = req.getParameter("gdpMh");
//	String gdpRname = req.getParameter("gdpRname");
//	String gdpRtel = req.getParameter("gdpRtel");
//	String gdpAdd = req.getParameter("gdpAdd");
//	String gdpDadd = req.getParameter("gdpDadd");
//	String gdpReq = req.getParameter("gdpReq");
	
	
}
