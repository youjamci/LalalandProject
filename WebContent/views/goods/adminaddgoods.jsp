<%@page import="goods.vo.GoodsVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

<%@include file="../../adm_header.jsp" %>

<link rel="stylesheet" href="${pageContext.request.contextPath}/include/css/bootstrap.min-getboot.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>

<style>
#spacer {
  height: 20px;
}
.tit {
    font-size: 24.9px;
    color: black;
    font-weight: bold;
	margin-top: 50px;	
}
</style>
  
</head>
<body>

<%
// 	String memId = session.getAttribute("memId");
%>

<p class="tit">굿즈 등록</p>

<div class="container-getboot">
	<div class="row-getboot justify-content-center">
      <div class="col-getboot-md-7 order-md-2">
   	<form action="<%=request.getContextPath() %>/goods/adminadd.do" method="post" enctype="multipart/form-data">
   	  
      <div id="spacer"></div>
      <dl class="row-getboot">
      	  <dt class="col-getboot-sm-6">굿즈분류:</dt>
      	  <dt class="col-getboot-sm-6">
	      	  <select name="gdSortCode" class="form-select-getboot" aria-label="Default select example">
				  <option selected>분류</option>
				  <option value="A">인형</option>
				  <option value="B">모자</option>
				  <option value="C">완구</option>
				  <option value="D">문구</option>
				  <option value="E">기타</option>
			  </select>
		  </dt>
		  <div id="spacer"></div>
		  
          <dt class="col-getboot-sm-6">굿즈명:</dt><dt class="col-getboot-sm-6"><input name="gdName" type="text" class="form-control" aria-label="Example text with button addon" aria-describedby="button-addon1"></dt>
		  <div id="spacer"></div>
		  <dt class="col-getboot-sm-6">굿즈정보:</dt><dt class="col-getboot-sm-6"><input name="gdInfo" type="text" class="form-control" aria-label="Example text with button addon" aria-describedby="button-addon1"></dt>
		  <div id="spacer"></div>
		  
		  <dt class="col-getboot-sm-6">가격(원):</dt><dd class="col-getboot-sm-6"><input name="gdPrice" type="text" class="form-control" aria-label="Example text with button addon" aria-describedby="button-addon1"></dd>
		  <div id="spacer"></div>
		  <dt class="col-getboot-sm-6">재고(개):</dt><dd class="col-getboot-sm-6"><input name="gdStock" type="text" class="form-control" aria-label="Example text with button addon" aria-describedby="button-addon1"></dd>
		  <div id="spacer"></div>
		  <dd class="col-getboot-sm-6"></dd><dd class="col-getboot-sm-6"></dd>
		  <dd class="col-getboot-sm-6"></dd><dd class="col-getboot-sm-6"></dd>
		  <dd class="col-getboot-sm-6"></dd><dd class="col-getboot-sm-6"></dd>
		  <dt class="col-getboot-sm-6">대표이미지:</dt>
		  <dd class="col-getboot-sm-6">
		  <input type="file" name="gdImg" class="form-control" id="inputGroupFile03" aria-describedby="inputGroupFileAddon03" aria-label="Upload">
		  </dd>
		  <div id="spacer"></div>
		  <dt class="col-getboot-sm-6">상세이미지:</dt>
		  <dd class="col-getboot-sm-6">
		  <input type="file" name="gdDimg" class="form-control" id="inputGroupFile03" aria-describedby="inputGroupFileAddon03" aria-label="Upload">
		  </dd>
		  <div id="spacer"></div>
		  
		  <dd class="col-getboot-sm-6">		 
	  	  <input type="checkbox" name="gdChk" value="판매중" checked><label>판매중</label>		  
		  </dd>
		  <dd class="col-getboot-sm-6"><button type="submit" class="btn btn-success">등록완료</button></dd>
		  
<!-- 	</form>	 -->
		
		</dl>
      </div>
<!--       <div class="col-getboot-md-5 order-md-1"> -->
<!--         <svg class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="500" height="500" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 500x500" preserveAspectRatio="xMidYMid slice" focusable="false"> -->
<!--         <rect width="100%" height="100%" fill="#eee"></rect> -->
<!--         <image href="" width="100%" height="100%" preserveAspectRatio="xMidYMid slice" /> -->
<!--         </svg> -->

<!--       </div> -->
	</div>
</div>
  	
<%@include file="../../footer.jsp" %>

</body>
</html>