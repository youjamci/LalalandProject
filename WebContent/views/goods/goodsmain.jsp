<%@page import="java.util.List"%>
<%@page import="goods.vo.GoodsVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
<%@include file="../../mem_header.jsp"%>

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
// 	String memId = (String) session.getAttribute("loginCode");

	List<GoodsVO> goodsList;
	List<GoodsVO> sortList = (List<GoodsVO>)request.getAttribute("sortList");
	if(sortList != null) {
		goodsList = sortList;
	} else {
		goodsList = (List<GoodsVO>)request.getAttribute("goodsList");
	}
	
	List<GoodsVO> zzimList = (List<GoodsVO>)request.getAttribute("zzimList");
	
	if(request.getAttribute("msg") != null) {%>
<script>
		alert("정상적으로 처리되었습니다.");
</script>
<%	
		request.removeAttribute("msg");
	}
%>


<p class="tit">온라인 굿즈샵</p>



<!-- 상품 구역 시작 -->
<div class="album bg-light">

<div class="container-getboot text-center">
  <div class="row-getboot">
    <div class="col-getboot"></div>
    <div class="col-getboot"></div>
    <div class="col-getboot"></div>
    <div class="col-getboot"></div>
    <div class="col-getboot">
      <select class="form-select-getboot" aria-label="Default select example">
	  <option selected>분류</option>
	  <option value="X">전체보기</option>
	  <option value="A">인형</option>
	  <option value="B">모자</option>
	  <option value="C">완구</option>
	  <option value="D">문구</option>
	  <option value="E">기타</option>
	</select>
    </div>
  </div>
</div>

<div id="spacer"></div>

    <div class="container-getboot">
      <div class="row-getboot row-getboot-cols-1 row-getboot-cols-sm-2 row-getboot-cols-md-3 g-3">
<!--         상품 -->

<%
if(goodsList.size() == 0) {
%>
	<p class="lead-getboot">
	  상품 정보가 존재하지 않습니다.
	</p>
<%
} else {
	for(GoodsVO gd : goodsList) {
%>

 		<div class="col-getboot">
          <div class="card shadow-sm">
            <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false">
            <title>Placeholder</title>
            <rect width="100%" height="100%" fill="#d63384"></rect>
            <a href="detail.do?gdCd=<%=gd.getGdCd() %>">
           		<image href="<%=request.getContextPath() + gd.getGdImgPath()%>" width="100%" height="100%" preserveAspectRatio="xMidYMid slice" />
            </a>
            </svg>

            <div class="card-body">
              <p class="card-text">
           		<%=gd.getGdName() %>
              </p>
              
              <div class="d-flex justify-content-between align-items-center">
              
              <div>

                 
                 <a href="main.do?gdCd=<%=gd.getGdCd() %>">	
                 <% boolean hasZzim = false; // 해당 상품의 찜 여부를 판단하는 플래그 변수
                 
                 	if(zzimList != null) { 
                 		for(GoodsVO zzim : zzimList) {
                 			if(zzim.getGdCd().equals(gd.getGdCd())) { 
                 				hasZzim = true;
                 				break;
                 			}
                 		}
                 	}
                 	
                 	if(hasZzim) { %>
                 	
          			<svg id="heartFill" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="#d63384" class="bi bi-heart-fill" viewBox="0 0 16 16">
					  <path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z"/>
					</svg>
					
				 <% } else { %>	 
				 	
<!--                  	<button type="button" class="btn btn-sm btn-outline-danger">찜하기</button> -->
	       			<svg id="heart" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="#d63384" class="bi bi-heart" viewBox="0 0 16 16">
					  <path d="m8 2.748-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01L8 2.748zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15z"/>
					</svg>
								
				 <% } %>
               	 </a>
                 
                 
			  </div>
			  
			  <figure class="text-end">
	              <%=gd.getGdPrice() %>원
              </figure>
<!--                  <button type="button" class="btn btn-sm btn-outline-secondary">장바구니</button> -->
              </div>
            </div>
          </div>
        </div>

<%
	}
}
%>

<!--         상품 -->

    </div>
  </div>
  
  <div id="spacer"></div>
  
</div>


<script>

document.querySelector('.form-select-getboot').addEventListener('change', function(){
	location.href = "main.do?gdSortCode="+this.value;	
});

</script>

<%@include file="../../footer.jsp" %>

</body>
</html>