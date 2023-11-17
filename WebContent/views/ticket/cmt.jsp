<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="../../mem_header.jsp"%>
<meta charset="UTF-8">

<link rel="stylesheet" href="${pageContext.request.contextPath}/include/css/tkbuy.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/include/js/tkbuy.js"></script>
<script>
$(function(){
	$("#buy_btn").on("click",function(){
		let item_price = $(".item_price").html();
		console.log("item_price : " + item_price);
		
		item_price = item_price.replaceAll(",","");
		
		$("input[name='item_price']").val(item_price);
		
		if(item_price>0){
			$("#frm").submit();
		}else{
			alert("티켓을 선택해주세요");
		}
		
	});
	
	let selectedTickets = {};
	
    // Ajax 요청 보내기
    $.ajax({
      url: "${pageContext.request.contextPath}/cmt/main.do",
      method: "POST",
      contentType: "application/json",
      data: JSON.stringify(selectedTickets),
      success: function(response) {
        console.log("성공.");
        console.log(response); 
      },
      error: function(xhr, status, error) {
        console.log("실패.", status, error);
      }
    });
});
</script>
</head>
<body>


	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<form id="frm" action="${pageContext.request.contextPath}/views/ticket/cmtpay.jsp" method="post">
	<div class="WrapWidth">
		<div class="cart_table">
			<p>티켓 선택</p>
				
			<ul class="cart_list">
				<li>권종 선택</li>
				<li>

					<div class="item_detail">
						<img src="../../images/ticket/cmt03.jpg">
						<p class="name">
							<strong>정기권</strong>
						</p>
						<p class="age">A.대인</p>
					</div>
					<div class="opt_info">
						<strong class="price_unit">180,000</strong>원
						<div class="price_btn">
							<input type="button" value="-" class="minus_btn" /> 
							<input type="text" name="cmt001" value="0" class="number" /> 
							<input type="button" value="+" class="plus_btn" />
						</div>
						<div class="total_p">
							<strong class="price_amount"></strong>원 <span class="del_li_btn"></span>
						</div>
					</div>
				</li>

				<li>

					<div class="item_detail">
						<img src="../../images/ticket/cmt02.jpg">
						<p class="name">
							<strong>정기권</strong>
						</p>
						<p class="age">B. 청소년</p>
					</div>
					<div class="opt_info">
						<strong class="price_unit">160,000</strong>원
						<div class="price_btn">
							<input type="button" value="-" class="minus_btn" /> 
							<input type="text"  name="cmt002" value="0" class="number" /> 
							<input type="button" value="+" class="plus_btn" />
						</div>
						<div class="total_p">
							<strong class="price_amount"></strong>원 <span class="del_li_btn"></span>
						</div>
					</div>

				</li>
				<li>

					<div class="item_detail">
						<img src="../../images/ticket/cmt01.jpg">
						<p class="name">
							<strong>정기권</strong>
						</p>
						<p class="age">C. 소인</p>
					</div>
					<div class="opt_info">
						<strong class="price_unit">140,000</strong>원
						<div class="price_btn">
							<input type="button" value="-" class="minus_btn" /> 
							<input type="text" name="cmt003" value="0" class="number" />  
							<input type="button" value="+" class="plus_btn" />
						</div>
						<div class="total_p">
							<strong class="price_amount"></strong>원 <span class="del_li_btn"></span>
						</div>
					</div>

				</li>
				

					
			</ul>
			<div class="Notice">
				<ul>
					<li>※정기권 구매는 환불이 불가하오니 신중히 구매 바랍니다.</li>
					<li>※구매일로부터 1년동안 사용이 가능합니다.</li>
					<li>※제휴카드 할인은 일반 티켓 구매만 가능합니다.</li>
				</ul>
				
			</div>
			<div class="cart_total_area">
				<p>결제 정보</p>

				<div class="cart_total_price">
					<p>
						총 결제금액 <strong class="item_price">0</strong>원
						<input type="hidden" name="item_price" value="" />
					</p>

				</div>
			</div>

			<div class="btn_box">
				 <button type="button" id="buy_btn" class="btn black-btn">결제</button>
			</div>
		</div>
	</div>
	</form>
	<%@include file="../../footer.jsp"%>
</body>

</html>