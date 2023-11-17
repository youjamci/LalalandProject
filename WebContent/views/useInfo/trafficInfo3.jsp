<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../../mem_header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.WrapWidth {
	max-width: 640px;
	margin: 0 auto;
	font-family: Arial, sans-serif;
	margin-bottom: 100px;
	margin-top: 70px;
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

.normal_redbus li dl {
	background:
		url(https://wwwcdn.everland.com/web/images/front/everland/plan/red_bus.gif)
		no-repeat 17px top;
	padding-left: 140px;
}

.normal_nonstopbus li dl {
	background:
		url(https://wwwcdn.everland.com/web/images/front/everland/plan/nonstop_bus.gif)
		no-repeat 17px top;
	padding-left: 140px;
}

.normal_greenbus li dl {
	background:
		url(https://wwwcdn.everland.com/web/images/front/everland/plan/green_bus.gif)
		no-repeat 17px top;
	padding-left: 140px;
}

/* ul{list-style:none;}
 */
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

.tabmenu label {
	display: block;
	width: 100%;
	height: 40px;
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
.tour_bus2 li dl{
background: url(https://wwwcdn.everland.com/web/images/front/everland/plan/yellow_bus.gif) no-repeat 17px top;
padding-left: 140px;

}


</style>
</head>
<body>
	<div class="WrapWidth">
		<h4>라라랜드 교통정보</h4>
		<br>
		<div class="tabmenu out-tabmenu">
			<ul>
				<li id="tab1" class="btnCon"><input type="radio" name="tabmenu"
					id="tabmenu1"> <a
					href="http://localhost:8888/LalalandProject/views/useInfo/trafficInfo.jsp"
					target="_self"> 대중교통</a></li>
				<li id="tab2" class="btnCon"><a
					href="http://localhost:8888/LalalandProject/views/useInfo/trafficInfo2.jsp"
					target="_self"> <input type="radio" checked name="tabmenu"
						id="tabmenu2">자가용
				</a></li>
				<li id="tab3" class="btnCon"><input type="radio" checked
					name="tabmenu" id="tabmenu3">정기버스</li>
			</ul>
		</div>
		<br>
		<br>
		<ul class="sentence-small">
			<li> 정기 관광버스의 예약 관련 문의사항은 해당 여행사로 연락 부탁드립니다.</li>
			<li> 일부노선은 전화예약 한정 또는 주말 한정 노선으로 운영됩니다.</li>
			<li> 소요시간은 기상악화 및 교통사정에 따라 변동이 될 수도 있는 점 양해바랍니다.</li>
		</ul>
		<p class="bus_notify">
			<span class="mark">※정기 관광버스의 예약 관련 문의는 해당 여행사로 부탁드리며, 아래 예약 및 문의 버튼을 
			 <br>누르면 여행사 홈페이지로 연결됩니다.</span>
		</p>

		<h5 class="mt40">
			<img src="https://www.everland.com/web/images/front/everland/plan/h4_traffic_info05_12.gif"
				alt="서울">
		</h5>
		<ul class="tour_bus2 mt5">
			<li>
				<dl>
					<dd>서울(대성투어) 070-7655-7701</dd>
					<dd class="btn">
						<a href="http://www.daesungtour.co.kr/" target="_blank"
							title="새 창에서 열립니다."><img
							src="https://wwwcdn.everland.com/web/images/front/everland/plan/btn_all_route3.gif"
							alt="예약 및 문의"></a>
					</dd>
				</dl>
			</li>
			<li>
				<dl>
					<dd>서울(월드투어) 1599-3237</dd>
					<dd class="btn">
						<a href="http://www.worldbus.co.kr/everland/index.php"
							target="_blank" title="새 창에서 열립니다."><img
							src="https://wwwcdn.everland.com/web/images/front/everland/plan/btn_all_route3.gif"
							alt="예약 및 문의"></a>
					</dd>
				</dl>
			</li>
		</ul>
		<br>
		<h5 class="mt40">
			<img src="https://www.everland.com/web/images/front/everland/plan/h4_traffic_info05_11.gif"
				alt="경기(수원,안산) / 인천">
		</h5>
		<ul class="tour_bus2 mt5">
			<li>
				<dl>
					<dd class="btn">
						<a href="http://worldbus.co.kr/" target="_blank"
							title="새 창에서 열립니다."><img
							src="https://wwwcdn.everland.com/web/images/front/everland/plan/btn_all_route3.gif"
							alt="예약 및 문의"></a>
					</dd>
				</dl>
			</li>
		</ul>
		<br>

		<h5 class="mt40">
			<img
				src="https://wwwcdn.everland.com/web/images/front/everland/plan/h4_traffic_info05_10.gif"
				alt="강원">
		</h5>
		<ul class="tour_bus2 mt5">
			<li>
				<dl>
					<dd>원주</dd>
					<dd class="btn">
						<a href="http://seowontour-000.whoisgh.com/" target="_blank"
							title="새 창에서 열립니다."><img
							src="https://wwwcdn.everland.com/web/images/front/everland/plan/btn_all_route3.gif"
							alt="예약 및 문의"></a>
					</dd>
				</dl>
			</li>
		</ul>

		<h5 class="mt40">
			<img
				src="https://wwwcdn.everland.com/web/images/front/everland/plan/h4_traffic_info05_06.gif"
				alt="충청">
		</h5>
		<ul class="tour_bus2 mt5">
			<li>
				<dl>
					<dd>청주</dd>
					<dd class="btn">
						<a href="http://evertour114.co.kr/" target="_blank"
							title="새 창에서 열립니다."><img
							src="https://wwwcdn.everland.com/web/images/front/everland/plan/btn_all_route3.gif"
							alt="예약 및 문의"></a>
					</dd>
				</dl>
			</li>
			<li>
				<dl>
					<dd>
						대전, 세종 ※ 라라투어 사무실 : 042-252-5353
					</dd>
					<dd class="btn">
						<a href="http://www.evtour.co.kr/" target="_blank"
							title="새 창에서 열립니다."><img
							src="https://wwwcdn.everland.com/web/images/front/everland/plan/btn_all_route3.gif"
							alt="예약 및 문의"></a>
					</dd>
				</dl>
			</li>
			<li>
				<dl>
					<dd>천안</dd>
					<dd class="btn">
						<a href="http://worldbus.co.kr/" target="_blank"
							title="새 창에서 열립니다."><img
							src="https://wwwcdn.everland.com/web/images/front/everland/plan/btn_all_route3.gif"
							alt="예약 및 문의"></a>
					</dd>
				</dl>
			</li>
		</ul>

		<h5 class="mt40">
			<img
				src="https://wwwcdn.everland.com/web/images/front/everland/plan/h4_traffic_info05_07.gif"
				alt="부산">
		</h5>
		<ul class="tour_bus2 mt5">
			<li>
				<dl>
					<dd>부산(새부산)</dd>
					<dd class="btn">
						<a href="http://www.saepusan.co.kr/dome_everland" target="_blank"
							title="새 창에서 열립니다."><img
							src="https://wwwcdn.everland.com/web/images/front/everland/plan/btn_all_route3.gif"
							alt="예약 및 문의"></a>
					</dd>
				</dl>
			</li>
			<li>
				<dl>
					<dd>부산(은성관광)</dd>
					<dd class="btn">
						<a href="http://www.es365.co.kr/" target="_blank"
							title="새 창에서 열립니다."><img
							src="https://wwwcdn.everland.com/web/images/front/everland/plan/btn_all_route3.gif"
							alt="예약 및 문의"></a>
					</dd>
				</dl>
			</li>
		</ul>

		<h5 class="mt40">
			<img
				src="https://wwwcdn.everland.com/web/images/front/everland/plan/h4_traffic_info05_09.gif"
				alt="호남">
		</h5>
		<ul class="tour_bus2 mt5">
			<li>
				<dl>
					<dd>전주</dd>
					<dd class="btn">
						<a href="http://travelnara.kr" target="_blank" title="새 창에서 열립니다."><img
							src="https://wwwcdn.everland.com/web/images/front/everland/plan/btn_all_route3.gif"
							alt="예약 및 문의"></a>
					</dd>
				</dl>
			</li>
			<li>
				<dl>
					<dd>광주</dd>
					<dd class="btn">
						<a href="http://www.asiatour.co.kr/" target="_blank"
							title="새 창에서 열립니다."><img
							src="https://wwwcdn.everland.com/web/images/front/everland/plan/btn_all_route3.gif"
							alt="예약 및 문의"></a>
					</dd>
				</dl>
			</li>
		</ul>

		<h5 class="mt40">
			<img
				src="https://wwwcdn.everland.com/web/images/front/everland/plan/h4_traffic_info05_08.gif"
				alt="영남">
		</h5>
		<ul class="tour_bus2 mt5">
			<li>
				<dl>
					<dd>대구</dd>
					<dd class="btn">
						<a href="http://www.kstravel.co.kr/" target="_blank"
							title="새 창에서 열립니다."><img
							src="https://wwwcdn.everland.com/web/images/front/everland/plan/btn_all_route3.gif"
							alt="예약 및 문의"></a>
					</dd>
				</dl>
			</li>
			<li>
				<dl>
					<dd>울산</dd>
					<dd class="btn">
						<a href="http://www.taehwatour.co.kr/" target="_blank"
							title="새 창에서 열립니다."><img
							src="https://wwwcdn.everland.com/web/images/front/everland/plan/btn_all_route3.gif"
							alt="예약 및 문의"></a>
					</dd>
				</dl>
			</li>
		</ul>
	</div>

	<%@include file="../../footer.jsp"%>
</body>
</html>