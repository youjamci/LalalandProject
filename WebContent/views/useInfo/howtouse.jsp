<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="../../mem_header.jsp"%>

<title>이용 방법</title>
<style>
.WrapWidth {
	max-width: 750px;
	margin: 0 auto;
	font-family: Arial, sans-serif;
	margin-bottom:100px;
	margin-top:70px;
}

h4 {
	font-size: 25px;
	font-weight: bold;
	margin-bottom: 20px;
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

</style>
</head>
<body>
	<div class="WrapWidth">
		<h4>라라랜드 이용방법</h4>
		<br>
	<ul class="obeyList mt15">
		<li><strong>안전하고 즐거운 이용을 위하여 아래 물품의 반입을 제한하고 있습니다.<br>
			</strong> - 버너/돗자리(1인용 방석 제외)/애완동물(안내견 제외)<br> 
			- 자전거/인라인/킥보드 등 소형탑승기구,무선조종탑승기구</li>
		<li><strong>다른 손님에게 피해를 줄 수 있는 행동은 삼가 주세요.<br>
			</strong> - 잔디, 꽃밭 훼손, 대기 동선에서 부정한 방법으로 줄 서기<br> 
			- 고성방가, 과격한 행동, 음주 후 어트랙션 이용, 벤치에 눕는 행위 등<br> 
			- 흡연은 흡연구역으로 표시된 지역에서만 가능합니다.</li>
		<li><strong>가지고 오신 도시락은 피크닉 영역에서 이용해 주세요.</strong><br> 
		- 레스토랑 및 야외테라스에서는 도시락을 드실 수 없습니다.<br> 
		- 피크닉 영역은 현장의 가이드북을 참고해 주세요.</li>
		<li><strong>동물에게 음식을 주거나 플래시를 켜고 촬영하는 것은 삼가 주세요.</strong></li>
		<li><strong>어린이는 목말을 태우는 것은 위험하오니 삼가 주세요.</strong></li>
		<li><strong>어트랙션 이용 Tip</strong><br> 
		- 지정된 좌석에서 안전장치를 정확히 잠그고 바른 자세로	이용해 주세요.<br> 
		- 떨어지기 쉬운 물건은 소지하지 말고 탑승해 주세요.<br> 
		- 탑승 중에는 촬영, 취식 같은 위험한 행동은 삼가 주세요.<br> 
		- 탑승객의 건강 상태에 따른 탑승자 안전 기준을 준수해주세요. <br> 
		- 고객과&nbsp;동물의 안전을 위하여 일부 어트랙션과 동물원 일부 시설은	보조견의&nbsp;동반 이용이 제한될 수 있습니다.</li>
		<li><strong>스마트 줄서기 시행 안내</strong><br> 
		- 스마트줄서기 적용 기종 이용 시 라라랜드 App에서 해당 시설 스마트 줄서기 신청 후 <br>
		&nbsp;&nbsp;예약된 시간에 이용하실 수 있습니다. 
		<a	href="https://www.everland.com/web/everland/now/news/1221220_10436.html"
			target="_blank">
			<img
				src="https://www.everland.com/web/images/front/everland/plan/btn_more.png"
				alt="자세히보기"></a></li>
		<li><strong>장애인 탑승예약제도 시행 안내</strong><br> 
		- 오랜시간 줄 서기가 어려운 일부 장애인 손님들의 이용을 돕고자 '장애인 탑승예약제'를 시행하오니<br>
		&nbsp;&nbsp;손님들의 많은 협조를 부탁드립니다. 
		<a href="https://www.everland.com/web/everland/now/news/1220557_10436.html"
			target="_blank">
			<img
				src="https://www.everland.com/web/images/front/everland/plan/btn_more.png"
				alt="자세히보기"></a></li>
		<li class="last"><strong>최선을 다하는 근무자를 존중해 주십시오.</strong><br> 
		- 실수나 미흡한 점이 있더라도 반말이나 욕설, 신체 접촉은 삼가 주세요.<br> 
		- 건의사항은 관리자를 호출해 말씀해주세요. (대표번호 : 031-480-1004)<br></li>
	</ul>

		<div class="mt20">
			<img
				src="https://wwwcdn.everland.com/web/images/front/everland/plan/20140522_satify.png"
				alt="안전가이드북 보기" usemap="#guide_book">
			<map name="guide_book">
				<area shape="rect"
					href="http://www.everland.com/web/everland/how/Everland_attraction_safe_guidebook.pdf"
					coords="156,98,316,126" target="_blank" alt="어트랙션 안전 가이드북 보기"
					data-link-area="이용정보-이용방법" data-link-name="가이드북pdF_어트랙션 안전가이드북">
				<area shape="rect"
					href="https://www.everland.com/web/everland/main/popup/person_notice.html"
					onclick="javascript:window.open(this.href,'','location=no,status=no,width=595,height=680,scrollbars=yes'); return false;"
					coords="325,98,540,126" alt="장애인 손님 어트랙션 이용 가이드 보기"
					data-link-area="이용정보-이용방법"
					data-link-name="가이드북pdF_장애인 손님 어트랙션 이용 가이드">
			</map>
		</div>
	</div>
	<%@include file="../../footer.jsp"%>
</body>
</html>