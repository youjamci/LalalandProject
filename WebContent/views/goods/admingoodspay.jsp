<%@page import="goods.vo.GdPayVO"%>
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

<% List<GdPayVO> gdPayList = (List<GdPayVO>)request.getAttribute("gdPayList"); %>
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
<strong class="tit">굿즈 주문 조회</strong>

  <tr>
    <th scope="row">결제코드</th>
    <th scope="row">구매자아이디</th>
    <th scope="row">구매자성함</th>
    <th scope="row">결제금액</th>
    <th scope="row">결제일자</th>
    <th scope="row">결제수단</th>
    <th scope="row">결제상태</th>
    <th scope="row">받는분성함</th>
    <th scope="row">받는분전화번호</th>
    <th scope="row">받는분주소</th>
    <th scope="row">배송요청사항</th>
    <th scope="row">배송상태</th>
  </tr>
  
<%
if(gdPayList.size() == 0) {
%>
	<h2>
	   결제 정보가 존재하지 않습니다.
	</h2>
<%
} else {
	for(GdPayVO gdPay : gdPayList) {
%>
  <tr>
    <td scope="row"><%=gdPay.getGdpCd() %></td>
    <td scope="row"><%=gdPay.getMemId() %></td>
    <td scope="row"><%=gdPay.getMemName() %></td>    
    <td scope="row" class="price"><%=gdPay.getGdpSum() %></td>
    <td scope="row"><%=gdPay.getNewGdpDate() %></td>
    <td scope="row"><%=gdPay.getGdpMh() %></td>
    <td scope="row"><%=gdPay.getGdpChk() %></td>
    <td scope="row"><%=gdPay.getGdpRname() %></td>
    <td scope="row"><%=gdPay.getGdpRtel() %></td>
    <td scope="row"><%=gdPay.getGdpAdd() + " " + gdPay.getGdpDadd() %></td>
    <td scope="row"><%=gdPay.getGdpReq() %></td>
    <td scope="row"><%=gdPay.getGdpRchk() %></td>
  </tr>
  
  
<%	}
}
%>

  <tr>
  	<th scope="row">매출합계 : </th>
  	<th scope="row" id="sum"></th>
  	<th>원</th>
  </tr>

</table>
</body>
