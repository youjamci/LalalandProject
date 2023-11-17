package lala.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import lala.service.AttractionService;
import lala.vo.attractionVO;

@WebServlet(value = "/enjoy/adminattractionupdate.do")
public class AdminAttractionUpdateController extends HttpServlet{

	AttractionService attractionService = AttractionService.getInstance();
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession httpSession = req.getSession();
		
		req.setCharacterEncoding("UTF-8");
		
		String atName = req.getParameter("atName");
		String atChk = req.getParameter("atChk");
		
		attractionVO atVO = new attractionVO();
		atVO.setAtName(atName);
		atVO.setAtChk(atChk);
		
		System.out.println(atVO);
		
		if(atChk.equals("open")) {
			int res = attractionService.updateAttractionOpenChkInfo(atVO);
			
			if(res > 0) {
				
				atVO.setZoneCd("z1");
				List<attractionVO> zone1 = attractionService.getAllAttractionInfo(atVO);
				
				atVO.setZoneCd("z2");
				List<attractionVO> zone2 = attractionService.getAllAttractionInfo(atVO);

				atVO.setZoneCd("z3");
				List<attractionVO> zone3 = attractionService.getAllAttractionInfo(atVO);
				
				atVO.setZoneCd("z4");
				List<attractionVO> zone4 = attractionService.getAllAttractionInfo(atVO);
				
				
				httpSession.setAttribute("zone1", zone1);
				httpSession.setAttribute("zone2", zone2);
				httpSession.setAttribute("zone3", zone3);
				httpSession.setAttribute("zone4", zone4);
				
				req.getRequestDispatcher("/views/enjoy/adminattractionInfo.jsp").forward(req, resp);
			}
			
		} 
			
		if(atChk.equals("close")) {
			int res = attractionService.updateAttractionCloseChkInfo(atVO);
			
			if(res > 0) {
				
				atVO.setZoneCd("z1");
				List<attractionVO> zone1 = attractionService.getAllAttractionInfo(atVO);
				
				atVO.setZoneCd("z2");
				List<attractionVO> zone2 = attractionService.getAllAttractionInfo(atVO);

				atVO.setZoneCd("z3");
				List<attractionVO> zone3 = attractionService.getAllAttractionInfo(atVO);
				
				atVO.setZoneCd("z4");
				List<attractionVO> zone4 = attractionService.getAllAttractionInfo(atVO);
				
				
				httpSession.setAttribute("zone1", zone1);
				httpSession.setAttribute("zone2", zone2);
				httpSession.setAttribute("zone3", zone3);
				httpSession.setAttribute("zone4", zone4);
				
				req.getRequestDispatcher("/views/enjoy/adminattractionInfo.jsp").forward(req, resp);
			}
		}
		
	}


	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
	
}
