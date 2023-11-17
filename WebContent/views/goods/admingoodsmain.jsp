<%@page import="java.util.List"%>
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
	List<GoodsVO> goodsList;
	List<GoodsVO> sortList = (List<GoodsVO>)request.getAttribute("sortList");
	if(sortList != null) {
		goodsList = sortList;
	} else {
		goodsList = (List<GoodsVO>)request.getAttribute("goodsList");
	}
	
	if(session.getAttribute("msg") != null) {%>
<script>
		alert("정상적으로 처리되었습니다.");
</script>
<%	
		session.removeAttribute("msg");
	}
	
	 
// 	String memId = session.getAttribute("memId");
%>

<div class="page_tit">
	<h2>온라인 굿즈샵</h2>
</div>

<!-- 상품 구역 시작 -->
<div class="album bg-light">

<div class="container-getboot text-end">
  <div class="row-getboot">
    <div class="col-getboot"></div>
    <div class="col-getboot"></div>
    <div class="col-getboot"></div>
    <div class="col-getboot"></div>
    <div class="col-getboot">
      <a href="../views/goods/adminaddgoods.jsp"><button type="button" class="btn btn-success">굿즈 등록하기</button></a>
    </div>
  </div>
  
  <div id="spacer"></div>
  
  
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
	<p class="lead">
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
<%--             <a href="detail.do?gdCd=<%=gd.getGdCd() %>"> --%>
           		<image href="<%=request.getContextPath() + gd.getGdImgPath()%>" width="100%" height="100%" preserveAspectRatio="xMidYMid slice" />
<!--             </a> -->
            </svg>

            <div class="card-body">
              <p class="card-text">
           		<%=gd.getGdName() %>
           		<%if(gd.getGdChk().equals("판매중단")) { %>
           		<span class="badge text-bg-danger">판매중단</span>
           		<%} %>
              </p>
              
              <div class="d-flex justify-content-between align-items-center">
              
              <div>
              	 <a href="adminmodify.do?gdCd=<%=gd.getGdCd() %>">
              	 <button type="button" class="btn btn-sm btn-outline-secondary">
              	수정
              	 </button>
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
let heartIcon = document.getElementById('heart');
let heartFillIcon = document.getElementById('heartFill');
<%-- <% --%>
// if(memId != null) {
<%-- if(memId.get){ %> --%>
//  		heartIcon.style.display = 'none';
//  	    heartFillIcon.style.display = 'inline';
<%-- <%	} --%>
<%-- } %> --%>


// heartIcon.addEventListener('click', function() {
//     this.style.display = 'none';
//     this.nextSibling.style.display = 'inline';
//     //찜 목록에 추가
// });

// heartFillIcon.addEventListener('click', function() {
//     this.style.display = 'none';
//     this.previousSibling.style.display = 'inline';
//     //찜 목록에서 해제
// });

document.querySelector('.form-select-getboot').addEventListener('change', function(){
	location.href = "adminmain.do?gdSortCode="+this.value;	
});

</script>


<%@include file="../../footer.jsp" %>

</body>
</html>