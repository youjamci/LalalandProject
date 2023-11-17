<%@page import="lala.vo.RestaurantVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	List<RestaurantVO> resList = (List<RestaurantVO>) request.getAttribute("resList");
%>

<jsp:include page="../../adm_header.jsp"></jsp:include>

<style>
.tit {
      font-size: 24.9px;
      color: black;
      font-weight: bold;
      margin-top: 50px;
}
</style> 
 
 
<!-- /////////////////////////////// 내용 시작 /////////////////////////////// -->
<!-- 

 -->
 
<!-- <div class="container">
	<div class="row">
		<div class="dropdown">
		  <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">구역을 선택하세요
		  <span class="caret"></span></button>
		  <ul class="dropdown-menu">
		    <li><a href="/LalalandProject/attraction.do?zoneCd=">전체보기</a></li>
		    <li><a href="/LalalandProject/attraction.do?zoneCd=z1">애니토피아</a></li>
		    <li><a href="/LalalandProject/attraction.do?zoneCd=z2">유토피아 어드벤처</a></li>
		    <li><a href="/LalalandProject/attraction.do?zoneCd=z3">매직아일랜드</a></li>
		    <li><a href="/LalalandProject/attraction.do?zoneCd=z4">판타지드림 어드벤처</a></li>
		  </ul>
		</div>
	</div>
</div> -->

<p class="tit">레스토랑</p>

<section class="news-section">
	<div class="container">
		<div class="row">
			<!-- 반복 시작 -->
<%
	int resSize = resList.size();
		if (resSize == 0) {
%>
		console.log(정보가 없어요);

<%
	} else {

for (RestaurantVO rv : resList) {
%>
			<div class="col-sm-4 wow fadeInDown animated animated"
				data-wow-delay="0.2s"
				style="visibility: visible; -webkit-animation-delay: 0.2s; -moz-animation-delay: 0.2s; animation-delay: 0.2s;">
				<div class="blog-item" style="">
					<img src="<%=request.getContextPath() %>/<%=rv.getResImg()%>" style="width:352px;height:252px;" alt="">
					<h3><%=rv.getResName() %></h3>
					<p>운영시간 : <%=rv.getResOpen() %> ~ <%=rv.getResClose() %></p>
					<p>분류: <%=rv.getResSort() %></p>
<!-- 					<a href="#">Read More</a> -->
				</div>
			</div>
<%
	}
}
%>

			<!-- 반복 끝 -->
		</div>
	</div>
</section>
<!-- /////////////////////////////// 내용 끝 /////////////////////////////// -->

</body>



 <jsp:include page="../../footer.jsp"></jsp:include>
 

</html>