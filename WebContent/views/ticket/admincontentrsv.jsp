<%@page import="ticket.vo.ContentVO"%>
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

<% List<ContentVO> CtList = (List<ContentVO>)request.getAttribute("CtList"); %>

<body>
<table class="type04">
<strong class="tit">콘텐츠 예약 조회</strong>

  <tr>
    <th scope="row">콘텐츠코드</th>
    <th scope="row">콘텐츠명</th>
    <th scope="row">일자</th>
    <th scope="row">시간</th>
    <th scope="row">정원</th>
    <th scope="row">예약인원</th>
    <th scope="row">예약가능인원</th>
  </tr>
  
<%
if(CtList.size() == 0) {
%>
	<h2>
	   예약 정보가 존재하지 않습니다.
	</h2>
<%
} else {
	for(ContentVO Ct : CtList) {
%>
  <tr>
    <td scope="row"><%=Ct.getCtdCd() %></td>
    <td scope="row"><%=Ct.getCtName() %></td>
    <td scope="row"><%=Ct.getCtSdate() %></td>    
    <td scope="row"><%=Ct.getCtSn() %>시</td>
    <td scope="row"><%=Ct.getCtFull() %></td>
    <td scope="row"><%=Ct.getCtReshm() %></td>
    <td scope="row"><%=Ct.getCtLeft() %></td>
  </tr>
  
  
<%	}
}
%>

</table>
</body>