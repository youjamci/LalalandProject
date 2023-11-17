<%@page import="ticket.vo.TicketPayVO"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="ticket.vo.TicketBkVO"%>
<%@page import="ticket.vo.TicketBuyVO"%>
<%@page import="ticket.service.TicketService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");

String memId  = request.getParameter("memId");
String tkDate  = request.getParameter("tkDate");
String TA001  = request.getParameter("TA001");
String TA002  = request.getParameter("TA002"); 
String TB001  = request.getParameter("TB001"); 
String TB002  = request.getParameter("TB002"); 
String TC001  = request.getParameter("TC001"); 
String TC002  = request.getParameter("TC002"); 
String tkpMh  = request.getParameter("tkpMh");
String item_price  = request.getParameter("item_price");

out.print("TA001 : " + TA001 + "<br />");
out.print("TA002 : " + TA002 + "<br />");
out.print("TB001 : " + TB001 + "<br />");
out.print("TB002 : " + TB002 + "<br />");
out.print("TC001 : " + TC001 + "<br />");
out.print("TC002 : " + TC002 + "<br />");

out.print("memId : " + memId + "<br />");

out.print("tkDate : " + tkDate + "<br />");

out.print("tkpMh : " + tkpMh + "<br />");

out.print("item_price : " + item_price + "<br />");

TicketService ticketService = TicketService.getInstance();

//1) TK_BUY(memId)
TicketBuyVO ticketBuyVO = new TicketBuyVO();
ticketBuyVO.setMemId(memId);

	//실행전 tkbCd = null이지만 실행 후 tkbCd = 2됨(selectKey에 의해서..)
int result = ticketService.tkBuyInsert(ticketBuyVO);

//2) TK_BK(tkbCd(1)), tkCd, tkNum, tkDate)

if(!TA001.equals("0")){
	TicketBkVO ticketBkVO = new TicketBkVO();
	ticketBkVO.setTkbCd(ticketBuyVO.getTkbCd());//실행전 tkbCd = null이지만 실행 후 tkbCd = 2됨(selectKey에 의해서..)
	ticketBkVO.setTkCd("TA001");
	ticketBkVO.setTkNum(Integer.parseInt(TA001));
	SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMdd");//20230731
	Date date = formatter.parse(tkDate);
	ticketBkVO.setTkDate(date);
			
	result += ticketService.tkBkInsert(ticketBkVO);
}
if(!TA002.equals("0")){
	TicketBkVO ticketBkVO = new TicketBkVO();
	ticketBkVO.setTkbCd(ticketBuyVO.getTkbCd());//실행전 tkbCd = null이지만 실행 후 tkbCd = 2됨(selectKey에 의해서..)
	ticketBkVO.setTkCd("TA002");
	ticketBkVO.setTkNum(Integer.parseInt(TA002));
	SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMdd");//20230731
	Date date = formatter.parse(tkDate);
	ticketBkVO.setTkDate(date);
			
	result += ticketService.tkBkInsert(ticketBkVO);
}
if(!TB001.equals("0")){
	TicketBkVO ticketBkVO = new TicketBkVO();
	ticketBkVO.setTkbCd(ticketBuyVO.getTkbCd());//실행전 tkbCd = null이지만 실행 후 tkbCd = 2됨(selectKey에 의해서..)
	ticketBkVO.setTkCd("TB001");
	ticketBkVO.setTkNum(Integer.parseInt(TB001));
	SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMdd");//20230731
	Date date = formatter.parse(tkDate);
	ticketBkVO.setTkDate(date);
			
	result += ticketService.tkBkInsert(ticketBkVO);
}
if(!TB002.equals("0")){
	TicketBkVO ticketBkVO = new TicketBkVO();
	ticketBkVO.setTkbCd(ticketBuyVO.getTkbCd());//실행전 tkbCd = null이지만 실행 후 tkbCd = 2됨(selectKey에 의해서..)
	ticketBkVO.setTkCd("TB002");
	ticketBkVO.setTkNum(Integer.parseInt(TB002));
	SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMdd");//20230731
	Date date = formatter.parse(tkDate);
	ticketBkVO.setTkDate(date);
			
	result += ticketService.tkBkInsert(ticketBkVO);
}
if(!TC001.equals("0")){
	TicketBkVO ticketBkVO = new TicketBkVO();
	ticketBkVO.setTkbCd(ticketBuyVO.getTkbCd());//실행전 tkbCd = null이지만 실행 후 tkbCd = 2됨(selectKey에 의해서..)
	ticketBkVO.setTkCd("TC001");
	ticketBkVO.setTkNum(Integer.parseInt(TC001));
	SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMdd");//20230731
	Date date = formatter.parse(tkDate);
	ticketBkVO.setTkDate(date);
			
	result += ticketService.tkBkInsert(ticketBkVO);
}
if(!TC002.equals("0")){
	TicketBkVO ticketBkVO = new TicketBkVO();
	ticketBkVO.setTkbCd(ticketBuyVO.getTkbCd());//실행전 tkbCd = null이지만 실행 후 tkbCd = 2됨(selectKey에 의해서..)
	ticketBkVO.setTkCd("TC002");
	ticketBkVO.setTkNum(Integer.parseInt(TC002));
	SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMdd");//20230731
	Date date = formatter.parse(tkDate);
	ticketBkVO.setTkDate(date);
			
	result += ticketService.tkBkInsert(ticketBkVO);
}

//3) TK_PAY(tkpMh, tkpSum, tkbCd(1))
TicketPayVO ticketPayVO = new TicketPayVO();
ticketPayVO.setTkpMh(tkpMh);
ticketPayVO.setTkpSum(Integer.parseInt(item_price));
ticketPayVO.setTkbCd(ticketBuyVO.getTkbCd());//실행전 tkbCd = null이지만 실행 후 tkbCd = 2됨(selectKey에 의해서..)

result += ticketService.tkPayInsert(ticketPayVO);

out.print("result : " + result);

response.sendRedirect(request.getContextPath() + "/views/ticket/pay02.jsp");
%>


