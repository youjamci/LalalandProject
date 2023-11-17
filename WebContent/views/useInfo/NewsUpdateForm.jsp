<%@page import="lala.vo.NewsVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../../adm_header.jsp" %>

<% 
   NewsVO nv = (NewsVO)request.getAttribute("nv"); 

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>뉴스공지 수정 페이지</title>
</head>
<style>
table {
   border-collapse: collapse;
   border-spacing: 0;
}

section.notice {
   padding: 80px 0;
}

.page-title {
   margin-bottom: 60px;
}

.page-title h3 {
   font-size: 28px;
   color: #333333;
   font-weight: 400;
   text-align: center;
}

#board-search .search-window {
   padding: 15px 0;
   background-color: #f9f7f9;
}

#board-search .search-window .search-wrap {
   position: relative;
   /*   padding-right: 124px; */
   margin: 0 auto;
   width: 80%;
   max-width: 564px;
}

#board-search .search-window .search-wrap input {
   height: 40px;
   width: 100%;
   font-size: 14px;
   padding: 7px 14px;
   border: 1px solid #ccc;
}

#board-search .search-window .search-wrap input:focus {
   border-color: #333;
   outline: 0;
   border-width: 1px;
}

#board-search .search-window .search-wrap .btn {
   position: absolute;
   right: 0;
   top: 0;
   bottom: 0;
   width: 108px;
   padding: 0;
   font-size: 16px;
}

.board-table {
   font-size: 13px;
   width: 100%;
   border-top: 1px solid #ccc;
   border-bottom: 1px solid #ccc;
}

.board-table a {
   color: #333;
   display: inline-block;
   line-height: 1.4;
   word-break: break-all;
   vertical-align: middle;
}

.board-table a:hover {
   text-decoration: underline;
}

.board-table th {
   text-align: center;
}

.board-table .th-num {
   width: 100px;
   text-align: center;
}

.board-table .th-date {
   width: 200px;
}

.board-table th, .board-table td {
   padding: 14px 0;
}

.board-table tbody td {
   border-top: 1px solid #e7e7e7;
   text-align: center;
}

.board-table tbody th {
   padding-left: 28px;
   padding-right: 14px;
   border-top: 1px solid #e7e7e7;
   text-align: left;
}

.board-table tbody th p {
   display: none;
}

.btn {
   display: inline-block;
   padding: 0 16px;
   font-size: 15px;
   font-weight: 400;
   background: transparent;
   text-align: center;
   white-space: nowrap;
   vertical-align: middle;
   -ms-touch-action: manipulation;
   touch-action: manipulation;
   cursor: pointer;
   -webkit-user-select: none;
   -moz-user-select: none;
   -ms-user-select: none;
   user-select: none;
   border: 1px solid transparent;
   text-transform: uppercase;
   -webkit-border-radius: 0;
   -moz-border-radius: 0;
   border-radius: 0;
   -webkit-transition: all 0.3s;
   -moz-transition: all 0.3s;
   -ms-transition: all 0.3s;
   -o-transition: all 0.3s;
   transition: all 0.3s;
}

.btn-dark {
   background: #F5646F;
   color: #fff;
}

.btn-dark:hover, .btn-dark:focus {
   background: #373737;
   border-color: #373737;
   color: #fff;
}

/* reset */
* {
   list-style: none;
   text-decoration: none;
   padding: 0;
   margin: 0;
   box-sizing: border-box;
}

.clearfix:after {
   content: '';
   display: block;
   clear: both;
}

.container {
   width: 1100px;
   margin: 0 auto;
}

.blind {
   position: absolute;
   overflow: hidden;
   clip: rect(0, 0, 0, 0);
   margin: -1px;
   width: 1px;
   height: 1px;
}
</style>

<body>
<section class="notice">
      <div class="page-title">
         <div class="container">
            <h3>뉴스공지</h3>
         </div>
      </div>

      <!-- board seach area -->
      <div id="board-search">
         <div class="container">
            <div class="search-window"><h5>뉴스공지 번호 &nbsp;<%=nv.getNotiCd() %></h5>
            </div>
         </div>
      </div>
   
<form action="../news/update.do" method="post" enctype="multipart/form-data">
<input type="hidden" name="notiCd" value="<%=nv.getNotiCd() %>">
   <!-- 공지 번호(키값)를 보내야한다고 했음 / 안보이게  -->
   
   <!-- board list area -->
         <div id="board-list">
            <div class="container">
               <table class="board-table">
                  <thead>
                     <tr>
                        <td>제목:&nbsp;&nbsp;&nbsp;</td>
                        <td><textarea cols="140" name="notiTitle" ><%=nv.getNotiTitle() %></textarea></td>
                     </tr>
                     <tr>
                        <td>내용:&nbsp;&nbsp;&nbsp;</td>
                  <%
                     if(nv.getNotiImg() == null && nv.getNotiContent() == null){
                  
                  %>
                        <td><textarea rows="30" cols="140" name="notiContent"> - 내용이 없습니다 - </textarea></td>
                        
                  <%
                     } else if(nv.getNotiImg() == null){   
                  %>      
                        <td><textarea rows="30" cols="140" name="notiContent"><%=nv.getNotiContent() %></textarea></td>
                        
                  <%
                     } else {   
                  %>      
                         <td><image src="<%=request.getContextPath() + nv.getNotiImgPath()%>" width="500px" name="notiImg" /></td>
                        
                  <%
                        }
                  %>   
                     
                     </tr>
                     
                     <tr>
							<td>첨부파일: &nbsp;&nbsp;&nbsp;</td>
							<td><input type="file" name="notiImg" ></td>
					</tr>
                     
                  </thead>
               </table>
            </div>
         </div>
<!--       <a href="./news/main.do"><button class="btn btn-dark" style="float: right;">목록</button></a>-->
       <p><button type="submit" class="btn btn-dark">글 수정</button>
</form>
</section>
   
   
<%-- <%@include file="../../footer.jsp"%>--%>
</body>
</html>