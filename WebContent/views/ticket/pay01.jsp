<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file= "../../mem_header.jsp" %>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>


.container{
	margin-top: 250px;
}

.container h1{
	margin-top: 220px;
    text-align: center;
}

.container p {
/* 	margin-bottom: 300px; */
	text-align: center;
}	
.btn_box{
	margin-bottom: 250px;
    text-align: center;
}
	
</style>
</head>
<body>

	<div class="container">
		<h2>티켓 결제가 완료되었습니다.</h2>
		<hr />
		<p>
			고객님 안녕하세요? <br />라라랜드를 이용해 주셔서 대단히 감사드립니다.<br /> <strong>결제완료
				되었습니다.</strong>
		
		</p>
		
		<div class="btn_box">
				 <a href="${pageContext.request.contextPath}/mypage/cmt.do"><button type="button" id="buy_btn" class="btn black-btn">예매 내역 확인</button></a>
		</div>
		
		
	</div>

<%@include file="../../footer.jsp" %>
</body>
</html>