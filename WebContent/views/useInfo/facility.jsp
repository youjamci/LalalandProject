<%@page import="lala.vo.FacilityVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	List<FacilityVO> facList = (List<FacilityVO>) request.getAttribute("facList");
%>
<jsp:include page="../../mem_header.jsp"></jsp:include>
 
<style>
.tit {
      font-size: 24.9px;
      color: black;
      font-weight: bold;
      margin-top: 50px;
   }
</style> 
 
<!-- /////////////////////////////// 내용 시작 /////////////////////////////// -->

<p class="tit">편의시설</p>

<section class="news-section">
	<div class="container">
		<div class="row">
			<!-- 반복 시작 -->
<%
	int facSize = facList.size();
		if (facSize == 0) {
%>
		console.log(정보가 없어요);

<%
	} else {

	for (FacilityVO fv : facList) {
%>
			<div class="col-sm-4 wow fadeInDown animated animated"
				data-wow-delay="0.2s"
				style="visibility: visible; -webkit-animation-delay: 0.2s; -moz-animation-delay: 0.2s; animation-delay: 0.2s;">
				<div class="blog-item">
					<a href="#"><img src="<%=request.getContextPath()%>/<%=fv.getFacImg()%>" style="width:352px;height:252px;" alt=""></a>
					<h3><%=fv.getFacName() %></h3>
					<p><%=fv.getFacInfo() %></p>
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



















			<!-- 반복 끝 -->
		</div>
	</div>
</section>
<!-- /////////////////////////////// 내용 끝 /////////////////////////////// -->


</body>



 <jsp:include page="../../footer.jsp"></jsp:include>
 

</html>