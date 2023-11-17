<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.spacer {
	height: 20px;
}

#contents {
	padding: 60px;
	background-color: #eff1f0;
}

.form-horizontal {
	margin-left: 20px;
}

.form-group {
	display: flex;
	align-items: center;
}

.form-group label {
	width: 70px;
}

.form-group .form-control {
/* 	flex: 1; */
	margin-left: 100px;
	width: 300px;
}
.cclick{
   background-color: #F4F4F4;
   position: relative;
    border: none;
    display: inline-block;
    padding: 10px 25px;
    border-radius: 15px;
    font-family: "paybooc-Light", sans-serif;
/*     box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2); */
/*     text-decoration: none; */
/*     font-weight: 600; */
/*     transition: 0.25s; */
    border: 2px solid grey;
    font-size: 13px;
    margin-top: 30px;
    margin-left: 560px; 

/*      float: right;  */
}
</style>


</head>
<%@include file="../../header.jsp"%>
<body>
	<div class="container" style="margin-left: 600px; margin-right: 1000px;">
		<div style="height: 20px;"></div>
		<h4 style="text-align: left;">아이디 찾기</h4>
		<hr>

		<form name="idFindForm" method="post" action="/LalalandProject/FindId"
			id="idFindForm">
			<div class="form-group">
				<label for="name" class="control-label col-sm-2" style="width: 100px;">
					이름 
				</label>
				<input type="text" class="form-control" id="name" name="mem_name">
			</div>
			<div class="form-group">		 
				<label for="mail" class="control-label col-sm-2" style="width: 100px;">
				이메일
				</label>
				<input type="email" class="form-control" id="mail" name="mem_email" required
					pattern="[0-9a-zA-Z]+@[0-9a-zA-Z]+(\.[a-z]+){1,2}"
					onblur="validateEmail()">

				
			</div>
		 	 	<div class="chk-box" style="margin-left: -180px; margin-bottom: 200px;">
					<input type="submit" class="idfindbtn cclick" id="idFindForm" value="아이디찾기">
				</div>
		</form>

	</div>



</body>
</html>
<%@include file="../../footer.jsp"%>
