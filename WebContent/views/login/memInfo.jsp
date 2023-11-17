<%@page import="member.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../../mem_header.jsp"%>
<%@include file="../../mem_aside.jsp"%>

<!DOCTYPE html>
<html>
<head>
<style>
.contents {
	width: 700px;
	margin-left: 570px;
}

.info {
	border-collapse: collapse;
	background-color: transparent;
}

.info th,
.info td {
	background-color: transparent;
	border-color: white;
	padding: 10px; /* 간격을 조정할 수 있는 padding 추가 */
}

.info th {
	border-bottom: 1px solid white;
	text-align: right; /* 오른쪽 정렬 추가 */
}

.info td {
	border: 1px solid white;
	text-align: center; /* 왼쪽 정렬 추가 */
	width: 600px;
}

.tit {
 margin-left: -300px;
	font-size: 24.9px;
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
<meta charset="UTF-8">
<script>
function enableEdit() {
  var inputs = document.getElementsByTagName("input");
  for (var i = 0; i < inputs.length; i++) {
    if (inputs[i].name !== "memId") {
      inputs[i].readOnly = false;
    }
  }
  document.getElementById("editButton").style.display = "none";
  document.getElementById("cancelButton").style.display = "inline-block";
}

function cancelEdit() {
  var inputs = document.getElementsByTagName("input");
  for (var i = 0; i < inputs.length; i++) {
    inputs[i].readOnly = true;
  }
  document.getElementById("editButton").style.display = "inline-block";
  document.getElementById("cancelButton").style.display = "none";
}
</script>
</head>
<body>
<strong class="tit">회원정보</strong>
	<div class="contents">
		<%
			MemberVO mv = (MemberVO) request.getAttribute("mv");
		%>

		<%
			if (mv == null) {
		%>
		<h2>회원 정보가 존재하지 않습니다.</h2>
		<%
			} else {
		%>
		
		<form id="updateForm" action="updateMember.jsp" method="post">
		  <table class="info" border="1">
		    <tr>
		      <th>ID</th>
		      <td><input type="text" class="form-control" name="memId" value="<%=mv.getMemId()%>" readonly></td>
		    </tr>
		    <tr>
		      <th>PW</th>
		      <td><input type="text" class="form-control" name="memPw" value="<%=mv.getMemPw()%>" 
		      required pattern="(?=.*[a-zA-Z])((?=.*\d)|(?=.*\W)).{6,20}" readonly></td>
		    </tr>
		    <tr>
		      <th>이름</th>
		      <td><input type="text" class="form-control" name="memName" value="<%=mv.getMemName()%>" readonly></td>
		    </tr>
		    <tr>
		      <th>생일</th>
		      <td><input type="text" class="form-control" name="memBirth" value="<%=mv.getMemBirth()%>" readonly></td>
		    </tr>
		    <tr>
		      <th>주소</th>
		      <td><input type="text" class="form-control" name="memAdd" value="<%=mv.getMemAdd()%>" readonly></td>
		    </tr>
		    <tr>
		      <th>상세주소</th>
		      <td><input type="text" class="form-control" name="memDadd" value="<%=mv.getMemDadd()%>" readonly></td>
		    </tr>
		    <tr>
		      <th>전화번호</th>
		      <td><input type="text" class="form-control" name="memTel" value="<%=mv.getMemTel()%>" readonly></td>
		    </tr>
		    <tr>
		      <th>이메일</th>
		      <td><input type="text" class="form-control" name="memEmail" value="<%=mv.getMemEmail()%>" readonly></td>
		    </tr>
		  </table>
		  <button type="button" class="cclick" id="editButton" onclick="enableEdit()">수정</button>
		  <button type="button" class="cclick" id="cancelButton" onclick="cancelEdit()" style="display: none;">수정 취소</button>
		  <button type="button" class="cclick" style="color:red;">탈퇴하기</button>
		</form>

		<%
			}
		%>
	</div>
</body>
</html>
