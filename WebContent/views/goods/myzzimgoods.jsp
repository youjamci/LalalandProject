<%@page import="goods.vo.GoodsVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="../../mem_header.jsp"%>
<%@include file="../../mem_aside.jsp"%>

<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.WrapWidth {
	max-width: 1000px;
	margin: 0 auto;
}

.creditCardArea {
	margin: 40px 0 80px;
}

.creditHeader h4 {
	font-size: 2.49rem;
	line-height: 1.2;
}

.creditList {
	margin-top: 40px;
}

.creditList > ul {
	display: flex;
	flex-wrap: wrap;
	margin: -8px;
}

.creditList .creditInfo {
	width: calc(33.333% - 16px);
	margin: 8px;
	padding: 56px 0;
	text-align: center;
	border: 1px solid #e5e5e5;
	border-radius: 8px;
}

.creditInfo h5 {
	font-size: 1.49rem;
	font-weight: 700;
}

.creditInfo img {
	width: 100%;
	max-width: 200px;
	margin-top: 16px;
}

.creditInfo ul {
	margin-top: 24px;
}

.creditInfo li {
	margin-top: 16px;
}

.creditInfo li:first-child {
	margin-top: 0;
}

.creditInfo a {
	padding-top: 10px;
	padding-left: 30px;
	color: #000;
	border-top: 1px solid #e5e5e5;
	position: relative;
}

.creditInfo a:before {
	content: '';
	width: 24px;
	height: 24px;
	background-size: 24px;
	position: absolute;
	top: 8px;
	left: 0;
}

.creditInfo .call a {
	border-top: none;
}

.creditNotice {
	margin-top: 32px;
}

.creditNotice li {
	margin-top: 4px;
	padding-left: 12px;
	position: relative;
	list-style-type: none; 
}

.creditNotice li:before {
	content: '';
	width: 4px;
	height: 4px;
	background: #000;
	border-radius: 50px;
	position: absolute;
	top: 10px;
	left: 0;
}

.creditNotice li .red {
	color: #fe2419;
}

.creditNotice .note {
	margin-top: 4px;
	color: #999;
}

.creditList ul {
	list-style-type: none; /* Remove the marker */
}
</style>

<%
// 	String memId = (String)session.getAttribute("loginCode");

	List<GoodsVO> zzimList = (List<GoodsVO>)request.getAttribute("zzimList");
%>


</head>
<body>
	<div class="creditCardArea">
		<div class="WrapWidth">
			<div class="creditHeader">
				<h4>
					 <br> <strong>나의 찜 목록</strong>
				</h4>
			</div>
			
<%
if(zzimList.size() == 0) {
%>
	<h5>상품 정보가 존재하지 않습니다.</h5>
<%
} else {
%>		
			<div class="creditList">
				<ul>
<%	for(GoodsVO gd : zzimList) {%>			
		
					<li class="creditInfo">
						<h5><%=gd.getGdName() %></h5>
						<a href="../goods/detail.do?gdCd=<%=gd.getGdCd() %>"><img src="<%=request.getContextPath() + gd.getGdImgPath()%>"></a>
						<ul>
							<li class="call"><%=gd.getGdPrice() %>원</li>							
							<li>
							<a href="<%=request.getContextPath()%>/mypage/zzim.do?gdCd=<%=gd.getGdCd()%>">찜 해제</a>
							</li>
						</ul>
					</li>

			
<%
	}%>
				</ul>
			</div>
<%}%>	

		</div>
	</div>
	
</body>
</html>