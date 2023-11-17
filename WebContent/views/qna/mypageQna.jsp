<%@page import="java.util.List"%>
<%@page import="lala.vo.customerQnaVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../../mem_header.jsp" %>
<%@include file="../../mem_aside.jsp" %>

<%

	List<customerQnaVO> qnaList = (List<customerQnaVO>)session.getAttribute("qnaList");
	customerQnaVO qnaVO = (customerQnaVO)request.getAttribute("qnaVO");
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css?family=Amatic+SC" rel="stylesheet">
<style>
table.type04 {
  border-collapse: separate;
  border-spacing: 1px;
  text-align: center;
  line-height: 1.5;
  border-top: 1px solid #ccc;
  margin: 20px 600px;
  width: 1000px;
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

table.type04 tbody {
  margin-left: 20px;
}

.tit {
  font-size: 24.9px;
}


</style>
</head>
<body>

<%
int qna = qnaList.size();

if(qna == 0) {
%>
	<h2>
	 문의 내역이 존재하지 않습니다.
	</h2>
<%
} else { 
%>
<table class="type04">
<strong class="tit">나의 Q&A 목록</strong>
  <tr>
    <th scope="row">일자</th>
    <th scope="row">유형</th>
    <th scope="row">제목</th>
    <th scope="row">답변상태</th>
  </tr>
	
<%	for(customerQnaVO cqVO : qnaList) {
%>
  <tr>
    <td scope="row"><%=cqVO.getqDate() %></td>
    <td scope="row"><%=cqVO.getqSort() %></td>
    <td scope="row"><a href="<%=request.getContextPath()%>/qna/userdetail.do?qCd=<%=cqVO.getqCd() %>"><%=cqVO.getqTitle()%></a></td>
    <td scope="row"><%=cqVO.getaChk() %></td>
  <tr>
<%	}
}
%>
</table>
</body>
</html>