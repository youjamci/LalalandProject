<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset='utf-8' />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>라라랜드 운영시간</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="images/favicon.png">
<link rel="stylesheet" href="../../include/css/style.css">
<link href="https://fonts.googleapis.com/css?family=Amatic+SC"
	rel="stylesheet">
<link rel="stylesheet" href="https://codepen.io/srh1013/pen/JxvjjJ.css">
<script src='../../include/dist/index.global.js'></script>
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

<script>

//라라랜드 - 이용정보 > 운영시간

document.addEventListener('DOMContentLoaded', function() {
    var calendarEl = document.getElementById('calendar');

    var calendar = new FullCalendar.Calendar(calendarEl, {
      initialDate: '2023-07-20',
      editable: true,
      selectable: true,
      businessHours: true,
      dayMaxEvents: true, // allow "more" link when too many events
      events: [
        {
          title: '10:00~22:00',
          start: '2023-07-01'
        },
        {
          title: '10:00~22:00',
          start: '2023-07-02',
        },
        {
          title: '10:00~22:00',
          start: '2023-07-03',
        },
        {
          title: '10:00~22:00',
          start: '2023-07-04'
        },
        {
          title: '10:00~22:00',
          start: '2023-07-05'
        },
        {
          title: '10:00~22:00',
          start: '2023-07-06'
        },
        {
           title: '10:00~22:00',
           start: '2023-07-07'
        },
        {
            title: '10:00~22:00',
            start: '2023-07-08'
        },
        {
            title: '10:00~22:00',
            start: '2023-07-09'
        },
        {
            title: '10:00~22:00',
            start: '2023-07-10'
        },
        {
            title: '10:00~22:00',
            start: '2023-07-11'
        },
        {
            title: '10:00~22:00',
            start: '2023-07-12'
        },
        {
            title: '10:00~22:00',
            start: '2023-07-13'
        }, 
        {
            title: '10:00~22:00',
            start: '2023-07-14'
        }, 
        {
            title: '10:00~22:00',
            start: '2023-07-15'
        }, 
        {
            title: '10:00~22:00',
            start: '2023-07-16'
        }, 
        {
            title: '10:00~22:00',
            start: '2023-07-17'
        }, 
        {
            title: '10:00~22:00',
            start: '2023-07-18'
        },
        {
            title: '10:00~22:00',
            start: '2023-07-19'
        },
        {
            title: '10:00~22:00',
            start: '2023-07-20'
        },
        {
            title: '10:00~22:00',
            start: '2023-07-21'
        },
        {
            title: '10:00~22:00',
            start: '2023-07-22'
        },
        {
            title: '10:00~22:00',
            start: '2023-07-23'
        },
        {
            title: '10:00~22:00',
            start: '2023-07-24'
        },
        {
            title: '10:00~22:00',
            start: '2023-07-25'
        },
        {
            title: '10:00~22:00',
            start: '2023-07-26'
        },
        {
            title: '10:00~22:00',
            start: '2023-07-27'
        },
        {
            title: '10:00~22:00',
            start: '2023-07-28'
        },
        {
            title: '10:00~22:00',
            start: '2023-07-29'
        },
        {
            title: '10:00~22:00',
            start: '2023-07-30'
        },
        {
            title: '10:00~22:00',
            start: '2023-07-31'
        },
                                          
        
      ]
    });

    calendar.render();
  });
	
  
</script>
<style>
/* body { */
/* 	margin: 40px 10px; */
/* 	padding: 0; */
/* 	font-family: Arial, Helvetica Neue, Helvetica, sans-serif; */
/* 	font-size: 14px; */
/* } */

#calendar {
	max-width: 700px;
	margin: 0 auto;
}

/* h2 { */
/* 	text-align: center; */
/* 	font-family: Arial, Helvetica Neue, Helvetica, sans-serif; */
/* } */

.tit {
      font-size: 24.9px;
      color: black;
      font-weight: bold;
      margin-top: 50px;
   }

</style>
	<%@include file="../../mem_header.jsp"%>
</head>
<body>



</body>


	<p class="tit">라라랜드 운영시간</p>
	
	<div id='calendar'></div>
	<div style="margin-bottom: 50px;"></div>
	<%@include file="../../footer.jsp"%>


</body>
</html>
