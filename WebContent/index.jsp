<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style>
#carousel-example-generic, .carousel-inner {
	width: 1400px;
	height: 500px;
	margin: auto; /* 가운데 정렬을 위한 추가 설정 */
}

.carousel-inner .item .image-container img {
	width: 1400px;
	height: 500px;
}
</style>

<style>
#carousel-example-generic, .carousel-inner {
	width: 1400px;
	height: 500px;
	margin: auto; /* 가운데 정렬을 위한 추가 설정 */
}

.carousel-inner .item .image-container img {
	width: 1400px;
	height: 500px;
	max-width: 100%;
	max-height: 100%;
}

.carousel-inner .item .image-container {
	display: flex;
	justify-content: center;
}

.tb0 {
	border-collapse: collapse;
	border: 1px solid white;
	/* 	background-color: #d4a7fb; */
	border-radius: 16px;
	/*     	box-shadow: inset 0 0 9px #deb13a; */
	width: 440px;
	height: 440px;
	margin-top: 20px;
	margin-left: 430px;
	margin-bottom: 30px;
}

.tb0 td {
	text-align: center;
	vertical-align: middle;
	flex-basis: 50%;
	padding: 10px;
}

.tb0 td img {
	width: 300px;
}

.tb1 {
	border-collapse: collapse;
	border: 1px solid #F5646F;
	/* 	background-color: #d4a7fb; */
	border-radius: 16px;
	/*     	box-shadow: inset 0 0 9px #deb13a; */
	width: 440px;
	height: 440px;
	margin-top: 220px;
	margin-left: 400px;
	margin-bottom: 30px;
}

.tb1 p {
	text-align: center;
	vertical-align: middle;
  
}

.tb2 {
	border-collapse: collapse;
	border: 1px solid #F5646F;
	border-radius: 16px;
	width: 440px;
	height: 440px;
	margin-top: -470px;
	margin-left: 1000px;
	margin-bottom: 30px;
}

.tb2 td {
	text-align: center;
	vertical-align: middle;
	/*   flex-basis: 10%; */
	padding-left: 23px;
}

.tb2 td img {
	width: 182px;
}

.tb2 {
	display: flex;
	flex-wrap: wrap;
}

.tb2 h2 {
	text-align: center;
	margin: 0 auto;
	margin-top: 30px;
}

#whats-new {
	margin: 0 0 40px;
	color: #3b3b3b;
	font-size: 15px;
	font-weight: 400;
	font-family: "Noto Sans KR", Montserrat, "Malgun Gothic", Dotum,
		sans-serif;
	letter-spacing: -1px;
}

.sun {
	width: 1000px;
	height: 3px;
	background-color: black;
}
</style>
</head>

<!-- 헤더코드 위치 -->
<%@include file="mem_header.jsp"%>



<%-- [<%= request.getAttribute("joinCode") %>] --%>
<%-- [<%= session.getAttribute("loginCode") %>] --%>

<% 
	String joinCd = (String)request.getAttribute("joinCode");
	if(joinCd == "yes"){
		//회원가입(join.jsp)페이지를 인클루트 하고..
%>
<%-- 		<%@include file="views/login/join.jsp" %> --%>
<%
	}else{
		//원래의 본문 보이기..	
%>
<%-- [<%= request.getAttribute("joinCode") %>] --%>
<!-- 	    <div class="col-sm-8 text-left">  -->
<!-- 	      <h2>Welcome (코드에 따라 보여지는 화면이 달라지게 함)</h2> -->
<!-- 	    </div> -->
<%
	}
%>
<!-- 요기서 부터 -->

<section class="slider-section">
	<div id="carousel-example-generic" class="carousel slide"
		data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators slider-indicators">
			<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
			<li data-target="#carousel-example-generic" data-slide-to="1"></li>
			<li data-target="#carousel-example-generic" data-slide-to="2"></li>
			<li data-target="#carousel-example-generic" data-slide-to="3"></li>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<div class="image-container">
					<img
						src="${pageContext.request.contextPath}/include/images/dorothy.jpg"
						width="1648" height="600" alt="">
				</div>

			</div>
			<div class="item">
				<img
					src="${pageContext.request.contextPath}/include/images/sb.jpg"
					width="1648" height="600" alt="">
			</div>
			<div class="item">
				<img
					src="${pageContext.request.contextPath}/include/images/ghost.jpg"
					width="1648" height="600" alt="">
			</div>
			<div class="item">
				<img
					src="${pageContext.request.contextPath}/include/images/aespa.jpg"
					width="1648" height="600" alt="">
			</div>
			
		</div>

		<!-- Controls -->
		<a class="left carousel-control" href="#carousel-example-generic"
			role="button" data-slide="prev"> <span
			class="pe-7s-angle-left glyphicon-chevron-left" aria-hidden="true"></span>
		</a> <a class="right carousel-control" href="#carousel-example-generic"
			role="button" data-slide="next"> <span
			class="pe-7s-angle-right glyphicon-chevron-right" aria-hidden="true"></span>
		</a>
		<hr>

	</div>
</section>


<div id="whats-new">
	<div class="content-inner">
		<h3 class="title-large line">
			<strong class="title-bold">What’s New</strong>
			<p class="title-thin">꿈과 환상의 나라로 어서오세요!</p>
			<hr class="sun">
		</h3>


		<div class="tb0">
			<!-- 		<h2>BEST 굿즈</h2> -->

			<table>
				<tr>
					<td style="text-align: center; vertical-align: middle;"><img
						src="${pageContext.request.contextPath}/include/images/mainimg/pubaobro.jpg"></td>
					<td style="text-align: center; vertical-align: middle;"><img
						src="${pageContext.request.contextPath}/include/images/mainimg/iwant.jpg"></td>
					<td style="text-align: center; vertical-align: middle;"><img
						src="${pageContext.request.contextPath}/include/images/mainimg/sum.jpg"></td>
				</tr>
				<tr>
					<td style="text-align: center; vertical-align: middle;">푸바오 동생이 태어났어요♡</td>
					<td style="text-align: center; vertical-align: middle;">I WANT YOU  참전샷을 투척하라!</td>
					<td style="text-align: center; vertical-align: middle;">본격 여름 준비! 라라랜드 썸머 굿즈 이미지</td>
				</tr>
				<tr>
					<td style="text-align: center; vertical-align: middle;"><img
						src="${pageContext.request.contextPath}/include/images/mainimg/mol.jpg"></td>
					<td style="text-align: center; vertical-align: middle;"><img
						src="${pageContext.request.contextPath}/include/images/mainimg/waterbattle.jpg"></td>
					<td style="text-align: center; vertical-align: middle;"><img
						src="${pageContext.request.contextPath}/include/images/mainimg/shoot.jpg"></td>
				</tr>
				<tr>
					<td style="text-align: center; vertical-align: middle;">무더운 여름  시원한 메뉴 추천</td>
					<td style="text-align: center; vertical-align: middle;">워터 레인저스  배틀 패키지</td>
					<td style="text-align: center; vertical-align: middle;">시원한 슈팅게임 너프 워터배틀존</td>
				</tr>
			</table>
			<hr class="sun">
		</div>


	</div>
</div>


<div class="tb1">
	<h2>공지사항</h2>
	<table>
		<tr>
			<a href="http://localhost:8888/LalalandProject/news/udetail.do?notiCd=1">			
				<p>일회용품 사용 금지 안내</p>
			</a>
		</tr>
		<tr>
			<a href="http://localhost:8888/LalalandProject/news/udetail.do?notiCd=2">			
				<p>★라라랜드 캐스트 채용★</p>
			</a>
		</tr>
		<tr>
			<a href="http://localhost:8888/LalalandProject/news/udetail.do?notiCd=3">			
				<p>쉬고 즐기는 썬더폴스 휴게공간</p>
			</a>
		</tr>
		<tr>
			<a href="http://localhost:8888/LalalandProject/news/udetail.do?notiCd=4">			
				<p>유모차 웨건, 신형 유모차 예약 OPEN!</p>
			</a>
		</tr>
		<tr>
			<a href="http://localhost:8888/LalalandProject/news/udetail.do?notiCd=5">			
				<p>어트랙션 정기 안전 점검 계획(7~8월)</p>
			</a>
		</tr>
		<tr>
			<a href="http://localhost:8888/LalalandProject/news/udetail.do?notiCd=7">			
				<p>동물원 팬 카페♥</p>
			</a>
		</tr>
		<tr>
			<a href="http://localhost:8888/LalalandProject/news/udetail.do?notiCd=8">			
				<p>장애인 탑승 예약제 시행 안내</p>
			</a>
		</tr>
	</table>
</div>
<div class="tb2">
	<!-- 		<h2>BEST 굿즈</h2> -->

	<table>
		<tr>
			<h2>BEST 굿즈</h2>
		</tr>
		<tr>
			<td style="text-align: center; vertical-align: middle;">라라 뮤직박스</td>
			<td style="text-align: center; vertical-align: middle;">드래곤 방패검</td>
		</tr>
		<tr>
			<td style="text-align: center; vertical-align: middle;"><img
				src="${pageContext.request.contextPath}/images/goods/27e25b5c3c9d41dc8ec8573de6a68d44.jpg"></td>
			<td style="text-align: center; vertical-align: middle;"><img
				src="${pageContext.request.contextPath}/images/goods/b9e8e275d6f04b8f977ff483e1e1459b.jpg"></td>
		</tr>
		<tr>
			<td style="text-align: center; vertical-align: middle;">동물 코스튬 키링</td>
			<td style="text-align: center; vertical-align: middle;">하트 요술봉</td>
		</tr>
		<tr>
			<td style="text-align: center; vertical-align: middle;"><img
				src="${pageContext.request.contextPath}/images/goods/c143cc7272724e94810c604e07683450.jpg"></td>
			<td style="text-align: center; vertical-align: middle;"><img
				src="${pageContext.request.contextPath}/images/goods/8d9d2bf0b74b4b20a215bb341aa08e24.jpg"></td>
		</tr>

	</table>
</div>

<!-- 여기까지 -->

<style>
.carousel-inner .item .image-container {
	display: flex;
	justify-content: center;
}

.carousel-inner .item .image-container img {
	max-width: 100%;
	max-height: 100%;
}
</style>


<style>
.carousel-inner .item .image-container {
	display: flex;
	justify-content: center;
}

.carousel-inner .item .image-container img {
	max-width: 100%;
	max-height: 100%;
}
</style>




<!-- 푸터영역 -->
<%@include file="footer.jsp"%>

</body>
</html>
