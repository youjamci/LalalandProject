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
	max-width: 700px;
	margin: 0 auto;
	font-family: Arial, sans-serif;
	margin-bottom:100px;
	margin-top:70px;
}

h4 {
	font-size: 20px;
	font-weight: bold;
	margin-bottom: 20px;
}


.TicketSortWrap {
	display: flex;
	flex-wrap: wrap;
	justify-content: space-between;
	margin-top: 20px;
}

.TicketSort {
	flex-basis: calc(33.33% - 10px);
	margin-bottom: 20px;
	background-color: #f4f4f4;
	border-radius: 5px;
	padding: 20px;
}

.TicketSort h5 {
	text-align: center;
	font-size: 18px;
	margin-bottom: 10px;
}

.TicketSort h5 span {
	font-weight: bold;
}

.inner {
	margin-top: 10px;
}

.TicketList {
	display: flex;
	justify-content: space-between;
	align-items: center;
}

.TicketList dt {
	font-weight: bold;
}

.TicketList dd {
	margin-left: 10px;
}

.TicketList span {
	color: #FA58AC;
	font-weight: bold;
}

dt {
	font-weight: bold;
}

dd {
	margin: 0;
}

ul {
	margin-top: 20px;
	list-style-type: disc;
	padding-left: 20px;
}

li {
	margin-bottom: 10px;
}

li.hi ul {
	margin-top: 10px;
	list-style-type: square;
	padding-left: 20px;
}

li.hi li {
	margin-bottom: 5px;
}

li.hi li:before {
	content: "-";
	margin-right: 5px;
}

li:last-child {
	margin-bottom: 0;
}

.bold-red {
	font-weight: bold;
	color: #fe2419;
}
</style>
</head>
<body>
	<div class="WrapWidth">
		<h4>
			파크이용권 <span>요금안내</span>
		</h4>
		<br>
		<div class="TicketSortWrap">
			<div class="TicketSort">
				<h5>
					<span> 자유이용권 </span>
				</h5>
				<div class="inner">
					<div class="TicketList TicketOne">
						<dl>
							<dt>대인</dt>
							<dd>
								<span>48,000원</span>
							</dd>
							<dt>청소년</dt>
							<dd>
								<span>42,000원</span>
							</dd>
							<dt>소인</dt>
							<dd>
								<span>36,000원</span>
							</dd>
						</dl>
					</div>
				</div>
			</div>
			<div class="TicketSort">
				<h5>
					<span> <span>[특별할인]</span> 빅5
					</span>
				</h5>
				<div class="inner">
					<div class="TicketList TicketOne">
						<dl>
							<dt>어른</dt>
							<dd>
								<span>34,000원</span>
							</dd>
							<dt>청소년</dt>
							<dd>
								<span>31,000원</span>
							</dd>
							<dt>어린이</dt>
							<dd>
								<span>28,000원</span>
							</dd>
						</dl>
					</div>
				</div>
			</div>
			<div class="TicketSort">
				<h5>
					<span> <span>[특별할인]</span> 빅3
					</span>
				</h5>
				<div class="inner">
					<div class="TicketList TicketOne">
						<dl>
							<dt>어른</dt>
							<dd>
								<span>25,000원</span>
							</dd>
							<dt>청소년</dt>
							<dd>
								<span>18,000원</span>
							</dd>
							<dt>어린이</dt>
							<dd>
								<span>13,000원</span>
							</dd>
						</dl>
					</div>
				</div>
			</div>
		</div>
		<ul>
			<li>파크이용권은 라라랜드 입장 및 놀이시설 이용 가능한 티켓입니다.</li>
			<li>소인은&nbsp; 36개월부터&nbsp; 초등학생 , 청소년은 중학생부터 고등학생까지입니다.</li>
			<li>36개월 미만은 증빙서류지참 시에 한해 무료로 이용가능합니다.(이용기준 가능기종에 한함)</li>
			<li><b><font color="#fe2419">안전상의 문제로 노약자,어린이 및 몸이
						불편하신분은 시설이용시 제한되는 기종이 발생될 수 있으니<br>이용에 참고하시기 바랍니다.
				</font></b></li>
			<li class="hi">우대할인적용
				<ul>
					<li>- 국가유공자 : 종일이용권 50% [동반1인] / 국가유공자증 제시 시</li>
					<li>- 장애인 : 종일이용권 50% [보호자(만 19세 이상) 동반1인] / 장애인증 또는 복지카드 제시 시</li>
					<li>- 경로 : 65세이상 종일이용권 15,000원 / 경로우대증, 주민등록증 제시 시</li>
					<li>- 임신부 : 종일이용권 15,000원 / 산모수첩과 신분증 제시 시</li>
				</ul>
			</li>
			<li>고객여러분의 안전을 위해 어트랙션(놀이기구)의 안전 점검을 상시적으로 시행하고 있습니다.</li>
			<li>기상상황 악화시, 혹은 파크 사정상 예고없이 어트랙션 운행이 중단될 수 있습니다.</li>
			<li>본 요금은 사전 예고없이 변동될 수 있으니 고객여러분의 많은 양해 바랍니다.</li>
			<li>요금문의 : 대표전화 486-1004</li>
			<li>문의하시기 전에 FAQ를 먼저 확인해주세요. 쉽게 처리하실 수 있습니다.</li>
		</ul>
	</div>
<%@include file="../../footer.jsp" %>
</body>
</html>