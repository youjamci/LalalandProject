<%@page import="goods.vo.GdPayVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@include file="../../mem_header.jsp"%>
<%@include file="../../mem_aside.jsp"%>
<head>
<link href="https://fonts.googleapis.com/css?family=Amatic+SC" rel="stylesheet">
<style>
table.type04 {
  border-collapse: separate;
  border-spacing: 1px;
  text-align: center;
  line-height: 1.5;
  border-top: 1px solid #ccc;
  margin: 20px 10px;
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

table.type04 tbody {
  margin-left: 20px;
}

.tit {
  font-size: 24.9px;
}
.cclick{
	background-color: #F4F4F4;
	position: relative;
    border: none;
    display: inline-block;
    padding: 8px 20px;
    border-radius: 15px;
    font-family: "paybooc-Light", sans-serif;
/*     box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2); */
/*     text-decoration: none; */
/*     font-weight: 600; */
/*     transition: 0.25s; */
    border: 2px solid grey;
    font-size: 12px;
/*     margin-top: 30px; */
/*     margin-left: 560px;  */
color: black;
/*      float: right;  */
}
</style>
</head>

<% List<GdPayVO> mygdPayList = (List<GdPayVO>)request.getAttribute("mygdPayList"); %>

<body>
<table class="type04">
<strong class="tit">나의 굿즈 주문 목록</strong>

<%
if(mygdPayList == null || mygdPayList.size() == 0) {
%>
	<h2>
	  결제 정보가 존재하지 않습니다.
	</h2>
<%
} else { %>

  <tr>
    <th scope="row">결제코드</th>
    <th scope="row">결제금액</th>
    <th scope="row">결제일자</th>
    <th scope="row">결제수단</th>
    <th scope="row">결제상태</th>
    <th scope="row">받는분성함</th>
    <th scope="row">받는분전화번호</th>
    <th scope="row">받는분주소</th>
    <th scope="row">배송요청사항</th>
    <th scope="row">배송상태</th>
    <th scope="row"></th>
  </tr>  

<%	for(GdPayVO mygdPay : mygdPayList) {
%>
  <tr>
    <td scope="row"><%=mygdPay.getGdpCd() %></td>
    <td scope="row"><%=mygdPay.getGdpSum() %></td>
    <td scope="row"><%=mygdPay.getNewGdpDate() %></td>
    <td scope="row"><%=mygdPay.getGdpMh() %></td>
    <td scope="row"><%=mygdPay.getGdpChk() %></td>
    <td scope="row"><%=mygdPay.getGdpRname() %></td>
    <td scope="row"><%=mygdPay.getGdpRtel() %></td>
    <td scope="row"><%=mygdPay.getGdpAdd() + " " + mygdPay.getGdpDadd() %></td>
    <td scope="row"><%=mygdPay.getGdpReq() %></td>
    <td scope="row"><%=mygdPay.getGdpRchk() %></td>
    <td scope="row">
    <% if(mygdPay.getGdpRchk().equals("배송준비중")) { %>
	    <a href="../mypage/goodspay.do?gdpCd=<%=mygdPay.getGdpCd() %>">
	    	<button class="cclick">취소하기</button>
	    </a>
	<% } else if(mygdPay.getGdpRchk().equals("배송완료")) { %>
		<button class="cclick" onclick="f_alert()">취소하기</button>
	<% } else { %>
    </td>
  <tr>
<%	   }   
	}
}
%>

<script>
function f_alert() {
	alert("문의하기를 이용해주세요.");
}
</script>


</table>
</body>