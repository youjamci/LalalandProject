<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="../../mem_header.jsp"%>
<link rel="stylesheet" href="style.css">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/include/css/tkpay.css">
<script>
$(document).ready(function () {
	
	
	<%-- $("#buy_btn").on("click", function () {
		
		event.preventDefault();
		let formData = $('form').serialize();
		
		$.ajax({
			type: 'post',
			url: '<%=request.getContextPath() %>/cmt/cmtPay.do',
			data: formData,
			success: function(msg){
				if(msg != null) {
					console.log(msg);
					location.href = "../ticket/pay02.jsp"
				}else{
					alert("결제가 취소되었습니다.");
					location.href = "../cmt/main.do"
				}
			},
			error: function(xhr){
				console.log(xhr.status);
			}
		});
		
	}); --%>
	
});
</script>
</head>

<body>
<%
	//로그인 아이디 => CMT_BUY테이블의 MEM_ID 컬럼의 데이터로 사용예정
	String memId = (String)session.getAttribute("loginCode");

	String item_price = request.getParameter("item_price");
//  	out.print("item_price : " + item_price + "<br />");

	
	String cmt001 = request.getParameter("cmt001");
	String cmt002 = request.getParameter("cmt002");
	String cmt003 = request.getParameter("cmt003");
	
//  	out.print("cmt001 : " + cmt001 + "<br />");
//  	out.print("cmt002 : " + cmt002 + "<br />");
//  	out.print("cmt003 : " + cmt003 + "<br />");

	
//  	out.print("memId : " + memId + "<br />");
	
	
%>
	<div class="tkcontainer">
		<div class="col-md-4 tkleft-con bg-default">
			<h4 class="my-4">방문자 정보 입력</h4>
			<form>
				<div class="form-row">
					<div class="form-group">
						<label for="firstname">이름</label> <input type="text"
							class="form-control" id="name" placeholder="이름">
						<div class="invalid-feedback">유효한 이름을 입력해주세요.</div>
					</div>
				</div>

				<div class="form-group">
					<label for="email">이메일</label> <input type="email"
						class="form-control" id="email" placeholder="you@example.com"
						required>
					<div class="invalid-feedback">이메일을 입력해주세요.</div>
				</div>

				<div class="form-group">
					<label for="telephone">전화번호</label> <input type="text"
						class="form-control" id="telephone" placeholder="010-1234-5678"
						required>
					<div class="invalid-feedback">전화번호를 입력해주세요.</div>
				</div>

				<hr>

				<div class="total_price">
					<label for="sum">총 결제 금액</label>
					<p>
						<strong class="item_price"><%=item_price%></strong>원
					</p>

				</div>
				<div class="form-check">
					<input type="checkbox" class="form-check-input"
						id="shipping-adress"> 구매 내용을 확인하였습니다. <label
						for="shipping-adress" class="form-check-label"></label>
				</div>

				<div class="form-check">
					<input type="checkbox" class="form-check-input" id="same-adress">
					구매 내용에 동의합니다. <label for="same-adress" class="form-check-label"></label>
				</div>

			</form>
		</div>

		<div class="col-md-4 tkright-con">
			<h4 class="mb-4">결제 유형</h4>
			<form id="frm" name="frm" action="cmtpay_process.jsp" method="post">
				<input type="hidden" name="memId"  value="<%=memId%>" />
				<input type="hidden" name="item_price" value="<%=item_price%>" />
				<input type="hidden" name="cmt001"  value="<%=cmt001%>" />
				<input type="hidden" name="cmt002"  value="<%=cmt002%>" />
				<input type="hidden" name="cmt003"  value="<%=cmt003%>" />
				<div class="form-check">
					<input type="radio" class="form-check-input" id="credit"
						name="cmtpMh" value="신용카드" checked required> <label
						for="credit" class="form-check-label">신용카드</label>
				</div>

<!-- 				<div class="form-check"> -->
<!-- 					<input type="radio" class="form-check-input" id="paypal" -->
<!-- 						name="cmtpMh" value="카카오페이" required src="/includes/js/kakao.js"><label for="paypal" -->
<!-- 						class="form-check-label">카카오페이</label> -->
<!-- 				</div> -->

				<div class="row mt-4">
					<div class="col-md-6 form-group">
						<label for="card-name">카드 소유자</label> <input type="text"
							class="form-control" id="card-name" placeholder required>
						<div class="invalid-feedback">카드 소유자의 이름을 입력해주세요.</div>
					</div>

					<div class="col-md-6 form-group">
						<label for="card-no">카드 번호</label> <input type="text"
							class="form-control" id="card-no" placeholder required>
						<div class="invalid-feedback">신용카드 번호를 입력해주세요.</div>
					</div>
				</div>

				<div class="row mt-4">
					<div class="col-md-6 form-group">
						<label for="expiration">유효 기간</label> <input type="text"
							class="form-control" id="card-name" placeholder required>
						<div class="invalid-feedback">유효 기간을 입력해주세요.</div>
					</div>

					<div class="col-md-6 form-group">
						<label for="ccv-no">CVC</label> <input type="text"
							class="form-control" id="sec-no" placeholder required>
						<div class="invalid-feedback">CVC 코드를 입력해주세요.</div>
					</div>
				</div>

				<hr class="mb-4">
				<button id="buy_btn" class="btn btn-primary bt-lg btn-block">결제</button>
			</form>
		</div>
	</div>
	<%@include file="../../footer.jsp"%>
</body>
</html>