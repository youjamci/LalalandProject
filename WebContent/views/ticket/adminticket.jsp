<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="en">
<head>
<%@include file= "../../adm_header.jsp" %>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="${pageContext.request.contextPath}/include/css/ticket.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/include/js/ticket.js"></script>

 <script>
    function fn_next() {
        // 선택된 날짜 데이터 가져오기
        var selectedDate = document.getElementById("selectedDate").innerText;
        console.log("Selected Date:", selectedDate);
        
        selectedDate = selectedDate.replaceAll("Selected date: ","");

        // AJAX 요청으로 선택된 날짜 데이터를 서버로 전송
        var data = { selectedDate: selectedDate };

        console.log("data : " + JSON.stringify(data));
        
        // AJAX 요청
        $.ajax({
            type: "POST",
            url: "<%=request.getContextPath()%>/ticket/date.do",
            data: data,
            success: function(response) {
                console.log(response); 
					location.href = "<%=request.getContextPath()%>/views/ticket/ticketbuy.jsp";
            },
            error: function(xhr, status, error) {
                console.log("Error:", error);
            }
        });
    }
</script>

</head>

<body onload="updateCalendar()">
	<div id="container">
		<div class="page_tit">
			<h2>날짜 선택</h2>
			<p>방문하시는 날짜를 선택해주세요</p>
		</div>
		<div class="contents">
			<div class="box_wrap">
				<section class="right_box">
					<div class="calendar_wrap">
						<div class="month">
							<div class="month">
								<span class="inner"> 
									<a href="javascript:void(0)"
									onclick="fn_changeDate(1)" id="prev" class="prev"><b><</b></a> 
									<b id="YYYYMM"></b> 
									<a href="javascript:void(0)"
									onclick="fn_changeDate(2)" id="next" class="next"><b>></b></a>
								</span>
							</div>
						</div>
						<table class="calendar" id="calendar">
							<thead>
								<tr>
									<th>일</th>
									<th>월</th>
									<th>화</th>
									<th>수</th>
									<th>목</th>
									<th>금</th>
									<th>토</th>
								</tr>
							</thead>
							<tbody>
								<!-- Calendar rows will be dynamically generated here -->
							</tbody>
						</table>
					</div>
					<div class="btn_wrap btn_one">
						<button type="button" onclick="fn_next()" class="btn_type btn_red">다음</button>
					</div>
				</section>
			</div>
		</div>
	</div>
	
	<p id="selectedDate"></p>
	
	<%@include file="../../footer.jsp" %>
</body>
</html>