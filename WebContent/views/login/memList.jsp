<%@page import="member.vo.MemberVO"%>
<%@page import="java.util.List"%>
<%@include file="../../adm_header.jsp"%>
<%@include file="../../adm_aside.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	List<MemberVO> memList = (List<MemberVO>) request.getAttribute("memList"); ///어트리뷰트 - 누가 쓴거 꺼내오는거
%>
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
<body>
	<table class="type04">
	<strong class="tit">회원정보</strong>
		<tr>
			<th scope="row">아이디</th>
			<th scope="row">비밀번호</th>
			<th scope="row">이름</th>
			<th scope="row">생일</th>
			<th scope="row">전화번호</th>
			<th scope="row">주소</th>
			<th scope="row">상세주소</th>
			<th scope="row">이메일</th>
			<th scope="row">이메일 수신 여부</th>
			<th scope="row">회원상태</th>
		</tr>

		<%
			int memSize = memList.size();
		if (memSize == 0) {
		%>
		<tr>
			<td colspan="5">회원 정보가 존재하지 않습니다.</td>
		</tr>
		<%
			} else {
		for (MemberVO mv : memList) {
		%>
		<tr>
			<td style="width: 150px;">
				<%
					out.print(mv.getMemId());
				%>
			</td>
			<td scope="row"><%=mv.getMemPw()%></td>
			<td scope="row"><%=mv.getMemName()%></td>
			<td scope="row"><%=mv.getMemBirth()%></td>
			<td scope="row"><%=mv.getMemTel()%></td>
			<td scope="row"><%=mv.getMemAdd()%></td>
			<td scope="row"><%=mv.getMemDadd()%></td>
			<td scope="row"><%=mv.getMemEmail()%></td>
			<td scope="row"><%=mv.getMemNoti()%></td>
			<td scope="row"><%=mv.getMemChk()%></td>
		</tr>
		<%
			}
		}
		%>

	</table>
</body>
