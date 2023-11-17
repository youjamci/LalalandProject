<%@page import="goods.vo.GoodsVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@include file="../../adm_header.jsp" %>
<%@include file="../../adm_aside.jsp" %>
<head>
<style>
table.type04 {
  border-collapse: separate;
  border-spacing: 1px;
  text-align: center;
  line-height: 1.5;
  border-top: 1px solid #ccc;
  margin : 20px 10px;
}
table.type04 th {
  width: 150px;
  padding: 10px;
  font-weight: bold;
  vertical-align: top;
  border-bottom: 1px solid #ccc;
  text-align: center;
}
table.type04 td {
  width: 350px;
  padding: 10px;
  vertical-align: top;
  border-bottom: 1px solid #ccc;
  text-align: center;
}

.tit {
  font-size: 24.9px;
}

</style>
</head>

<% List<GoodsVO> gdSalesList = (List<GoodsVO>)request.getAttribute("gdSalesList"); %>
<script>

$(function(){
	let totalPrice = 0;
	
	$('.price').each(function() {
	    let gdPrice = Number($(this).text());
	    totalPrice += gdPrice;
  	});
	
	$('#sum').text(totalPrice);
	
	console.log("totalPrice : " + totalPrice);
})
</script>

<body>
<table class="type04">
<strong class="tit">굿즈 매출 조회</strong>

  <tr>
    <th scope="row">굿즈코드</th>
    <th scope="row">굿즈명</th>
    <th scope="row">판매현황</th>
    <th scope="row">판매여부</th>
  </tr>
  
<%
if(gdSalesList.size() == 0) {
%>
	<h2>
	   판매 정보가 존재하지 않습니다.
	</h2>
<%
} else {
	for(GoodsVO gd : gdSalesList) {
%>
  <tr>
    <td scope="row"><%=gd.getGdCd() %></td>
    <td scope="row"><%=gd.getGdName() %></td>
    <td scope="row"><%=gd.getSum() %></td>    
    <td scope="row"><%=gd.getGdChk() %></td>
  </tr>
  
  
<%	}
}
%>


</table>
</body>
