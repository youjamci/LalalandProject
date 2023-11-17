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
	max-width: 650px;
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
 .tabmenu{ 
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
				<input type="radio" checked name="tabmenu" id="tabmenu1">대중교통
			</li>
			<li id="tab2" class="btnCon">
				<a href="http://localhost:8888/LalalandProject/views/useInfo/trafficInfo2.jsp" target="_self">
				<input type="radio" name="tabmenu" id="tabmenu2">자가용</a>
			</li>
			<li id="tab3" class="btnCon">
				<a href="http://localhost:8888/LalalandProject/views/useInfo/trafficInfo3.jsp" target="_self">
				<input type="radio" name="tabmenu" id="tabmenu3">정기버스</a>
			</li>
		</ul>
	</div>
	<br>
		
	<ul class="obeyList mt15"><br><br>
	<img src="https://wwwcdn.everland.com/web/images/front/everland/plan/EL_01.jpg"	alt="지하철 이용">
		<li><strong>분당선 기흥역까지 오셔서 라라라인(경전철)으로 환승하세요!<br></strong>
			- 라라라인 종점에 내려서 셔틀버스(무료)로 라라랜드까지 이동<br> 
			- 라라라인 운행시간 05:30~23:30</li>
			<br>
			
	<img src="https://wwwcdn.everland.com/web/images/front/everland/plan/EL_02.jpg" alt="버스 이용"><br>
		<img src="https://wwwcdn.everland.com/web/images/front/everland/plan/h4_traffic_info01.gif" alt="서울 출발">
			<ul class="normal_redbus">
			<strong>일반버스</strong>
					<li>
						<dl>
							<dt>5002번</dt>
							<dd>신논현역 – 강남역 - 양재역 경유</dd>
 						</dl>
					</li>
					<li>
						<dl>
							<dt>5700번</dt>
							<dd>강변역 - 잠실역 – 송파역 - 수서역 경유</dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt>1500-2번</dt>
							<dd>사당역 - 남부터미널 – 판교역 - 분당(서현역) 경유</dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt>1113번</dt>
							<dd>강변역 - 강동역 – 광주시청 - 외대입구 경유</dd>
						</dl>
					</li>
				</ul>
				
		<img src="https://wwwcdn.everland.com/web/images/front/everland/plan/h4_traffic_info02.gif" alt="인천 및 경기도 출발">
		<br>				
			<ul class="normal_nonstopbus">
			<strong>직행버스</strong>
					<li>
						<dl>
							<dt>8862번</dt>
							<dd>인천터미널 - 수원영통</dd>
						</dl>
					</li>
					<li class="last">
						<dl>
							<dt>8839번</dt>
							<dd>인천터미널 - 범계역</dd>
						</dl>
					</li>
				</ul>				
			<ul class="normal_greenbus">
			<strong>일반버스</strong>
					<li>
						<dl>
							<dt>66번</dt>
							<dd>수원역 – 수원 – 용인 경유</dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt>66-4번</dt>
							<dd>수원역 – 수원 – 동백 – 용인 경유</dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt>670번</dt>
							<dd>광교 – 수지 – 죽전 – 동백 경유</dd>
						</dl>
					</li>
				</ul>
		</ul>		
	</div>
<%@include file="../../footer.jsp"%>
</body>
</html>