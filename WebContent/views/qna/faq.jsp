<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../../mem_header.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.tabmenu {
	max-width: 600px;
	margin: 0 auto;
	position: relative;
}

.tabmenu ul {
	position: relative;
}

.tabmenu ul li {
	display: inline-block;
	width: 33.33%;
	float: left;
	text-align: center;
	background: #f9f9f9;
	line-height: 40px;
}

.tabmenu input {
	display: none;
}

.tabmenu input:checked ~ label {
	background: #ccc;
}

.tabmenu input:checked ~ .tabCon {
	display: block;
}

.WrapWidth {
	max-width: 650px;
	margin: 0 auto;
	margin-bottom:100px;
	margin-top:70px;
}

.board_type_faq tbody td dl dd {
    display: none;
    padding: 15px 20px 15px 10px;
    border-bottom: 3px solid #F5646F; 
    background: #F6F6F6;

}
</style>
</head>
	<script type="text/javascript">
		$(document).ready(
				function() {
					$('.tab_faq ul li a').click(function() {
						_satellite.track("filter_apply", {
							filter_name : $(this).data("title"),
							filter_type : "faq"
						});
					});
					$('.board_type_faq thead th:first-child').css('background',
							'none');
					$('.board_type_faq dl dt').click(function(e) {
						e.preventDefault();
						$(this).siblings('dd').slideUp('fast');
						$('.board_type_faq dl dt').removeClass('on');
						$(this).next('dd').slideDown('fast');
						$(this).addClass("on");

						_satellite.track("faq_click", {
							faq_name : $(this).find("a").text()
						});
					});
				});
	</script>

<body>
	<!-- <div class="rbox no_top">
		<div class="box_content pad_t0">
			<div class="customer_area" -->
				<p class="mb30">
					<img
						src="https://www.everland.com/web/images/front/everland/customer/img_faq.gif"
						alt="궁금한 내용이 있으시면 FAQ를 통하여 빠르게 찾아 보세요.">
				</p>
				<div class="tabmenu out-tabmenu">
					<ul>
						<li id="tab1" class="btnCon"><input type="radio" checked
							name="tabmenu" id="tabmenu1">종합이용안내</li>
						<li id="tab2" class="btnCon">
						<a href="http://localhost:8888/LalalandProject/views/qna/faq2.jsp" target="_self"> <input
								type="radio" name="tabmenu" id="tabmenu2">홈페이지/비밀번호
						</a></li>
						<li id="tab3" class="btnCon">
						<a href="http://localhost:8888/LalalandProject/views/qna/faq3.jsp" target="_self"> <input
								type="radio" name="tabmenu" id="tabmenu3">동물원/사육사
						</a></li>
					</ul>
				</div>
			<br>
			<div class="WrapWidth">
				<table class="board_type_faq" summary="게시판">
					<colgroup>
						<col width="12%">
						<col width="*">
					</colgroup>
					<tbody>
						<tr>
							<td colspan="2">
								<dl>
									<dt class="on">
										<span>15</span><em>[종합이용안내]</em>콤비권은 라라랜드와
											캐리비안베이 중 어느 곳부터 이용해야 하나요?
									</dt>
									<dd class="on">

										<p>
											이용 순서에 관계없이 이용 가능합니다.
										</p>
										<p>
											- 1일 콤비권 : 1일동안 라라랜드, 캐리비안 베이 각 1회
												이용가능
										</p>
										<p>
											- 2일 콤비권 : 2일동안 라라랜드, 캐리비안 베이 각 1일
												이용가능
										</p>

									</dd>
									<dt>
										<span>14</span><em>[종합이용안내]</em>국가유공자 혜택은 어떻게
											되나요?
									</dt>
									<dd>
										<p>국가 유공자 손님은 본인의 라라랜드 이용권 50%할인이 가능하며,</p>
										<p>6월과 10월에는 국가유공자 손님을 위한 무료 이용 행사가 진행됩니다.</p>
									</dd>
									<dt>
										<span>13</span><em>[종합이용안내]</em>유모차 비닐커버도 대여
											가능한가요?
									</dt>
									<dd>

										<p>대여는 불가하며, 파크내 상품점에서 유료로 판매되고 있습니다.</p>

									</dd>
									<dt>
										<span>12</span><em>[종합이용안내]</em>뜨거운 물은 어디에서 구할
											수 있나요?
									</dt>
									<dd>

										<p>안전관계상 온수는 따로 비치되어 있거나 제공되지 않습니다.</p>
										<p>개인적으로 보온병에 담아오시는 경우에 이용 가능합니다.</p>

									</dd>
									<dt>
										<span>11</span><em>[종합이용안내]</em>2Day 이용권, 콤비권도
											할인되나요?</a>
									</dt>
									<dd>

										<p>
											이미 할인이 적용된 금액이기 때문에 제휴카드 및 우대쿠폰과 중복할인
												되지 않습니다.
										</p>

									</dd>
									<dt>
										<span>10</span><em>[종합이용안내]</em>개별권, Big3,
											Big4 권은 없나요?
									</dt>
									<dd>

										<p>
											개별권, Big3, Big4권은 폐지되어 놀이시설 1가지라도
												이용하시기 위해서는 자유이용권을 구매하셔야 합니다.
										</p>

									</dd>
									<dt>
										<span>9</span><em>[종합이용안내]</em>마감시간까지 이용하려면
											주간권과 오후권 둘 다 구매해야 하나요?
									</dt>
									<dd>

										<p>
											주간권은 종일권으로 개장시간부터 마감시간까지 이용 가능합니다. 
										</p>

									</dd>
									<dt>
										<span>8</span><em>[종합이용안내]</em>제휴카드 혜택을 받고
											싶은데 부모님 카드를 사용해도 되나요?</a>
									</dt>
									<dd>

										<p>다른 가맹점과 마찬가지로 신용카드의 경우 카드 명의자 본인에 한하여 사용 가능하며</p>
										<p>라라랜드 이용권 제휴카드 할인 역시 본인에 한해 적용되고 있습니다.</p>
										<p>단, 부모님께서 온라인으로 예매 해주시면 대인 금액에서 할인 적용 가능하며</p>
										<p>예매 완료 후 전송 받은 문자 메시지 또는 예매확인증을 지참하시어 라라랜드 정문 게이트에 제시해
											주시면 됩니다.</p>

									</dd>
									<dt>
										<span>7</span><em>[종합이용안내]</em>제휴카드 보여주고 다른
											카드나 현금으로 결제해도 되나요? 
									</dt>
									<dd>

										<p>제휴카드 우대 혜택은 해당 카드로 결제 시에만 적용됩니다.</p>

									</dd>
									<dt>
										<span>6</span><em>[종합이용안내]</em>제휴카드 여러장 가지고
											있는데, 각각 할인 받을 수 있나요?
									</dt>
									<dd>

										<p>
											카드사가 다르고, 카드별로 실적이 충족한다면 각각 할인받아서 매표할
												수 있습니다만
										</p>
										<p>
											 같은 카드사의 카드인 경우 일부카드사는 주민등록번호 기준으로  
										</p>
										<p>
											<font face="">1일 1회 승인을 내려주기 때문에 하루에 하나의 카드만 결제 가능할
												수 있습니다. </font>
										</p>
										<p>
											<font face="">정확한 확인은 해당카드사로 문의하시면 확인 가능합니다.</font>
										</p>

									</dd>
									<dt>
										<span>5</span><em>[종합이용안내]</em>사파리 버스투어만 이용하는
											티켓은 없나요? 
									</dt>
									<dd>
										<p>
											<font face="">사파리 버스투어만 이용하는 별도의 티켓은 없고, 자유이용권 구매 시
												무료이용 가능합니다. </font>
										</p>
									</dd>
									<dt>
										<span>4</span><em>[종합이용안내]</em>외국인을 위한 할인혜택은
											없나요?
									</dt>
									<dd>
										<p>라라랜드 홈페이지 상단 LANGUAGE 클릭 후 국가별 언어를 선택하시어 이동하는 외국인 전용
											홈페이지에서</p>
										<p>Everland &gt; Everland Guide &gt; Ticket &amp; Coupon 내
											할인쿠폰을 출력, 또는 촬영해 오시면 됩니다.</p>
										<p>쿠폰 출력 또는 촬영이 어려울 경우 여권 또는 외국인 신분증을 지참하여 가지고 오시면 동일한 혜택을
											받으실 수 있습니다.</p>
									</dd>
									<dt>
										<span>3</span><em>[종합이용안내]</em>라라랜드 자체에서 운행하는
											셔틀버스가 있나요?
									</dt>
									<dd>
										<p>라라랜드 리조트 단지 내 주차장간 이동 시에만 셔틀버스 이용이 가능합니다.</p>
										<p>라라랜드를 찾아 오실 때는 관광버스 회사에서 자체적으로 운영하는 버스 또는 대중교통편을 이용해주시기
											바랍니다.</p>
										<p>※ 관광버스 또는 대중교통 이용 문의는 해당 관광사 또는 버스회사로 문의하여 주시기 바랍니다.</p>
									</dd>
									<dt>
										<span>2</span><em>[종합이용안내]</em>주차료는 얼마입니까?
									</dt>
									<dd>
										<p>
											라라랜드/캐리비안베이 정문 주차장은 유료이며,<br> 외곽주차장인 1~3번 주차장은 무료로 운영하고
											있습니다.<br>발레 주차요금은 일일 25,000원입니다.
										</p>
									</dd>
									<dt>
										<span>1</span><em>[종합이용안내]</em>오후권도 제휴카드 할인
											가능한가요?
									</dt>
									<dd>
										<p>오후권의 경우 온라인 예매가 불가능하며
										이용 당일 오후 지정된 시간에 자유이용권에 한하여 현장 결제시 우대혜택을 받을 수 있습니다. </p>

									</dd>
								</dl>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		

	<%@include file="../../footer.jsp"%>
</body>
</html>