<%@page import="lala.vo.attractionVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@include file="../../adm_header.jsp"%>

<%
	List<attractionVO> zone1 = (List<attractionVO>)session.getAttribute("zone1");
	List<attractionVO> zone2 = (List<attractionVO>)session.getAttribute("zone2");
	List<attractionVO> zone3 = (List<attractionVO>)session.getAttribute("zone3");
	List<attractionVO> zone4 = (List<attractionVO>)session.getAttribute("zone4");
%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<style>
	.attinfo {
		margin-left: 275px;
		margin-bottom: 100px;
	}
	.tit {
		margin-top: 50px;
		font-size: 24.9px;
		color: black;
		font-weight: bold;
		margin-bottom: 40px;
	}

	table.boostrap4 {
		margin-bottom: 100px;
		margin-left:145px;
		width: 430px;
		font-size: 15px;
		font-weight: 400;
		line-height: 1.5;
		color: #212529;
		text-align: left;
		box-sizing: border-box;
		border-collapse: collapse;
/* 		margin-bottom: 1rem; */
		background-color: transparent;
	}

	table.boostrap4 thead th {
		font-size: 10px;
		line-height: 1.5;
		color: #212529;
		border-collapse: collapse;
		box-sizing: border-box;
		text-align: inherit;
		border-top: 1px solid #dee2e6;
		vertical-align: bottom;
		border-bottom: 2px solid #dee2e6;
	}

	/* New class for center-aligned table headings */
	.text-center {
		text-align: center;
	}

	table.boostrap4 td {
		font-size: 15px;
		font-weight: 400;
		line-height: 1.5;
		color: #212529;
		text-align: left;
		border-collapse: collapse;
		box-sizing: border-box;
		padding: .75rem;
		vertical-align: top;
		border-top: 1px solid #dee2e6;
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

/*      float: right;  */
}
</style>
</head>
<body>
<p class="tit">운휴안내</p>
<section class="attinfo">
	<%
	if(zone1.size() == 0) {
	%>
	<h2>운휴 정보가 존재하지 않습니다.</h2>
	<%
	} else {
	%>
	<div style="display: inline-block;">
		<div style="width: auto; float: left;">
			<table border="1" class="boostrap4" style="table-layout: auto; text-align: center;">
				<colgroup>
					<col width="40%" />
					<col width="40%" />
				</colgroup>
				<th class="text-center" colspan="3" style="background-color: #D09AFF; height: 40px;">애니토피아</th>

				<tr style="background-color: #EADFF2;">
					<td colspan="1">어트랙션명</td>
					<td colspan="2">구분</td>
				</tr>
				<%
				for(attractionVO zn : zone1) {
				%>
				<tr>
					<td><%= zn.getAtName() %></td>
					<%if(zn.getAtChk().equals("close")) {%>
					<td style="color: red; font-weight: bold;">					
					<%= zn.getAtChk() %>
                    	<a href="${pageContext.request.contextPath}/enjoy/adminattractionupdate.do?atName=<%= zn.getAtName() %>&atChk=<%= zn.getAtChk() %>">
                        	<button type="submit" class="update_atChk cclick" style="float: right;">운휴변경</button>
                    	</a> 
                	</td>
                	<%} else {%>
					<td><%= zn.getAtChk() %>
						<a href="${pageContext.request.contextPath}/enjoy/adminattractionupdate.do?atName=<%= zn.getAtName() %>&atChk=<%= zn.getAtChk() %>">
                        	<button type="submit" class="update_atChk cclick" style="float: right;">운휴변경</button>
                    	</a>
					</td>
					<%} %>				
					
				</tr>
				<% 
				} // end for
				%>
			</table>
		</div>
		<div style="width: auto; float: right;">
			<table border="1" class="boostrap4" style="table-layout: auto; text-align: center;">
				<colgroup>
					<col width="40%" />
					<col width="40%" />
				</colgroup>
				<th class="text-center" colspan="3" style="background-color: #D09AFF; height: 40px;">유토피아 어드벤처</th>
				<tr style="background-color: #EADFF2;">
					<td colspan="1">어트랙션명</td>
					<td colspan="2">구분</td>
				</tr>
				<%
				for(attractionVO zn : zone2) {
				%>
				<tr>
					<td><%= zn.getAtName() %></td>
					<%if(zn.getAtChk().equals("close")) {%>
					<td style="color: red; font-weight: bold;">					
					<%= zn.getAtChk() %>
                    	<a href="${pageContext.request.contextPath}/enjoy/adminattractionupdate.do?atName=<%= zn.getAtName() %>&atChk=<%= zn.getAtChk() %>">
                        	<button type="submit" class="update_atChk cclick" style="float: right;">운휴변경</button>
                    	</a> 
                	</td>
                	<%} else {%>
					<td><%= zn.getAtChk() %>
						<a href="${pageContext.request.contextPath}/enjoy/adminattractionupdate.do?atName=<%= zn.getAtName() %>&atChk=<%= zn.getAtChk() %>">
                        	<button type="submit" class="update_atChk cclick" style="float: right;">운휴변경</button>
                    	</a>
					</td>
					<%} %>
					
				</tr>
				<%
				} // end for
				%>
			</table>
		</div>
	</div>
	<%
	} // end else
	if(zone3.size() == 0) {
	%>
	<h2>운휴 정보가 존재하지 않습니다.</h2>
	<%
	} else {
	%>
	<div style="display: inline-block;">
		<div style="width: auto; float: left;">
			<table border="1" class="boostrap4" style="table-layout: auto; text-align: center;">
				<colgroup>
					<col width="40%" />
					<col width="40%" />
				</colgroup>
				<th class="text-center" colspan="3" style="background-color: #D09AFF; height: 40px;">매직아일랜드</th>
				<tr style="background-color: #EADFF2;">
					<td colspan="1">어트랙션명</td>
					<td colspan="2">구분</td>
				</tr>
				<%
				for(attractionVO zn : zone3) {
				%>
				<tr>
					<td><%= zn.getAtName() %></td>
					<%if(zn.getAtChk().equals("close")) {%>
					<td style="color: red; font-weight: bold;">					
					<%= zn.getAtChk() %>
                    	<a href="${pageContext.request.contextPath}/enjoy/adminattractionupdate.do?atName=<%= zn.getAtName() %>&atChk=<%= zn.getAtChk() %>">
                        	<button type="submit" class="update_atChk cclick" style="float: right;">운휴변경</button>
                    	</a> 
                	</td>
                	<%} else {%>
					<td><%= zn.getAtChk() %>
						<a href="${pageContext.request.contextPath}/enjoy/adminattractionupdate.do?atName=<%= zn.getAtName() %>&atChk=<%= zn.getAtChk() %>">
                        	<button type="submit" class="update_atChk cclick" style="float: right;">운휴변경</button>
                    	</a>
					</td>
					<%} %>
					
				</tr>
				<% 
				} // end for
				%>
			</table>
		</div>
		<div style="width: auto; float: right;">
			<table border="1" class="boostrap4" style="table-layout: auto; text-align: center;">
				<colgroup>
					<col width="40%" />
					<col width="40%" />
					</colgroup>
					<th class="text-center" colspan="3" style="background-color: #D09AFF; height: 40px;">판타지드림어드벤처</th>
					<tr style="background-color: #EADFF2;">
					<td colspan="1">어트랙션명</td>
					<td colspan="2">구분</td>
					</tr>
				</th>
				<%
				for(attractionVO zn : zone4) {
				%>
				<tr>
					<td><%= zn.getAtName() %></td>
					<%if(zn.getAtChk().equals("close")) {%>
					<td style="color: red; font-weight: bold;">					
					<%= zn.getAtChk() %>
                    	<a href="${pageContext.request.contextPath}/enjoy/adminattractionupdate.do?atName=<%= zn.getAtName() %>&atChk=<%= zn.getAtChk() %>">
                        	<button type="submit" class="update_atChk cclick" style="float: right;">운휴변경</button>
                    	</a> 
                	</td>
                	<%} else {%>
					<td><%= zn.getAtChk() %>
						<a href="${pageContext.request.contextPath}/enjoy/adminattractionupdate.do?atName=<%= zn.getAtName() %>&atChk=<%= zn.getAtChk() %>">
                        	<button type="submit" class="update_atChk cclick" style="float: right;">운휴변경</button>
                    	</a>
					</td>
					<%} %>
					
				</tr>
				<%
				} // end for
				%>
			</table>
		</div>
	</div>
	<%
	} // end else
	%>
</section>

<%@include file="../../footer.jsp"%>
