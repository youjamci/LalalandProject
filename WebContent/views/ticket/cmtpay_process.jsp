<%@page import="cmt.vo.CmtBkVO"%>
<%@page import="cmt.vo.CmtBuyVO"%>
<%@page import="cmt.service.CmtService"%>
<%@page import="cmt.vo.CmtPayVO"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	request.setCharacterEncoding("UTF-8");
	
	String memId  = request.getParameter("memId");
	String cmt001  = request.getParameter("cmt001");
	String cmt002  = request.getParameter("cmt002"); 
	String cmt003  = request.getParameter("cmt003"); 
	String cmtpMh  = request.getParameter("cmtpMh");
	String item_price  = request.getParameter("item_price");
	
	out.print("cmt001 : " + cmt001 + "<br />");
	out.print("cmt002 : " + cmt002 + "<br />");
	out.print("cmt003 : " + cmt003 + "<br />");
	
	out.print("memId : " + memId + "<br />");
	
	out.print("cmtpMh : " + cmtpMh + "<br />");
	
	out.print("item_price : " + item_price + "<br />");
	
	CmtService cmtService = CmtService.getInstance();
	
	//1) CMT_BUY(memId)
	CmtBuyVO cmtBuyVO = new CmtBuyVO();
	cmtBuyVO.setMemId(memId);
	
	int result = cmtService.cmtBuyInsert(cmtBuyVO);
	
	//2) CMT_BK(cmtbCd(1)), cmtCd, cmtNum)
	
	if(!cmt001.equals("0")){
		CmtBkVO cmtBkVO = new CmtBkVO();
		cmtBkVO.setCmtbCd(cmtBuyVO.getCmtbCd());
		cmtBkVO.setCmtCd("cmt001");
		cmtBkVO.setCmtNum(Integer.parseInt(cmt001));
				
		result += cmtService.cmtBkInsert(cmtBkVO);
	}
	if(!cmt002.equals("0")){
		CmtBkVO cmtBkVO = new CmtBkVO();
		cmtBkVO.setCmtbCd(cmtBuyVO.getCmtbCd());
		cmtBkVO.setCmtCd("cmt002");
		cmtBkVO.setCmtNum(Integer.parseInt(cmt002));
				
		result += cmtService.cmtBkInsert(cmtBkVO);
	}
	if(!cmt003.equals("0")){
		CmtBkVO cmtBkVO = new CmtBkVO();
		cmtBkVO.setCmtbCd(cmtBuyVO.getCmtbCd());
		cmtBkVO.setCmtCd("cmt003");
		cmtBkVO.setCmtNum(Integer.parseInt(cmt003));
		
		result += cmtService.cmtBkInsert(cmtBkVO);
	}
	
	//3) CMT_PAY(cmtpMh, cmtpSum,cmtbCd(1))
	CmtPayVO cmtPayVO = new CmtPayVO();
	cmtPayVO.setCmtpMh(cmtpMh);
	cmtPayVO.setCmtpSum(Integer.parseInt(item_price));
	cmtPayVO.setCmtbCd(cmtBuyVO.getCmtbCd());
	
	result += cmtService.cmtPayInsert(cmtPayVO);
	
	out.print("result : " + result);
	
	response.sendRedirect(request.getContextPath() + "/views/ticket/pay01.jsp");
%>


