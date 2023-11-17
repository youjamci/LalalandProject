<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="mem_header.jsp" %>

<html>
<head>
<meta charset="UTF-8">
<style>
	#contents {
		padding: 60px;
		background-color: #eff1f0; /* 로그인 영역 배경 */
	}
	
	.sidenav {
		background-color: pink;
		margin-left: 80px;
		width: 200px;
	}

	.sidenav a {
		color: black;
		font-size: 15px;
	}

	.main-content {
		margin-left: 320px; /* 조정 가능한 값 */
		padding: 20px;
	}
	
	.row {
		display: flex;
		flex-wrap: wrap;
	}
	
	.col-aside {
		flex: 0 0 200px;
	}
	
	.col-main {
		flex: 1;
		padding: 20px;
	}
</style>
</head>
<body>
	<div class="container-fluid text-left">
		<div class="row">
			<div class="col-aside">
				<%@include file="mem_aside.jsp" %>
			</div>
			<div class="col-main"> 
				<%@include file="/views/goods/mygoodspay.jsp" %>
			</div>
		</div>
	</div>
</body>
</html>
