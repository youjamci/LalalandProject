<%@page import="lala.service.AttrServiceImpl"%>
<%@page import="lala.service.IAttrService"%>
<%@page import="lala.vo.attractionVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<jsp:include page="../../mem_header.jsp"></jsp:include>
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

<p class="tit">플랜토피아</p>

<section class="news-section">
 	<div class="container">
		<div class="row">
			<!-- 반복 시작 -->

			<div class="col-sm-4 wow fadeInDown animated animated"
				data-wow-delay="0.2s"
				style="visibility: visible; -webkit-animation-delay: 0.2s; -moz-animation-delay: 0.2s; animation-delay: 0.2s;">
				<div class="blog-item">
					<img src="<%=request.getContextPath()%>/images/plantopia/garden_img_03.jpg" style="width:352px;height:252px;">
					<h3>주제정원</h3>
					<p>한국 자생식물로 전통정원을 재현한 야외 주제정원</p>
				</div>
			</div>
			
			<div class="col-sm-4 wow fadeInDown animated animated"
				data-wow-delay="0.2s"
				style="visibility: visible; -webkit-animation-delay: 0.2s; -moz-animation-delay: 0.2s; animation-delay: 0.2s;">
				<div class="blog-item">
					<img src="<%=request.getContextPath()%>/images/plantopia/garden_img_07.jpg" style="width:352px;height:252px;">
					<h3>쉼터</h3>
					<p>쉼터를 여유롭게 거닐며 힐링타임을 가져보세요.</p>
				</div>
			</div>
			
			<div class="col-sm-4 wow fadeInDown animated animated"
				data-wow-delay="0.2s"
				style="visibility: visible; -webkit-animation-delay: 0.2s; -moz-animation-delay: 0.2s; animation-delay: 0.2s;">
				<div class="blog-item">
					<img src="<%=request.getContextPath()%>/images/plantopia/garden_img_08.jpg" style="width:352px;height:252px;">
					<h3>장미원</h3>
					<p>국내 최고 품질의 720품종, 300만 송이의 장미!</p>
				</div>
			</div>
			
			<div class="col-sm-4 wow fadeInDown animated animated"
				data-wow-delay="0.2s"
				style="visibility: visible; -webkit-animation-delay: 0.2s; -moz-animation-delay: 0.2s; animation-delay: 0.2s;">
				<div class="blog-item">
					<img src="<%=request.getContextPath()%>/images/plantopia/greenhouse03_04.jpg" style="width:352px;height:252px;">
					<h3>포시즌스 가든</h3>
					<p>매력적인 꽃들의 파도 속으로 빠져봐요.</p>
				</div>
			</div>
			
			<div class="col-sm-4 wow fadeInDown animated animated"
				data-wow-delay="0.2s"
				style="visibility: visible; -webkit-animation-delay: 0.2s; -moz-animation-delay: 0.2s; animation-delay: 0.2s;">
				<div class="blog-item">
					<img src="<%=request.getContextPath()%>/images/plantopia/greenhouse03_06.jpg" style="width:352px;height:252px;">
					<h3>온실</h3>
					<p>열대/지중해 12개 도시 식물을 전시한 온실</p>
				</div>
			</div>
			
			<div class="col-sm-4 wow fadeInDown animated animated"
				data-wow-delay="0.2s"
				style="visibility: visible; -webkit-animation-delay: 0.2s; -moz-animation-delay: 0.2s; animation-delay: 0.2s;">
				<div class="blog-item">
					<img src="<%=request.getContextPath()%>/images/plantopia/greenhouse03_10.jpg" style="width:352px;height:252px;">
					<h3>정원 학습장</h3>
					<p>라라랜드 어린이 멤버십 프로그램</p>
				</div>
			</div>


			<!-- 반복 끝 -->
		</div>
	</div>
</section> 
<!-- /////////////////////////////// 내용 끝 /////////////////////////////// -->


</body>



 <jsp:include page="../../footer.jsp"></jsp:include>
 

</html>