<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="member.vo.MemberVO"%>
<%@page import="org.apache.commons.beanutils.BeanUtils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// 	String mId = getParameter("mem_id"); //단일 데이터 받음
	
	MemberVO vo = new MemberVO();
	//직렬화 된 데이터를 쉽게 받아내기위한 라이브러리 사용 - beanUtils
	//!! vo에 작성된 필드 항목과 넘어오는 데이터의 key가 반드시 일치해야 함!!
	BeanUtils.populate(vo, request.getParameterMap());

	Class.forName("oracle.jdbc.driver.OracleDriver");
	String url = "jdbc:oracle:thin:@112.220.114.130:1521:xe";
	Connection conn = DriverManager.getConnection(url, "team2_202304M", "java");
	Statement stmt = conn.createStatement();
	String sql = "insert into member ("
		    + "mem_id, mem_pw, mem_name, mem_birth, mem_tel, "
		    + "mem_add, mem_dadd, mem_email, mem_noti)"
			+ "values('" + vo.getMem_id() + "', "
			+ "'" + vo.getMem_pw() + "', "
			+ "'" + vo.getMem_name() + "', "
			+ "'" + vo.getMem_birth() + "', "
			+ "'" + vo.getMem_tel() + "', "
			+ "'" + vo.getMem_add() + "', "
			+ "'" + vo.getMem_dadd() + "', "
			+ "'" + vo.getMem_email() + "', "
			+ "'" + vo.getMem_noti() + "')";
			
	int result = stmt.executeUpdate(sql); // insert성공시 변경(추가)된 row수 반환
%>

<%=result %>


