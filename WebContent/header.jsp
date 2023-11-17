<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html class="java" lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>LaLaLand</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="images/favicon.png">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/include/css/style.css">
<link href="https://fonts.googleapis.com/css?family=Amatic+SC"
	rel="stylesheet">
<link rel="stylesheet" href="https://codepen.io/srh1013/pen/JxvjjJ.css">
<!-- JQUERY -->
<script
	src="${pageContext.request.contextPath}/include/js/vendor/jquery-1.11.2.min.js"></script>
<script
	src="${pageContext.request.contextPath}/include/js/vendor/bootstrap.min.js"></script>
<script
	src="${pageContext.request.contextPath}/include/js/isotope.pkgd.min.js"></script>
<script
	src="${pageContext.request.contextPath}/include/js/owl.carousel.min.js"></script>
<script src="${pageContext.request.contextPath}/include/js/wow.min.js"></script>
<script src="${pageContext.request.contextPath}/include/js/custom.js"></script>
<style>
.loogoo {
	display: block; /* 이미지를 블록 요소로 설정하여 가운데 정렬을 위해 */
	margin: 0 auto; /* 가로 여백을 auto로 설정하여 가운데 정렬을 위해 */
	width: 500px;
	cursor: pointer; /* 커서를 손가락 모양으로 변경하여 클릭 가능한 모양으로 표시 */
	margin-top: 75px;
}
</style>
</head>


<body>
	<header>
		<nav id="navigation">
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li class="active dropdown"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown">information <span
							class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a
								href="http://localhost:8888/LalalandProject/news/umain.do">뉴스공지</a></li>
							<li><a
								href="http://localhost:8888/LalalandProject/views/useInfo/howtouse.jsp">이용방법</a></li>
							<li><a
								href="http://localhost:8888/LalalandProject/views/useInfo/calendar.html">운영시간</a></li>
							<li><a href="#">운휴안내</a></li>
							<li><a
								href="http://localhost:8888/LalalandProject/views/useInfo/trafficInfo.jsp">교통정보</a></li>
							<li><a
								href="http://localhost:8888/LalalandProject/facility.do">편의시설</a></li>
							<li><a
								href="http://localhost:8888/LalalandProject/views/useInfo/guidemap.jsp">위치안내</a></li>
						</ul></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">ticket<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a
								href="http://localhost:8888/LalalandProject/views/ticket/charge.jsp">이용요금</a></li>
							<li><a
								href="http://localhost:8888/LalalandProject/views/ticket/card.jsp">제휴카드</a></li>
							<li><a
								href="http://localhost:8888/LalalandProject/views/ticket/ticket.jsp">티켓예매</a></li>
							<li><a
								href="http://localhost:8888/LalalandProject/views/ticket/cmt.jsp">정기권
									구매</a></li>
							<li><a
								href="http://localhost:8888/LalalandProject/views/ticket/content.jsp">콘텐츠
									예약</a></li>
						</ul></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">attraction<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a
								href="http://localhost:8888/LalalandProject/attraction.do">어트랙션</a></li>
							<li><a href="#">컨텐츠</a></li>
							<li><a href="#">애니토피아</a></li>
							<li><a href="#">플랜토피아</a></li>
							<li><a
								href="http://localhost:8888/LalalandProject/restaurant.do">레스토랑</a></li>
						</ul></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">goods<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a
								href="http://localhost:8888/LalalandProject/offgdshop.do">오프라인
									굿즈샵</a></li>
							<li><a
								href="http://localhost:8888/LalalandProject/goods/main.do">온라인
									굿즈샵</a></li>
						</ul></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">cs<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a
								href="http://localhost:8888/LalalandProject/views/qna/faq.jsp">자주하는
									질문</a></li>
							<li><a
								href="http://localhost:8888/LalalandProject/qna/usermain.do">문의</a></li>
						</ul></li>
					<li><a
						href="http://localhost:8888/LalalandProject/views/login/login.jsp">login/register</a>
				</ul>
			</div>
		</nav>
		<a href="http://localhost:8888/LalalandProject/main.jsp">
            <img class="loogoo" src="${pageContext.request.contextPath}/include/images/logo.png">
        </a>
		<!-- 		<h1> -->
		<!-- 			<a href="http://localhost:8888/LalalandProject/main.jsp">LaLaLand</a> -->
		<!-- 		</h1> -->
	</header>
</body>