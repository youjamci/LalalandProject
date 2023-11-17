<%@page import="lala.service.AttrServiceImpl"%>
<%@page import="lala.service.IAttrService"%>
<%@page import="lala.vo.attractionVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	IAttrService attrService = AttrServiceImpl.getInstance();
	List<attractionVO> attrList = attrService.getAttraction(new attractionVO());
%>
<jsp:include page="../../adm_header.jsp"></jsp:include>
<style>
.dropdown {
    /* 보더를 통해서 틀을 봐주는게 좋다 ! */
    /* border: 1px solid #000; */
    /* width: 200px; */
    display: inline-block;
}
.dropdown-btn {
    width: 200px;
    /* 패딩으로 크기 늘려주기 */
    padding : 10px;
    font-size: 13px;
    background-color: #F5646F;
    color : #fff;
    border: none;
    cursor: pointer;
    
}
.dropdown-submenu{
    /* border: 1px solid #000; */
    width:200px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.192);
    display: none;
    
}
.dropdown-submenu a {
    display: block;
    padding: 7px;
    text-align: center;
}

.dropdown-submenu a:hover{
    background-color: #eee;
}
/* hover 뒤에 다른 selector가 이어지면 앞이 명령의 대상, 뒤에가 style이 수행되고 적용되는 부분 */
/* dropdown-btn 과 dropdown-sumbenu는 둘이 같은 계층이다 그래서 동작 안하는거임 (상하관계가 되어야 동작함)
한칸을 띄운다 = 상하관계가 전제가 되어있다는거임 !!!!!*/
.dropdown:hover .dropdown-submenu {
    display: block;

} 
.tit {
      font-size: 24.9px;
      color: black;
      font-weight: bold;
      margin-top: 50px;
}
</style>
 
 
<!-- /////////////////////////////// 내용 시작 /////////////////////////////// -->

<p class="tit">콘텐츠</p>

<section class="news-section">
 	<div class="container">
		<div class="row">
			<!-- 반복 시작 -->
<%
	int attrSize = attrList.size();
		if (attrSize == 0) {
%>
		console.log(정보가 없어요);

<%
	} else {

	for (attractionVO av : attrList) {
		if(av.getAtCd().equals("at01") || av.getAtCd().equals("at02")) {
%>
			<div class="col-sm-6 wow fadeInDown animated animated"
				data-wow-delay="0.2s"
				style="visibility: visible; -webkit-animation-delay: 0.2s; -moz-animation-delay: 0.2s; animation-delay: 0.2s;">
				<div class="blog-item">
					<img src="<%=request.getContextPath()%>/<%=av.getAtImg()%>" alt="">
					<h3><%=av.getAtName() %></h3>
					<p><%=av.getAtInfo()%>..</p>
<!-- 					<a href="#">Read More</a> -->
				</div>
			</div>
<%
		}
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