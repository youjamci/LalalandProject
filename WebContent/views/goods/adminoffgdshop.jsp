<%@page import="lala.vo.OffGoodsVO"%>
 <%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	List<OffGoodsVO> offList = (List<OffGoodsVO>) request.getAttribute("offList");
%>
<jsp:include page="../../adm_header.jsp"></jsp:include>
 

 
 
<!-- /////////////////////////////// 내용 시작 /////////////////////////////// -->
<!-- 

 -->


<section class="news-section">
 	<div class="container">
		<div class="row">
			<!-- 반복 시작 -->
<%
	int offListSize = offList.size();
		if (offListSize == 0) {
%>
		console.log(정보가 없어요);

<%
	} else {

for (OffGoodsVO offvo : offList) {
%>
			<div class="col-sm-4 wow fadeInDown animated animated"
				data-wow-delay="0.2s"
				style="visibility: visible; -webkit-animation-delay: 0.2s; -moz-animation-delay: 0.2s; animation-delay: 0.2s;">
				<div class="blog-item">
					<a href="#"><img src="<%=request.getContextPath()%>/<%=offvo.getOffGdImg()%>" style="width:352px;height:252px;" alt=""></a>
					<h3><%=offvo.getOffGdName() %></h3>
					<p>운영시간 :<%=offvo.getOffGdOpen() %>~<%=offvo.getOffGdClose() %></p>
					<p><%=offvo.getOffGdInfo()%></p>
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