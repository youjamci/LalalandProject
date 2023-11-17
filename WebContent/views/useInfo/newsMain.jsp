<%@page import="member.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="lala.vo.NewsVO"%>
<%@page import="java.util.List"%>

<%@include file="../../adm_header.jsp"%>
<% 
	/* 메인뉴스컨트롤러에서 newsList를 setAttribute로 저장했기 때문에 get으로 받음 */
	List<NewsVO> newsList =(List<NewsVO>)request.getAttribute("newsList");

		String adminId = (String)session.getAttribute("adminId");
	
		String memId = (String)session.getAttribute("loginCode");


		String msg = session.getAttribute("msg") == null ? "" 
 		:(String) session.getAttribute("msg"); 
		//만약 null이라면 빈 문자열("")을 할당하고, 그렇지 않으면 가져온 값을 그대로 할당
		
			session.removeAttribute("msg");
			// 세션에서 "msg" 속성을 제거
%>

<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>뉴스 공지 목록</title>
</head>
<body>
<style>
table {
	border-collapse: collapse;
	border-spacing: 0;
}

section.notice {
	padding: 80px 0;
}

.page-title {
	margin-bottom: 60px;
}

.page-title h3 {
	font-size: 28px;
	color: #333333;
	font-weight: 400;
	text-align: center;
}

#board-search .search-window {
	padding: 15px 0;
	background-color: #f9f7f9;
}

#board-search .search-window .search-wrap {
	position: relative;
	/*   padding-right: 124px; */
	margin: 0 auto;
	width: 80%;
	max-width: 564px;
}

#board-search .search-window .search-wrap input {
	height: 40px;
	width: 100%;
	font-size: 14px;
	padding: 7px 14px;
	border: 1px solid #ccc;
}

#board-search .search-window .search-wrap input:focus {
	border-color: #333;
	outline: 0;
	border-width: 1px;
}

#board-search .search-window .search-wrap .btn {
	position: absolute;
	right: 0;
	top: 0;
	bottom: 0;
	width: 108px;
	padding: 0;
	font-size: 16px;
}

.board-table {
	font-size: 13px;
	width: 100%;
	border-top: 1px solid #ccc;
	border-bottom: 1px solid #ccc;
}

.board-table a {
	color: #333;
	display: inline-block;
	line-height: 1.4;
	word-break: break-all;
	vertical-align: middle;
}

.board-table a:hover {
	text-decoration: underline;
}

.board-table th {
	text-align: center;
}

.board-table .th-num {
	width: 100px;
	text-align: center;
}

.board-table .th-date {
	width: 200px;
}

.board-table th, .board-table td {
	padding: 14px 0;
}

.board-table tbody td {
	border-top: 1px solid #e7e7e7;
	text-align: center;
}

.board-table tbody th {
	padding-left: 28px;
	padding-right: 14px;
	border-top: 1px solid #e7e7e7;
	text-align: left;
}

.board-table tbody th p {
	display: none;
}

.btn {
	display: inline-block;
	padding: 0 16px;
	font-size: 15px;
	font-weight: 400;
	background: transparent;
	text-align: center;
	white-space: nowrap;
	vertical-align: middle;
	-ms-touch-action: manipulation;
	touch-action: manipulation;
	cursor: pointer;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
	border: 1px solid transparent;
	text-transform: uppercase;
	-webkit-border-radius: 0;
	-moz-border-radius: 0;
	border-radius: 0;
	-webkit-transition: all 0.3s;
	-moz-transition: all 0.3s;
	-ms-transition: all 0.3s;
	-o-transition: all 0.3s;
	transition: all 0.3s;
}

.btn-dark {
	background: #F5646F;
	color: #fff;
}

.btn-dark:hover, .btn-dark:focus {
	background: #373737;
	border-color: #373737;
	color: #fff;
}

/* reset */
* {
	list-style: none;
	text-decoration: none;
	padding: 0;
	margin: 0;
	box-sizing: border-box;
}

.clearfix:after {
	content: '';
	display: block;
	clear: both;
}

.container {
	width: 1100px;
	margin: 0 auto;
}

.blind {
	position: absolute;
	overflow: hidden;
	clip: rect(0, 0, 0, 0);
	margin: -1px;
	width: 1px;
	height: 1px;
}
</style>

	<section class="notice">
		<div class="page-title">
			<div class="container">
				<h3>공지사항</h3>
			</div>
		</div>

		<!-- board seach area -->
		<div id="board-search">
			<div class="container">
				<div class="search-window">
					<form action="">
						<div class="search-wrap">
							<label for="search" class="blind">공지사항 내용 검색</label> 
							<input
								id="search" type="search" name="" placeholder="검색어를 입력해주세요."
								value="">
							<button type="submit" class="btn btn-dark">검색</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	
		<div id="board-list">
		<!-- board list area -->
			<div class="container">
				<table class="board-table">
					<thead>
						<tr>
							<th scope="col" class="th-num">번호</th>
							<th scope="col" class="th-title">제목</th>
							<th scope="col" class="th-date">등록일</th>
						</tr>
					</thead>
			
					
<%
	int newsSize = newsList.size(); 	
		if(newsSize == 0){
%>

	<p>정보가 존재하지 않습니다.</p>
						
<%
	}else{
		
		/*반복문이 돌아가면서 newsList의 데이터가 NesVO nv에 할당됨  */
		for(NewsVO nv : newsList){
%>
					
		<tr>
			<td><%=nv.getNotiCd() %></td>
			<!-- 공지세부내용을  공지번호에 따라 제목 출력  1 라라랜드 ~~ -->
			<td><a href="./detail.do?notiCd=<%=nv.getNotiCd() %>"><%=nv.getNotiTitle() %></a></td>
			<td><%=nv.getNotiDate() %></td>
		</tr>
<%
		}
	}	
%>
				</table>
	 		</div>
		<a href="./insert.do"><p><button type="submit" class="btn btn-dark">등록</button></a>
	</div>	
</section>
	


<%
	if(msg.equals("ok")) {
%>
<script>
	alert('글이 등록되었습니다.');
</script>

<%
	}else if(msg.equals("okay")) {
%>
<script>
	alert('글이 수정되었습니다.');
</script>

<%
	}else if(msg.equals("success")) {
%>
<script>
	alert('글이 삭제되었습니다.');
</script>
<%
	}else {
%>

<%	
	}
%>

<%@include file="../../footer.jsp"%>
</body>
</html>