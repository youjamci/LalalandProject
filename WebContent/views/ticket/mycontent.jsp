<%@page import="ticket.vo.ContentVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../../mem_header.jsp"%>
<%@include file="../../mem_aside.jsp"%>
<head>
<link href="https://fonts.googleapis.com/css?family=Amatic+SC"
	rel="stylesheet">
<style>
table.type04 {
	border-collapse: separate;
	border-spacing: 1px;
	text-align: center;
	line-height: 1.5;
	border-top: 1px solid #ccc;
	margin: 20px 550px;
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
.cclick{
	background-color: #F4F4F4;
	position: relative;
    border: none;
    display: inline-block;
    padding: 8px 20px;
    border-radius: 15px;
    font-family: "paybooc-Light", sans-serif;
/*     box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);  */
/*     text-decoration: none; */
/*     font-weight: 600; */
/*     transition: 0.25s; */
    border: 2px solid grey;
/*     font-size: 13px; */
/*     margin-top: 30px; */
/*     margin-left: 560px;  */
color: black;
}
</style>
</head>

<%
	List<ContentVO> myCtList = (List<ContentVO>) request.getAttribute("myCtList");
%>

<body>
	<table class="type04">
		<strong class="tit">나의 콘텐츠 예약 목록</strong>

		<%
			if (myCtList == null || myCtList.size() == 0) {
		%>
		<h2>예약 정보가 존재하지 않습니다.</h2>
		<%
			} else {
		%>

		<tr>
			<th scope="row">일자</th>
			<th scope="row">시간</th>
			<th scope="row">콘텐츠명</th>
			<th scope="row">예약인원</th>
			<th scope="row"></th>
		</tr>

		<%
			for (ContentVO myCt : myCtList) {
		%>
		<tr>
			<td scope="row"><%=myCt.getCtSdate()%></td>
			<td scope="row"><%=myCt.getCtSn()%>시</td>
			<td scope="row"><%=myCt.getCtName()%></td>
			<td scope="row"><%=myCt.getCtSort() + " " + myCt.getCtReshm()%>명</td>
			<td scope="row"><a
				href="../mypage/content.do?ctrCd=<%=myCt.getCtrCd()%>&ctdCd=<%=myCt.getCtdCd()%>">
					<!-- 					<button>취소하기</button> -->
					<button type="button" class="cclick">취소하기</button>
			</a></td>
		<tr>
			<%
				}
			}
			%>
		
	</table>
</body>