package cmt.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cmt.service.CmtPayService;
import cmt.vo.CmtPayVO;

@WebServlet("/adminpage/cmt.do")
public class AdminCmtController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		CmtPayService cmtPayService = CmtPayService.getInstance();

		List<CmtPayVO> cmtPayList = cmtPayService.showAllCmtPay();

		req.setAttribute("cmtPayList", cmtPayList);
		req.getRequestDispatcher("/views/ticket/admincmt.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

}