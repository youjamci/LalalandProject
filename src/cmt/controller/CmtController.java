package cmt.controller;

import cmt.service.CmtService;
import cmt.vo.CmtVO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/cmt/main.do")
public class CmtController extends HttpServlet {

	CmtService cmtService = CmtService.getInstance();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		super.doGet(req, resp);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession httpSession = req.getSession();
		String memId = (String) httpSession.getAttribute("loginCode");

		String cmtCd = req.getParameter("cmtCd");
		String cmtNum = req.getParameter("cmtNum");

		System.out.println(cmtCd + cmtNum + memId);

		CmtService cmtService = CmtService.getInstance();

		CmtVO cmtVO = new CmtVO();
		cmtVO.setMemId(memId);

	}
}