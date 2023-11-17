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
	max-width: 660px;
	margin: 0 auto;
	margin-bottom: 100px;
	margin-top: 70px;
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
	$(document).ready(function() {
		$('.tab_faq ul li a').click(function() {
			_satellite.track("filter_apply", {
				filter_name : $(this).data("title"),
				filter_type : "faq"
			});
		});
		$('.board_type_faq thead th:first-child').css('background', 'none');
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
			<li id="tab1" class="btnCon"><a
				href="http://localhost:8888/LalalandProject/views/qna/faq.jsp"
				target="_self"> <input type="radio" name="tabmenu" id="tabmenu1">종합이용안내
			</a></li>

			<li id="tab2" class="btnCon"><a
				href="http://localhost:8888/LalalandProject/views/qna/faq2.jsp"
				target="_self"><input type="radio" name="tabmenu" id="tabmenu2">홈페이지/비밀번호
			</a></li>
			<li id="tab3" class="btnCon"><input type="radio" checked
				name="tabmenu" id="tabmenu3">동물원/사육사</li>
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
								<span>14</span><em>[동물원/사육사]</em>[쥬쥬월드] 쥬쥬월드 버스는
									예약이 안되나요? 
							</dt>
							<dd class="on">
								<p>A. 쥬쥬월드 버스는 자유이용권을 소지하신 손님 모두가 이용하실 수 있는 어트랙션입니다.</p>
								<p>쥬쥬월드 버스 이외에도 쥬쥬월드 스페셜 투어라는 전문 사육사의 설명과 함께</p>
								<p>특수 개조된 지프를 타고 쥬쥬월드 월드를 구석구석 탐험하는 프로그램은</p>
								<p>홈페이지에서 예약제로 운영하고 있으니 참고 부탁드립니다.</p>
							</dd>
							<dt>
								<span>13</span><em>[동물원/사육사]</em>[쥬쥬월드 스페셜 투어] 비가
									와도 이용이 가능한가요? 
							</dt>
							<dd>

								<p>국지적 호우시에는 이용이 불가하며 약한비에는 이용이 가능하나 먹이체험이 제한될수 있습니다.</p>

							</dd>
							<dt>
								<span>12</span><em>[동물원/사육사]</em>[쥬쥬월드 스페셜 투어]
									전화예약은 가능한가요?
							</dt>
							<dd>

								<p>전화예약은 불가하며 온라인으로만 예약을 받고있습니다.</p>

							</dd>
							<dt>
								<span>11</span><em>[동물원/사육사]</em>[쥬쥬월드 스페셜 투어]
									쥬쥬월드 버스관람의 차이는 무엇인가요?
							</dt>
							<dd>

								<p>동물을 좀더 가까이 보실수 있으며 맹수 먹이주기 체험이 가능합니다.</p>

							</dd>
							<dt>
								<span>10</span><em>[동물원/사육사]</em>[쥬쥬월드 스페셜 투어] 생후
									몇개월까지 인원수에 포함되나요?
							</dt>
							<dd>

								<p>영아포함 모든 인원은 6명까지만 가능합니다.</p>

							</dd>
							<dt>
								<span>9</span><em>[동물원/사육사]</em>[쥬쥬월드 스페셜 투어] 예약은
									몇일 전부터 가능한가요?
							</dt>
							<dd>

								<p>30일 전까지 예약이 가능합니다. 주말은 조기마감이 빠르니 선예약은 필수!</p>

							</dd>
							<dt>
								<span>8</span><em>[동물원/사육사]</em>[쥬쥬월드 스페셜 투어] 어디서
									탑승하나요?
							</dt>
							<dd>
								<p>알파인 매표소에서 예약 잔금 결제 후 쥬쥬월드월드 직원에게 문의하시어</p>
								<p>쥬쥬월드 상품점 안으로 들어오시면 대기장소가 있습니다.</p>
							</dd>
							<dt>
								<span>7</span><em>[동물원/사육사]</em>[쥬쥬월드 스페셜 투어] 예약은
									홈페이지에서만 가능한가요?
							</dt>
							<dd>

								<p>현장예약제도 있으나 현장예약은 수량이 적어 조기매진 될 수 있습니다.</p>

							</dd>
							<dt>
								<span>6</span><em>[동물원/사육사]</em>[쥬쥬월드 스페셜 투어]
									이용권과는 별도인가요?
							</dt>
							<dd>
								<p>쥬쥬월드 스페셜 투어는 별도의 체험 프로그램이므로,</p>
								<p>에버랜드 이용권과 별도로 구입하셔야 합니다.</p>
							</dd>
							<dt>
								<span>5</span><em>[동물원/사육사]</em>[쥬쥬월드 스페셜 투어] 꼭
									6명을 맞춰야 되나요 다른손님과 합승하나요?
							</dt>
							<dd>

								<p>다른손님과 합승하지 않으며 1명이라도 가능합니다.</p>

							</dd>
							<dt>
								<span>4</span><em>[동물원/사육사]</em>동물사랑단 체험학습 예약은
									어떻게 하나요?
							</dt>
							<dd>

								<p>
									<font face="">체험학습스쿨은 평소에 가까이 하지 못했던 동물들과 친구가 될 수 있는
									</font>
								</p>
								<p>
									<font face="">좋은 기회를 주는 동물 체험학습 프로그램으로 매년 초 동물사랑단원에 </font>
								</p>
								<p>
									<font face="">가입하신 경우에 한하여 체험신청이 가능합니다.</font>
								</p>

							</dd>
							<dt>
								<span>3</span><em>[동물원/사육사]</em>우천 시에도 쥬쥬월드를
									운영하나요?
							</dt>
							<dd>

								<p>쥬쥬월드 월드는 우천시 운행은 되나 시야를가릴 정도의 우천이나,</p>
								<p>천둥번개가 동반한 경우 운행이 중단될수 있습니다.</p>

							</dd>
							<dt>
								<span>2</span><em>[동물원/사육사]</em>쥬쥬월드 스페셜 투어 이용방법을
									알려주세요.
							</dt>
							<dd>
								<p>
									<font face="">쥬쥬월드 스페셜 투어는 전문 사육사와 함께 특수 개조된 지프를 타고 </font>
								</p>
								<p>
									<font face="">쥬쥬월드를 탐험하는 프로그램이며 </font>호랑이, 사자 등의 맹수를 손에
									잡힐 듯
								</p>
								<p>가까운 거리에서 관찰하고 먹이를 주며 곰의 귀여운 재롱도 코앞에서 즐길 수 있습니다</p>
								<p>
									<font face="">쥬쥬월드 스페셜투어는 온라인 예약 및 현장 신청을 통해서만 이용이
										가능하며, </font>
								</p>
								<p>
									<font face="">별도 전화예약은 받고 있지 않습니다.</font>
								</p>
								<p>
									<font face="" color="red">투어 시간 : 약 25분 </font>
								</p>
								<p>
									<font face="" color="red">탑승 인원 : 최대 6명 (성인 및 유아포함)
										※정원초과시 탑승하실 수 없습니다. </font>
								</p>
								<p>
									<font face="" color="red">이용 요금 : A,B,C시즌 : 300,000원
										/ D시즌 : 350,000원</font>
								</p>
							</dd>
							<dt>
								<span>1</span><em>[동물원/사육사]</em>동물사랑단은 무엇인가요?
							</dt>
							<dd>

								<p>
									<font face="">어린이 동물사랑단은 어린이들이 자연과 동물에 대해 바로 알고, </font>
								</p>
								<p>
									<font face="">올바른 사랑을 실천하여 미래의 환경친화적 지도자로 성장해 나가도록 </font>
								</p>
								<p>
									<font face="">도와주는 멤버십 프로그램입니다</font>
								</p>

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