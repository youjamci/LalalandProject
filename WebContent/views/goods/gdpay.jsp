<%@page import="java.sql.SQLException"%>
<%@page import="member.service.IMemberService"%>
<%@page import="member.service.MemberServiceImpl"%>
<%@page import="member.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="../../mem_header.jsp"%>
<title>Checkout Form</title>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<style>

.tkcontainer {
   margin-top: 50px !important;
   display: flex !important;
   justify-content: center !important;
}

.tkleft-con, .tkright-con {
   width: 400px;
   padding: 20px;
   background-color: #fff;
   border: 1px solid #ccc;
   border-radius: 4px;
   margin: 0 10px;
   margin-bottom: 50px;
}

.tkleft-con h4, .tkright-con h4 {
   margin-top: 0;
   margin-bottom: 20px;
}

.form-row {
   margin-bottom: 20px;
}

.form-group label {
   display: block;
   margin-bottom: 5px;
}

.form-control {
   width: 100%;
   height: 34px;
   padding: 6px 12px;
   font-size: 14px;
   line-height: 1.42857143;
   color: #555;
   background-color: #fff;
   background-image: none;
   border: 1px solid #ccc;
   border-radius: 4px;
}

.invalid-feedback {
   color: #FF0080;
}

.form-check-label {
   margin-bottom: 5px;
}

.mb-4 {
   margin-bottom: 20px;
}

.mt-4 {
   margin-top: 20px;
}

.bt-lg {
   padding: 10px 16px;
   font-size: 18px;
}

.btn {
   background-color: #FA58AC;
}
</style>
</head>

<%
	String memId = (String) session.getAttribute("loginCode");
	
	String memName = "";
	String memTel = "";
	IMemberService memService = MemberServiceImpl.getInstance();
	try {
		MemberVO memVO = memService.MemInfo(memId);
		memName = memVO.getMemName();
		memTel = memVO.getMemTel();
	} catch (SQLException e1) {
		// TODO Auto-generated catch block
		e1.printStackTrace();
	}	
%>

<body>

<!-- ///////////////////// 폼 시작 ///////////////////// -->


   <div class="tkcontainer">
      <div class="col-md-4 tkleft-con bg-default">
         <h4 class="my-4">굿즈결제 정보 입력</h4>


<form method="post" onsubmit="goodspay()">

  <div class="form-row">
    <div class="form-group col-md-12">
      <label for="name">주문자 성함</label>
      <label for="name"><%=memName %></label>
      <label for="telephone">주문자 전화번호</label>
      <label for="name"><%=memTel %></label>       
    </div>
  </div>
    
  <div class="form-row">
    <div class="form-group col-md-12">         
    </div>
    <div class="form-group col-md-12">
  	  <button type="button" class="btn btn-info btn-sm" onclick="f_info()">주문자 정보로 입력</button>
    </div>
  </div>
  
  <div class="form-row">
    <div class="form-group col-md-12">
      <label for="name">받는분 성함</label>
      <input name="gdpRname" type="text" class="form-control" id="name" placeholder="이름" required>
      <label for="telephone">받는분 전화번호</label>
      <input name="gdpRtel" type="text" class="form-control" id="telephone" placeholder="010-1234-5678" required>
    </div>
  </div>

  <div class="form-row">
    <div class="form-group col-md-12">         
    </div>
    <div class="form-group col-md-12">
      <button type="button" id="addrBtn" class="btn btn-info btn-sm">주소검색</button>
    </div>
  </div>

  <div class="form-row">    
    <div class="form-group col-md-12">
      <label for="addr1" class="control-label">주소<span class="rq"> *</span></label>
      <input name="gdpAdd" type="text" class="form-control" id="addr1" required>
      <label for="addr2" class="control-label">상세주소<span class="rq"> *</span></label>
      <input name="gdpDadd" type="text" class="form-control" id="addr2" required>
    </div>
  </div>
  
  <div class="form-row">    
    <div class="form-group col-md-12">
      <label for="addr1" class="control-label">배송시 요청사항</label>
      <input name="gdpReq" type="text" class="form-control">
     </div>
  </div>
  
  
<!-- </form> -->
      </div>
   

      <div class="col-md-4 tkright-con">
         <h4 class="mb-4">결제 유형</h4>
<!--          <form> -->
            <div class="form-check">
               <input type="radio" class="form-check-input" id="credit"
                  name="gdpMh" value="카드" checked required> <label
                  for="credit" class="form-check-label">신용카드</label>
            </div>

<!--             <div class="form-check"> -->
<!--                <input type="radio" class="form-check-input" id="paypal" -->
<!--                   name="payment-method" required> <label for="paypal" -->
<!--                   class="form-check-label">카카오페이</label> -->
<!--             </div> -->

            <div class="row mt-4">
               <div class="col-md-6 form-group">
                  <label for="card-name">카드 소유자</label> <input type="text"
                     class="form-control" id="card-name" placeholder required>
                  <div class="invalid-feedback">카드 소유자의 이름을 입력해주세요.</div>
               </div>

               <div class="col-md-6 form-group">
                  <label for="card-no">카드 번호</label> <input type="text"
                     class="form-control" id="card-no" placeholder required>
                  <div class="invalid-feedback">신용카드 번호를 입력해주세요.</div>
               </div>
            </div>

            <div class="row mt-4">
               <div class="col-md-6 form-group">
                  <label for="expiration">유효 기간</label> <input type="text"
                     class="form-control" id="card-name" placeholder required>
                  <div class="invalid-feedback">유효 기간을 입력해주세요.</div>
               </div>

               <div class="col-md-6 form-group">
                  <label for="ccv-no">CVC</label> <input type="text"
                     class="form-control" id="sec-no" placeholder required>
                  <div class="invalid-feedback">CVC 코드를 입력해주세요.</div>
               </div>
            </div>

            <hr class="mb-4">
               <button class="btn btn-primary bt-lg btn-block">결제</button>
         </form>
      </div>
      
   </div>
   
<!-- ///////////////////// 폼 끝 ///////////////////// -->


<%@include file="../../footer.jsp"%>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript">
   //주소검색 버튼을 눌렀을 때 sample4_execDaumPostcode함수를 실행하자
      $('#addrBtn').on('click', sample4_execDaumPostcode);

      //다음 주소록 api
      function sample4_execDaumPostcode() {
         new daum.Postcode({
            oncomplete : function(data) {
               // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

               // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
               // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
               var roadAddr = data.roadAddress; // 도로명 주소 변수

               // 우편번호와 주소 정보를 해당 필드에 넣는다.
//                document.getElementById('postAddr').value = data.zonecode;
               document.getElementById("addr1").value = roadAddr;
               // document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
            }
         }).open();
      }
      
      function goodspay(){
         event.preventDefault();
         let formData = $('form').serialize();
         
         $.ajax({
            type: 'post',
            url: '<%=request.getContextPath() %>/goods/directpay.do',
         data: formData,
         success: function(msg){
            if(msg != null) {
               console.log(msg);
               location.href = "../goods/gdbucketpaycomplete.jsp"
            }else{
               alert("결제가 취소되었습니다.");
               location.href = "../../goods/main.do"
            }
         },
         error: function(xhr){
            console.log(xhr.status);
         }
      });
   }
   
   function f_info() {
	  document.querySelector('#name').value = '<%=memName %>';
 	  document.querySelector('#telephone').value = '<%=memTel %>';
   }
   
</script>
   
</body>
</html>