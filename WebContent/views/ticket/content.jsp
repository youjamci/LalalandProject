<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="../../mem_header.jsp"%>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.WrapWidth {
	max-width: 500px;
	margin: 0 auto;
}

h5 {
	margin: 10px 0;
}

select,
input[type="button"],
input[type="text"] {
	width: 100%;
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 5px;
}

select {
	appearance: none;
/* 	background: url(arrow-down.svg) no-repeat right center; */
	background-size: 15px;
	padding-right: 30px;
}

.date-inputs {
	display: flex;
	align-items: center;
	gap: 10px;
}

.date-inputs input[type="date"] {
	width: 150px;
}

.person-inputs {
	display: flex;
	align-items: center;
	gap: 10px;
}

.person-inputs input[type="text"] {
	width: 50px;
}

.btn_wrap {
	text-align: center;
	margin-top: 30px;
}

.btn_wrap a.btn_type,
input[type="button"].btn_type {
	display: inline-block;
	padding: 10px 20px;
	background-color: #F5A9D0;
	color: #fff;
	font-size: 16px;
	font-weight: bold;
	text-decoration: none;
	border-radius: 3px;
	margin-bottom: 50px;
	transition: background-color 0.3s ease;
	cursor: pointer;
}

.btn_wrap a.btn_type:hover,
input[type="button"].btn_type:hover {
	background-color: #be1558;
	transform: scale(1.05);
}
</style>

<script>
	let ctSn;
	
window.onload = function(){
	// Add button effect for input[type="button"] elements
	var buttons = document.querySelectorAll('input[type="button"].btn_type');
	let ctDate;
	let ctCd;
	let memId;
	let ctReshm;
	
	buttons.forEach(function(button) {
		button.addEventListener('click', function() {
			this.style.backgroundColor = '#be1558';
			this.style.transform = 'scale(1.05)';
			
			ctSn = this.value;
		});		
	});
}

function fn_next() {
	ctDate = document.querySelector('input[type="date"]').value;
	ctCd = document.querySelector('.content').value;
	if(document.querySelector('#adult').value != "") {
		ctReshmA = document.querySelector('#adult').value;
	} else {
		ctReshmA = 0;
	}	
	if(document.querySelector('#kid').value != "") {
		ctReshmK = document.querySelector('#kid').value;
	} else {
		ctReshmK = 0;
	}
	
	console.log(ctDate, ctSn, ctCd, ctReshmA, ctReshmK);
	
	let ctData = {
		"ctDate": ctDate,
		"ctSn": ctSn,
		"ctCd": ctCd,
		"ctReshmA": ctReshmA,
		"ctReshmK": ctReshmK			
	}
	
	$.ajax({
		type: 'post',
		url: '../../content/res.do',
		data: ctData,
		success:function(rst){
			console.log(rst);
			console.log(typeof rst);
			if(rst === "true") {
				location.href = "../ticket/contentcomplete.jsp"
			} else {
				alert("예약에 실패했습니다.(정원 초과)");
			}
		},
		error:function(xhr){
			console.log(xhr.status);
		}
	});
	
}

</script>
</head>
<body>
	<div class="WrapWidth">
		<div>
			<section>
				<h5>콘텐츠 선택</h5><br>
				<select class="content">
					<option>콘텐츠를 선택해주세요</option>
					<option value="CTA">쥬쥬월드</option>
					<option value="CTB">로스트캐니언</option>
				</select>
			</section>
			<br>
			<section>
				<h5>예약일</h5><br>
				<input type="date" value=""><span>
				</span><br><br>
				<input type="button" value="11" class="btn_type"><br>
				<input type="button" value="13" class="btn_type"><br>
				<input type="button" value="15" class="btn_type"><br>
				<input type="button" value="17" class="btn_type">
			</section>
			<section>
				<h5>인원</h5>
				<h5><br>
					대인<input id="adult" class="text" type="text" placeholder="0">
					<br>
					<br>
					소인<input id="kid" class="text" type="text" placeholder="0">
				</h5>
			</section>
			<div class="btn_wrap btn_one">
				<a onclick="fn_next()" class="btn_type btn_red">예약</a>
			</div>
		</div>
	</div>
	<%@include file="../../footer.jsp"%>
</body>
</html>
