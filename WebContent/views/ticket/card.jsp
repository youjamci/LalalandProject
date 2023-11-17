<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file= "../../mem_header.jsp" %>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.WrapWidth {
	max-width: 1000px;
	margin: 0 auto;
}

.creditCardArea {
	margin: 40px 0 80px;
}

.creditHeader h4 {
	font-size: 2.49rem;
	line-height: 1.2;
}

.creditList {
	margin-top: 40px;
}

.creditList > ul {
	display: flex;
	flex-wrap: wrap;
	margin: -8px;
}

.creditList .creditInfo {
	width: calc(33.333% - 16px);
	margin: 8px;
	padding: 56px 0;
	text-align: center;
	border: 1px solid #e5e5e5;
	border-radius: 8px;
}

.creditInfo h5 {
	font-size: 1.49rem;
	font-weight: 700;
}

.creditInfo img {
	width: 100%;
	max-width: 200px;
	margin-top: 16px;
}

.creditInfo ul {
	margin-top: 24px;
}

.creditInfo li {
	margin-top: 16px;
}

.creditInfo li:first-child {
	margin-top: 0;
}

.creditInfo a {
	padding-top: 10px;
	padding-left: 30px;
	color: #000;
	border-top: 1px solid #e5e5e5;
	position: relative;
}

.creditInfo a:before {
	content: '';
	width: 24px;
	height: 24px;
	background-size: 24px;
	position: absolute;
	top: 8px;
	left: 0;
}

.creditInfo .call a {
	border-top: none;
}

.creditNotice {
	margin-top: 32px;
}

.creditNotice li {
	margin-top: 4px;
	padding-left: 12px;
	position: relative;
	list-style-type: none; 
}

.creditNotice li:before {
	content: '';
	width: 4px;
	height: 4px;
	background: #000;
	border-radius: 50px;
	position: absolute;
	top: 10px;
	left: 0;
}

.creditNotice li .red {
	color: #fe2419;
}

.creditNotice .note {
	margin-top: 4px;
	color: #999;
}

.creditList ul {
	list-style-type: none; /* Remove the marker */
}
</style>


</head>
<body>
	<div class="creditCardArea">
		<div class="WrapWidth">
			<div class="creditHeader">
				<h4>
					 <br> <strong>제휴카드</strong>
				</h4>
			</div>
			<div class="creditList">
				<ul>
					<li class="creditInfo">
						<h5>비씨카드</h5> <img src="../../images/ticket/card_bc.png"
						alt="비씨카드">
						<ul>
							<li class="call"><a href="tel:1588-4000" target="_blank">1588-4000</a>
							</li>
							<li><a href="https://www.bccard.com" target="_blank">제휴카드
									알아보기</a></li>
						</ul>
					</li>
					<li class="creditInfo">
						<h5>현대카드</h5> <img src="../../images/ticket/card_hd.png"
						alt="현대카드">
						<ul>
							<li class="call"><a href="tel:1577-6000" target="_blank">1577-6000</a>
							</li>
							<li><a href="https://www.hyundaicard.com" target="_blank">제휴카드
									알아보기</a></li>
						</ul>
					</li>
					<li class="creditInfo">
						<h5>NH농협카드</h5> <img src="../../images/ticket/card_nh.png"
						alt="농협카드">
						<ul>
							<li class="call"><a href="tel:1644-4000" target="_blank">1644-4000</a>
							</li>
							<li><a href="https://card.nonghyup.com" target="_blank">제휴카드
									알아보기</a></li>
						</ul>
					</li>
					<li class="creditInfo">
						<h5>삼성카드</h5> <img src="../../images/ticket/card_ss.png"
						alt="삼성카드">
						<ul>
							<li class="call"><a href="tel:1588-8700" target="_blank">1588-8700</a>
							</li>
							<li><a href="https://www.samsungcard.com" target="_blank">제휴카드
									알아보기</a></li>
						</ul>
					</li>
					<li class="creditInfo">
						<h5>롯데카드</h5> <img src="../../images/ticket/card_lotte.png"
						alt="롯데카드">
						<ul>
							<li class="call"><a href="tel:1588-8100" target="_blank">1588-8100</a>
							</li>
							<li><a href="https://www.lottecard.co.kr" target="_blank">제휴카드
									알아보기</a></li>
						</ul>
					</li>

				</ul>
			</div>
			<div class="creditNotice">
				<ul>
					<li>제휴 할인은 입장 전 할인 적용 대상 카드로 온라인 예매 또는 현장 매표소 결제 시 해당됩니다.</li>
					<li>신용카드 제휴 할인은 카드 명의자 <b class="red">본인 1인 1회에 가능</b>하며, 타인에게
						양도 사용이 불가능합니다.
					</li>
					<li>제휴카드 할인은 <b class="red">대인 요금 기준</b>에서만 할인이 됩니다.
					</li>
					<li>쿠폰, 단체 할인, 타 카드사 사용 등 <b class="red">중복 할인은 적용되지 않습니다.</b></li>
					<li>카드 실적 및 대상은 카드사에서 정한 기준에 따라 서비스가 제한될 수 있으며, 정확한 정보는 해당
						카드사에 문의 바랍니다.</li>
					<li>청구할인 대상 카드의 할인 가능 여부는 당사에서 확인이 불가능하며, <b class="red">결제
							요청 전</b> 해당 카드사에 확인하시기 바랍니다.
					</li>
				</ul>
				<p class="note">※ 상기내용은 카드사의 사정에 따라 변동될 수 있습니다.</p>
			</div>
		</div>
	</div>



<%@include file="../../footer.jsp" %>
</body>
</html>