<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<%
	String gdCd = session.getAttribute("gdCd") == null ? "" : (String)session.getAttribute("gdCd");
	
	%>
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
		<h2 class="my-page-title">마이페이지</h2>
		<div class="col-sm-2 sidenav text-left">
			<p>
				<a href="${pageContext.request.contextPath}/views/login/memInfo.do">내정보</a>
			</p>
			<p>
				<a href="${pageContext.request.contextPath}/mypage/content.do">콘텐츠 예약 내역</a>
			</p>
			<p>
				<a href="${pageContext.request.contextPath}/mypage/ticket.do">티켓 구매 내역</a>
			</p>
			<p>
				<a href="${pageContext.request.contextPath}/mypage/cmt.do">정기권 구매 내역</a>
			</p>
			<p>
				<a href="${pageContext.request.contextPath}/mypage/goodspay.do">굿즈 주문 내역</a>
			</p>
			<p>
				<a href="${pageContext.request.contextPath}/goods/mypageshoppinglist.do" >굿즈 장바구니</a>
<%-- 				<a href="${pageContext.request.contextPath}/goods/goodsbucket.do?gdCd=<%=gdCd %>" >굿즈 장바구니</a> --%>
			</p>
			<p>
				<a href="${pageContext.request.contextPath}/mypage/zzim.do">굿즈 찜</a>
			</p>
			<p>
				<a href="${pageContext.request.contextPath}/mypage/qnalist.do">나의 Q&A 내역</a>
			</p>
		</div>
