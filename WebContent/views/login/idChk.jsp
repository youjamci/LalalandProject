<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 사용자로부터 입력한 uId값을 받아옴 
	String uId = request.getParameter("uId");
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	String url = "jdbc:oracle:thin:@112.220.114.130:1521:xe";
	Connection conn = DriverManager.getConnection(url, "team2_202304M", "java");
	Statement stmt = conn.createStatement();
	
	String sql = "select mem_id from member "
				+ "where mem_id = '" + uId + "'";
	ResultSet rs = stmt.executeQuery(sql);
	
	if(rs.next()){
%>
		{
			"rst" : "fail",
			"msg" : "사용불가"
		}
<%
	}else{
%>
		{
			"rst" : "ok",
			"msg" : "사용가능"
		}
<%
	}
%>