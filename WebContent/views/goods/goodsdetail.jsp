<%@page import="goods.vo.GoodsVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<%@include file="../../mem_header.jsp"%>

  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="${pageContext.request.contextPath}/include/css/bootstrap.min-getboot.css">

<style>

.spacer {
  height: 100px;
}
</style>

  </head>
  <body>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<script type="text/javascript" src="/LalalandProject/js/jquery.min.js"></script>

<script type="text/javascript">
$(function(){
	$("#idBk").on("click",function(){
		let cfm = confirm("장바구니에 저장하시겠습니까?");
		
		let gdCd = "<%=request.getParameter("gdCd")%>";
		
		console.log("gdCd : " + gdCd);
		
		if(cfm){//컨펌이 "확인"일때만 실행
			$.ajax({
				url:"<%=request.getContextPath()%>/goods/goodsbucket.do?gdCd="+gdCd,
				type:"get",
				dataType:"text",
				success:function(result){
					console.log("result : " + result);
					
					if(result=="success"){
						alert("장바구니에 상품이 저장되었습니다.");
					}
				}
			});
		} else{
			e.preventDefault(); // 기본 동작(페이지 이동)을 막습니다.
		}//end if
	});
});
</script>
<%
	GoodsVO gd = (GoodsVO)request.getAttribute("goodsDetail");
// 	String memId = (String)session.getAttribute("memId");
	session.setAttribute("gdCd", gd.getGdCd());
%>

<div class="page_tit">
	<h2>온라인 굿즈샵</h2>
</div>

<div class="container-getboot ">
	<div class="row-getboot featurette">
      <div class="col-getboot-md-5 order-md-2">
      	<div class="spacer"></div>
        <p class="lead"><%=gd.getGdName() %><p>
        <p class="lead-getboot"><%=gd.getGdInfo() %></p>
        <dl class="row-getboot">
		  <dt class="col-getboot-sm-3"></dt>
		  <dt class="col-getboot-sm-3">가격:</dt>
		  <dd class="col-getboot-sm-6"><%=gd.getGdPrice() %>원</dd>
<!-- 		  <dt class="col-getboot-sm-6">배송료:</dt><dd class="col-getboot-sm-6">3000원</dd> -->
<!-- 		  <dd class="col-getboot-sm-6"></dd><dd class="col-getboot-sm-6">(3만원 이상 구매시 무료배송)</dd> -->
		  <dd class="col-getboot-sm-6"></dd><dd class="col-getboot-sm-6"></dd>
		  <dd class="col-getboot-sm-6"></dd><dd class="col-getboot-sm-6"></dd>
		  <dd class="col-getboot-sm-6">
<!-- 		  <svg id="heart" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="#d63384" class="bi bi-heart" viewBox="0 0 16 16"> -->
<!-- 		  <path d="m8 2.748-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01L8 2.748zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15z"/> -->
<!-- 		  </svg> -->
<!-- 		  <svg id="heartFill" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="#d63384" class="bi bi-heart-fill" viewBox="0 0 16 16" style="display: none;"> -->
<!-- 		  <path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z"/> -->
<!-- 		  </svg> -->
		  </dd>
		  <dd class="col-getboot-sm-6">
		  <button type="button" id="idBk" class="btn btn-sm btn-outline-secondary">장바구니에 담기</button>
		  </dd>
		  <dd class="col-getboot-sm-6"></dd>
		  <dd class="col-getboot-sm-6">
<%-- 		  <a href="${pageContext.request.contextPath}/goods/shoppinglist.do"><button type="button"  class="btn btn-sm btn-outline-success">장바구니로 이동</button></a> --%>
		  <a href="../views/goods/gdpay.jsp"><button type="button"  class="btn btn-sm btn-outline-success">바로 구매하기</button></a>
		  </dd>
		
		
		</dl>
      </div>
      <div class="col-getboot-md-5 order-md-1">
        <svg class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="500" height="500" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 500x500" preserveAspectRatio="xMidYMid slice" focusable="false">
        <title>Placeholder</title>
        <rect width="100%" height="100%" fill="#eee"></rect>
        <image href="<%=request.getContextPath() + gd.getGdImgPath()%>" width="100%" height="100%" preserveAspectRatio="xMidYMid slice" />
        </svg>

      </div>
	</div>
</div>
	
	
	
	<div class="container-getboot text-center">
  	<div class="row-getboot">
	<div class="col-getboot">

    </div>
    <div class="col-6-getboot">
    <p class="lead-getboot text-center">
	<img src="<%=request.getContextPath() + gd.getGdDimgPath()%>">
	</p>
    </div>
    <div class="col-getboot">

    </div>

  	</div>
  	</div>
  	
  	<%@include file="../../footer.jsp" %>

</body>
</html>