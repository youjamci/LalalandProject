<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Id Print</title>
<style>
.fId{
font-size: 50px;
margin-top: 80px;
}
</style>
</head>
<%@include file="../../header.jsp"%>
<body>
    <h2>아이디 출력</h2>
    <%
        // 세션에서 데이터 가져오기
        String foundId = (String) request.getAttribute("foundId");
    %>
    <% if (foundId != null) { %>
    <p class="fId">찾은 아이디: <%= foundId %></p>
    <% } else { %>
        <p class="px-large">아이디를 찾을 수 없습니다.</p>
    <% } %>

	<div style="margin-bottom: 300px;"></div>
</body>
</html>
<%@include file="../../footer.jsp"%>
