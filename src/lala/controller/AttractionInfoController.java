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

@WebServlet(value = "/enjoy/attractioninfo.do")
public class AttractionInfoController extends HttpServlet{

	AttractionService attractionService = AttractionService.getInstance();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HttpSession httpSession = req.getSession();
		
		attractionVO atVO = new attractionVO();
		
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
		
		
		
		req.getRequestDispatcher("/views/enjoy/attractionInfo.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		doGet(req, resp);
		
	}
	
}
