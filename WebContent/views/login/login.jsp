<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=0, maximum-scale=10, user-scalable=yes">
<meta name="HandheldFriendly" content="true">
<meta name="format-detection" content="telephone=no">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<link rel="shortcut icon" href="/img/favicon.ico">
<title>로그인 | 라라랜드</title>
<style>
/* CSS 스타일을 추가하세요 */
/*         html, body { */
/*             height: 100%; */
/*         } */

/*         body { */
/*             font-family: Arial, sans-serif; */
/*             background-color: grey; */
/*             padding-top: 150px; */
/*             padding-bottom: 40px; */
/*         } */
#contents {
	padding: 60px;
	background-color: #eff1f0; /*로그인영역 배경*/
	padding-bottom: 140px;
}

.sub-tit-wrap {
	margin-left: 25%;
	margin-bottom: 20px;
}

.sub-tit {
	font-size: 24px;
	font-weight: bold;
	color: #333;
}

.login-wrap {
	display: flex;
	justify-content: space-between;
}

.left-con {
	width: 48%;
	margin-left: 25%; /* 수정된 부분: 오른쪽 여백 조정 */
}

.right-con {
	margin-right: 10%;
	width: 48%;
}

.login-tab {
	margin-bottom: 20px;
}

.login-tab ul {
	display: flex;
	list-style: none;
	padding: 0;
	margin: 0;
}

/*         .login-tab li { */
/*             margin-right: 10px; */
/*         } */
.login-tab li a {
	font-size: 18px;
	font-weight: bold;
	color: #333;
	text-decoration: none;
}

/*         .login-box { */
/*             margin-bottom: 30px; */
/*         } */

/*         .login-box label { */
/*             display: block; */
/*             margin-bottom: 5px; */
/*             font-weight: bold; */
/*             color: #333; */
/*         } */
.login-box input[type="text"], .login-box input[type="password"] {
	width: 50%;
	padding: 10px;
	margin-bottom: 20px;
	border: 1px solid #ccc;
	border-radius: 5px;
	font-size: 14px;
}

.chk-box {
	margin-bottom: 20px;
}

.chk-box input[type="checkbox"] {
	margin-right: 5px;
}

/* LOGIN버튼 */
/*         .btn-logsubmit { */
/*             display: block; */
/*             width: 30%; */
/*             padding: 10px; */
/*             background-color: #333; */
/*             color: #fff; */
/*             font-weight: bold; */
/*             border: none; */
/*             border-radius: 5px; */
/*             cursor: pointer; */
/*         } */
.login-etc {
	margin-bottom: 20px;
}

.login-etc h3 {
	font-size: 18px;
	font-weight: bold;
	color: #333;
	margin-bottom: 5px;
}

.login-etc p {
	margin-bottom: 10px;
}

.logbtn {
	display: inline-block;
	padding: 10px;
	background-color:;
	color: black;
	font-weight: bold;
	text-decoration: none;
	border-radius: 5px;
	cursor: pointer;
}

.logbtn.btn-line-brown {
	background-color: transparent;
	border: 1px solid #ccc;
	color: #333;
}

.logbtn.btn-line-brown:hover {
	background-color: #ccc;
	color: #333;
}

.cen {
	display: flex;
	justify-content: center;
}
</style>
</head>

<% if(request.getAttribute("msg") != null) {%>
<script>
		alert("아이디와 비밀번호를 다시 확인해주세요.");
</script>
<%	
		request.removeAttribute("msg");
	}
%>

<body>
	<%@include file="../../header.jsp"%>
	<main id="contents">
		<section class="sub-tit-wrap">
			<div class="maxinner">
				<h2 class="sub-tit"></h2>
			</div>
		</section>

		<section class="login">
			<div class="maxinner">
				<div class="login-wrap">
					<div class="left-con">
						<div class="login-tab">
							<ul>
								<li class="on"><a href="javascript:;">회원로그인</a></li>

							</ul>
							<select class="form-select" aria-label="Default select example">
								<option selected>회원</option>
								<option value="1">관리자</option>
							</select>
						</div>
						<div class="login-con-wrap">
							<div class="login-con" style="display: block;">
								<!-- 								<form name="loginForm" onsubmit="return loginSubmit()" method="post"> -->
								<!-- 								<form name="loginForm" method="post" action="/LalalandProject/Login"> -->
								
								<form name="loginForm" method="post"
									action="/LalalandProject/Login.do" id="loginForm">

									<div class="login-box">

										<label for="login_id" class="sound_only">아이디
										<strong class="sound_only"> </strong></label> 
										<input type="text" id="userId" class="form-control" name="userId"> 
										<label for="login_pw" class="sound_only">비밀번호
										<strong class="sound_only"> </strong></label> 
										<input type="password" id="userPw" class="form-control" name="userPw">
										
										<input type="submit" class="logbtn " id="loginForm"
												value="LOGIN">

										
									</div>
								</form>

							</div>
						</div>
					</div>
					<div class="right-con">
						<div class="login-etc">
							<h3>신규 회원가입</h3>
							<p>회원가입 후 다양한 혜택과 소식을 만나보세요.</p>
							<form action="/LalalandProject/Join" method="get">
							<div class="cen">
								<input type="submit" class="logbtn cen" id="regi"
									value="회원가입">
									</div>
							</form>

						</div>
						<div class="login-etc">
							<h3>아이디/비밀번호 찾기</h3>
							<p>간단한 정보를 입력 후 정보를 찾을 수 있습니다.</p>
<!-- 							<form action="idFind.jsp" method="get"> -->
							<form action="<%=request.getContextPath() %>/views/login/idFind.jsp" method="get">
							<div class="cen">
							<input type="submit" class="logbtn cen" style="margin-right: 10px;" id="idfind" value="아이디 찾기">
							<input type="submit" class="logbtn cen" id="idfind" value="비밀번호 찾기">
								</div>
							</form>
<!-- 							<button type="button" onclick="location.href='pwFind.jsp' ">비밀번호 찾기</button> -->
						</div>
					</div>
				</div>
			</div>
		</section>
	</main>
	<%@include file="../../footer.jsp"%>
	<script>
		document.getElementById("loginForm").addEventListener(
				"submit",
				function(event) {
					var selectedOption = document
							.querySelector(".login-tab select").value;
					var actionUrl = "/LalalandProject/Login.do";

					if (selectedOption === "1") { // "관리자" 옵션이 선택된 경우
						actionUrl = "/LalalandProject/AdLogin"; // 관리자 로그인을 위한 action URL로 변경
					}

					this.action = actionUrl;
				});
	</script>




</body>

</html>
