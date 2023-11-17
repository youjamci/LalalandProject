<%@page import="cmt.vo.CmtPayVO"%>
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
  text-align: left;
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
}
table.type04 td {
  width: 350px;
  padding: 10px;
  vertical-align: top;
  border-bottom: 1px solid #ccc;
}

table.type04 tbody {
  margin-left: 20px;
}

.tit {
  font-size: 24.9px;
  color: black;
      font-weight: bold;
}
</style>


  <% List<CmtPayVO> myCmtpList = (List<CmtPayVO>) request.getAttribute("myCmtpList"); %>
    <table class="type04">
        <p class="cmt tit">정기권 예매 내역</p>
        <% if (myCmtpList == null || myCmtpList.size() == 0) { %>
            <h2>
                예매 정보가 존재하지 않습니다.
            </h2>
        <% } else { %>
            <tr>
                <th scope="row">티켓구분</th>
                <th scope="row">티켓수량</th>
                <th scope="row">결제수단</th>
                <th scope="row">금액</th>
                <th scope="row">일자</th>
            </tr>
            <% for (CmtPayVO cmtp : myCmtpList) { %>
                <tr>
                    <td scope="row"><%= cmtp.getCmtSort() %></td>
                    <td scope="row"><%= cmtp.getCmtNum() %></td>
                    <td scope="row"><%= cmtp.getCmtpMh() %></td>
                    <td scope="row"><%= cmtp.getCmtpSum() %></td>
                    <td scope="row"><%= cmtp.getCmtpDate().toLocaleString() %></td>
                </tr>
            <% } %>
        <% } %>
    </table>
</body>