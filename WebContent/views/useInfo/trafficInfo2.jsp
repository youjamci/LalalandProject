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
	max-width: 680px;
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

.normal_redbus li dl {
background: url(https://wwwcdn.everland.com/web/images/front/everland/plan/red_bus.gif) no-repeat 17px top;
padding-left: 140px;
}

.normal_nonstopbus li dl{
background: url(https://wwwcdn.everland.com/web/images/front/everland/plan/nonstop_bus.gif) no-repeat 17px top;
padding-left: 140px;
}

.normal_greenbus li dl{
background: url(https://wwwcdn.everland.com/web/images/front/everland/plan/green_bus.gif) no-repeat 17px top;
padding-left: 140px;

}

/* ul{list-style:none;}
 */.tabmenu{ 
  max-width:600px; 
  margin: 0 auto; 
  position:relative; 
}
.tabmenu ul{
  position: relative;
}
.tabmenu ul li{
  display:  inline-block;
  width:33.33%; 
  float:left;  
  text-align:center; 
  background :#f9f9f9;
  line-height:40px;
}
.tabmenu label{
  display:block;
  width:100%; 
  height:40px;
  line-height:40px;
}
.tabmenu input{display:none;}

.tabmenu input:checked ~ label {
  background:#ccc;
}

.tabmenu input:checked ~ .tabCon {
  display:block;
}

</style>
</head>
<body>
	<div class="WrapWidth">
		<h4>라라랜드 교통정보</h4><br>
		<div class="tabmenu out-tabmenu">
		<ul>
			<li id="tab1" class="btnCon">
				<input type="radio" name="tabmenu" id="tabmenu1">
				<a href="http://localhost:8888/LalalandProject/views/useInfo/trafficInfo.jsp" target="_self">
				대중교통</a>
			</li>
			<li id="tab2" class="btnCon">
				<input type="radio" checked name="tabmenu" id="tabmenu2">자가용
			</li>
			<li id="tab3" class="btnCon">
				<a href="http://localhost:8888/LalalandProject/views/useInfo/trafficInfo3.jsp" target="_self">
				<input type="radio" name="tabmenu" id="tabmenu3">정기버스</a>
			</li>
		</ul>
	</div>
	<br>
		
	<ul class="obeyList mt15"><br><br>
	<img src="https://wwwcdn.everland.com/web/images/front/everland/plan/EL_car01.jpg" alt="자가용 이용">
		<ul class="useInfo">
			<li class="l16">주차 안내 캐스트가 가까운 주차장으로 안내해 드립니다.</li>
			<li class="l16 last">주차장–정문 간 셔틀버스(무료)가 운행됩니다. (유모차 탑승 가능)</li>					
		</ul><br>

	<img src="https://wwwcdn.everland.com/web/images/front/everland/plan/EL_car04.jpg" alt="자가용 주차 안내"></h4>
		<ul class="useInfo">
			<li class="l16">정문 주차장 만차 시 주차요원(안내판)이 운영중인 외곽 주차장으로 안내해 드립니다. </li>
			<li class="l16">각 주차장과 정문 간 무료 셔틀버스가 운행됩니다. (유모차 탑승 가능)</li>
			<li class="l16">정문 주차장은 캠핑카 및 카라반 입차 및 주차가 불가합니다. </li>
			<li class="l16">캠핑카, 카라반은 운영 중인 외곽 주차장 (1~3번 주차장)에서 주차 목적을 위해서만 허용 되며 <br>취식 및 숙식은 불가합니다.</li>
			<li class="l16 last">라라랜드 영업 종료 후 반드시 출차 해야하며 야간 순찰에 따른 책임은 당사에서 책임 지지 않습니다.</li>
		</ul><br>
		
	<img src="https://wwwcdn.everland.com/web/images/front/everland/plan/EL_car05.jpg" alt="발레파킹 이용 안내"></h4>
		<ul class="useInfo">
			<li class="l16">정문 주차장에 오시면 안전하게 차량을 주차하였다가 귀가할 때 내린 곳으로 차량을 갖다 드리는 <br>발레파킹 서비스를 이용하실 수 있습니다.</li>
			<li class="l16">이용요금 : 대당 25,000원 </li>
			<li class="l16">이용시간 : 라라랜드 영업시간과 동일 </li>
			<li class="l16">사전 발레파킹 예약 차량은 주차장 만차 여부와 상관없이 발레파킹 라운지(정문 주차장)로 진입하시기 바랍니다.</li>
            <li class="last">발레파킹 이용객이 많을 시 입차 대기시간이 길어질 수 있습니다.</li>
		</ul><br>
							
	<!-- <img src="https://wwwcdn.everland.com/web/images/front/everland/plan/EL_car02.jpg" alt="라라랜드 리조트 및 주차장 지도"></h4>
	<img src="/mobile/images/etc/img_parkinglot.png" alt="라라랜드 리조트 및 주차장 지도" style="width: 670px; height: auto;"></p> -->
	
	</div>

<%@include file="../../footer.jsp"%>
</body>
</html>