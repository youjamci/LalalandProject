<%@page import="cmt.vo.CmtPayVO"%>
<%@page import="java.util.List"%>
<%@page import="cmt.service.CmtPayService"%>
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
	CmtPayService cmtpService = CmtPayService.getInstance();
	List<CmtPayVO> cmtpList = cmtpService.showAllCmtPay();
%>

<body>

<table class="type04">

<strong class="tit">정기권 판매 조회</strong>

<%
if(cmtpList.size() == 0) {
%>
	<h2>
	   예매 정보가 존재하지 않습니다.
	</h2>
<%
} else { %>

  <tr>
    <th scope="row">회원아이디</th>
    <th scope="row">회원명</th>
    <th scope="row">티켓명</th>
    <th scope="row">티켓구분</th>
    <th scope="row">수량</th>
    <th scope="row">결제수단</th>
    <th scope="row">금액</th>
    <th scope="row">일자</th>
  </tr>
<%	for(CmtPayVO cmtp : cmtpList) {
%>

  <tr>
    <td scope="row"><%=cmtp.getMemId() %></td>
    <td scope="row"><%=cmtp.getMemName() %></td>
    <td scope="row"><%=cmtp.getCmtName() %></td>
    <td scope="row"><%=cmtp.getCmtSort() %></td>
    <td scope="row"><%=cmtp.getCmtNum() %></td>
    <td scope="row"><%=cmtp.getCmtpMh() %></td>    
    <td scope="row"><%=cmtp.getCmtpSum() %></td>
    <td scope="row"><%=cmtp.getCmtpDate().toLocaleString() %></td>
  </tr>
  
  
<%	}
}
%>

</table>
</body>


