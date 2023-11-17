<%@page import="ticket.vo.TicketPayVO"%>
<%@page import="ticket.vo.ContentVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@include file="../../mem_header.jsp"%>
<%@include file="../../mem_aside.jsp"%>
<head>
<link href="https://fonts.googleapis.com/css?family=Amatic+SC" rel="stylesheet">
<style>
table.type04 {
  border-collapse: separate;
  border-spacing: 1px;
  text-align: left;
  line-height: 1.5;
  border-top: 1px solid #ccc;
  margin: 20px 10px;
}
table.type04 th {
  width: 150px;
  padding: 10px;
  font-weight: bold;
  vertical-align: top;
  border-bottom: 1px solid #ccc;
}
table.type04 td {
  width: 350px;
  padding: 10px;
  vertical-align: top;
  border-bottom: 1px solid #ccc;
}

table.type04 tbody {
  margin-left: 20px;
}

.tit {
  font-size: 24.9px;
}
.cclick{
	background-color: #F4F4F4;
	position: relative;
    border: none;
    display: inline-block;
    padding: 10px 25px;
    border-radius: 15px;
    font-family: "paybooc-Light", sans-serif;
/*     box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2); */
/*     text-decoration: none; */
/*     font-weight: 600; */
/*     transition: 0.25s; */
    border: 2px solid grey;
    font-size: 13px;
/*     margin-top: 30px; */
/*     margin-left: 560px;  */

/*      float: right;  */
}
</style>

<% List<TicketPayVO> myTkpList = (List<TicketPayVO>) request.getAttribute("myTkpList"); %>

<table class="type04">

<strong class="tit">나의 티켓 목록</strong>

<%
if(myTkpList == null || myTkpList.size() == 0) {
%>
	<h2>
	  예매 정보가 존재하지 않습니다.
	</h2>
<%
} else { %>

  <tr>
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
    <th scope="row"></th>
  </tr>
	
<%	for(TicketPayVO tkp : myTkpList) {
%>
  <tr>
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
    <td scope="row">
    <% if(!tkp.getCon().equals("사용불가") && !tkp.getCon().equals("기한만료")) { %>
	    <a href="../mypage/ticket.do?tkbCd=<%=tkp.getTkbCd() %>">
	    	<button type="button" class="cclick">취소하기</button>
	    </a>
	<% } %>
	    
    </td>
  <tr>
<%	}
}
%>

</table>
</head>

