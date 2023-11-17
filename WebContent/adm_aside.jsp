<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
	.sidenav {
		background-color: pink;
		margin-left: 80px;
		width: 200px;
		
	}

	.sidenav a {
		color: black;
		font-size: 15px;
	}
	
	.my-page-title {
		text-align: left;
		margin-left: 111px;
	}
</style>

<div class="container-fluid text-center">
	<div class="row content">
		<h2 class="my-page-title">관리페이지</h2>
		<div class="col-sm-2 sidenav text-left">
			<p>
				<a href="${pageContext.request.contextPath}/views/login/memList.do">회원정보</a>
			</p>
			<p>
				<a href="${pageContext.request.contextPath}/adminpage/adminMain.do">Q&A관리</a>
			</p>
			<p>
				<a href="${pageContext.request.contextPath}/views/ticket/adminticketpay.jsp">티켓 판매 조회</a>
			</p>
			<p>
				<a href="${pageContext.request.contextPath}/adminpage/cmt.do">정기권 판매 조회</a>
			</p>
			<p>
				<a href="${pageContext.request.contextPath}/adminpage/content.do">콘텐츠 예약 조회</a>
			</p>
			<p>
				<a href="${pageContext.request.contextPath}/goods/adminpay.do">굿즈 주문 조회</a>
			</p>
			<p>
				<a href="${pageContext.request.contextPath}/goods/adminsales.do">굿즈 매출 조회</a>
			</p>
		</div>
