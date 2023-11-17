
<%@page import="ticket.vo.TicketPayVO"%>
<%@page import="ticket.service.TicketPayService"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@include file="../../adm_header.jsp" %>
<%@include file="../../adm_aside.jsp" %>
<head>
<style>
table.type04 {
  border-collapse: separate;
  border-spacing: 1px;
  text-align: center;
  line-height: 1.5;
  border-top: 1px solid #ccc;
  margin : 20px 10px;
}
table.type04 th {
  width: 150px;
  padding: 10px;
  font-weight: bold;
  vertical-align: top;
  border-bottom: 1px solid #ccc;
  text-align: center;
}
table.type04 td {
  width: 350px;
  padding: 10px;
  vertical-align: top;
  border-bottom: 1px solid #ccc;
  text-align: center;
}

.tit {
  font-size: 24.9px;
}

</style>
</head>

<% 
	TicketPayService tkpService = TicketPayService.getInstance();
	List<TicketPayVO> tkpList = tkpService.showAllTicketPay();
%>

<body>

<table class="type04">

<strong class="tit">티켓 판매 조회</strong>

<%
if(tkpList.size() == 0) {
%>
	<h2>
	   예매 정보가 존재하지 않습니다.
	</h2>
<%
} else { %>

  <tr>
    <th scope="row">회원아이디</th>
    <th scope="row">회원이름</th>
    <th scope="row">예매번호</th>
    <th scope="row">방문일자</th>
    <th scope="row">티켓코드</th>
    <th scope="row">티켓권종</th>
    <th scope="row">티켓구분</th>
    <th scope="row">티켓매수</th>
    <th scope="row">총 가격</th>
    <th scope="row">예매일자</th>
    <th scope="row">예매상태</th>
    <th scope="row">사용여부</th>
  </tr>
  

<%	for(TicketPayVO tkp : tkpList) {
%>
  <tr>
    <td scope="row"><%=tkp.getMemId() %></td>
    <td scope="row"><%=tkp.getMemName() %></td>
    <td scope="row"><%=tkp.getTkbCd() %></td>    
    <td scope="row"><%=tkp.getTkSdate() %></td>
    <td scope="row"><%=tkp.getTkCd() %></td>
    <td scope="row"><%=tkp.getTkSort() %></td>
    <td scope="row"><%=tkp.getTkAge() %></td>
    <td scope="row"><%=tkp.getTkNum() %>매</td>
    <td scope="row"><%=tkp.getTkSum() %>원</td>
    <td scope="row"><%=tkp.getTkpSdate() %></td>
    <td scope="row"><%=tkp.getTkpChk() %></td>
    <td scope="row"><%=tkp.getCon() %></td>
  </tr>
  
<%	}
}
%>

</table>
</body>