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

</style>
  
</head>
<body>

<%
	GoodsVO gd = (GoodsVO)request.getAttribute("goodsDetail");
// 	String memId = session.getAttribute("memId");
%>

<div class="page_tit">
	<h2>온라인 굿즈샵</h2>
</div>

<div class="container-getboot">
	<div class="row-getboot featurette">
      <div class="col-getboot-md-7 order-md-2">
   	<form action="<%=request.getContextPath() %>/goods/adminmodify.do" method="post" enctype="multipart/form-data">
   	  
   	  <input type="hidden" name="gdCd" value="<%=gd.getGdCd() %>">
   	  <input type="hidden" name="orgnGdImg" value="<%=gd.getGdImg() %>">
   	  <input type="hidden" name="orgnGdDimg" value="<%=gd.getGdDimg() %>">
      <div id="spacer"></div>
        <h2 class="featurette-heading fw-normal lh-1">
        <input name="gdName" type="text" class="form-control" aria-label="Example text with button addon" aria-describedby="button-addon1" value="<%=gd.getGdName() %>">
        </h2>
        <p class="lead-getboot">
        <input name="gdInfo" type="text" class="form-control" aria-label="Example text with button addon" aria-describedby="button-addon1" value="<%=gd.getGdInfo() %>">
        </p>
        <dl class="row-getboot">
		  <dt class="col-getboot-sm-6">가격(원):</dt><dd class="col-getboot-sm-6"><input name="gdPrice" type="text" class="form-control" aria-label="Example text with button addon" aria-describedby="button-addon1" value="<%=gd.getGdPrice() %>"></dd>
		  <dt class="col-getboot-sm-6">재고(개):</dt><dd class="col-getboot-sm-6"><input name="gdStock" type="text" class="form-control" aria-label="Example text with button addon" aria-describedby="button-addon1" value="<%=gd.getGdStock() %>"></dd></dd>
		  <dd class="col-getboot-sm-6"></dd><dd class="col-getboot-sm-6"></dd>
		  <dd class="col-getboot-sm-6"></dd><dd class="col-getboot-sm-6"></dd>
		  <dd class="col-getboot-sm-6"></dd><dd class="col-getboot-sm-6"></dd>
		  <dt class="col-getboot-sm-6">대표이미지:</dt>
		  <dd class="col-getboot-sm-6">
		  <input type="file" name="gdImg" class="form-control" id="inputGroupFile03" aria-describedby="inputGroupFileAddon03" aria-label="Upload">
		  </dd>
		  <dt class="col-getboot-sm-6">상세이미지:</dt>
		  <dd class="col-getboot-sm-6">
		  <input type="file" name="gdDimg" class="form-control" id="inputGroupFile03" aria-describedby="inputGroupFileAddon03" aria-label="Upload">
		  </dd>
		  <div style="height: 20px;"></div>
		  <dd class="col-getboot-sm-6">
		  <div class="btn-group" role="group" aria-label="Basic radio toggle button group">
		  
			  <%if(gd.getGdChk().equals("판매중")){ %>
			  	  <input type="checkbox" name="gdChk" value="판매중" checked>
				  <label>판매중</label>
			  <%}else { %>
				  <input type="checkbox" name="gdChk" value="판매중">
				  <label>판매중</label>
			  <%} %>	
		  
		  </div>
		  </dd>
		  <dd class="col-getboot-sm-6"><button type="submit" class="btn btn-success">수정완료</button></dd>
		  
	</form>	
		
		</dl>
      </div>
      <div class="col-getboot-md-5 order-md-1">
        <svg class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="500" height="500" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 500x500" preserveAspectRatio="xMidYMid slice" focusable="false">
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
    <div class="col-getboot-6">
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