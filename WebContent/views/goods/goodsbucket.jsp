<%@page import="java.util.List"%>
<%@page import="goods.vo.GoodsVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../../mem_header.jsp"%>
<%@include file="../../mem_aside.jsp"%>

<%
	// shoppinglist에서 넘어온 리스트
List<GoodsVO> gdShoppingList = (List<GoodsVO>) request.getAttribute("shoppingList");

// deleteController에서 삭제 후 넘어온 리스트
List<GoodsVO> deleteshoppingList = (List<GoodsVO>) request.getAttribute("deleteshoppingList");

if (deleteshoppingList != null) {
	gdShoppingList = deleteshoppingList;
}
%>

<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>장바구니</title>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/include/css/bucket.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/include/js/jquery.min.js"></script>
<style>
.space {
	margin-left: 300px;
	margin-right: 100px;
}

.click_delete{
	background-color: #F4F4F4;
	position: relative;
    border: none;
    display: inline-block;
    padding: 10px 25px;
    border-radius: 15px;
    font-family: "paybooc-Light", sans-serif;
/*     box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2); */
/*     text-decoration: none; */
/*     font-weight: 600; */
/*     transition: 0.25s; */
    border: 2px solid grey;
    font-size: 13px;
    margin-top: 30px;
    margin-left: 200px;
/*     float: right; */
}

.btn wh-btn{
	background-color: white;
	position: relative;
    border: none;
    display: inline-block;
    padding: 10px 25px;
    border-radius: 15px;
    font-family: "paybooc-Light", sans-serif;
/*     box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2); */
/*     text-decoration: none; */
/*     font-weight: 600; */
/*     transition: 0.25s; */
    border: 2px solid grey;
    font-size: 13px;
    margin-top: 30px;
    margin-left: 200px;
}

/*.w-btn-pink {
	background-color: #f199bc;
	color: #d4dfe6;
}

.w-btn-pink-outline {
	border: 3px solid #f199bc;
	color: #6e6e6e;
}

.w-btn-pink-outline:hover {
	background-color: #f199bc;
	color: #d4dfe6;
}*/
</style>
</head>
<body>

	<script type="text/javascript">
    
    // totalPrice 변수를 전역으로 선언
    let totalPrice = 0;
    
    $(function(){

	    $(".plus_btn").on("click",function(){
	    	/*gdbCd, gdCd, gdNum*/
	    	
	    	let gdPlusNum = $(this).prev().val();
	    	gdPlusNum = Number(gdPlusNum)+1;
	    	
	    	console.log("gdPlusNum : " + gdPlusNum);
	    	
	        // 가격 총계 업데이트
	        let gdPrice = Number($(this).closest('.opt_info').find('.price_unit').text());
	        totalPrice += gdPrice;
	        $('.cart_total_Price').text(totalPrice);
	        
	        console.log("totalPrice : " + totalPrice);
	        
	        updateBK(gdPlusNum, 0, totalPrice);
	        
	    });
	    
	    $(".minus_btn").on("click",function(){
	    	
	    	let gdMinusNum = $(this).next().val();
	    	gdMinusNum = Number(gdMinusNum)-1;
	    	
	    	console.log("gdMinusNum : " + gdMinusNum);
	    	
	        // 가격 총계 업데이트
	        let gdPrice = Number($(this).closest('.opt_info').find('.price_unit').text());
	        totalPrice -= gdPrice;
	        if (totalPrice < 0) totalPrice = 0;
	        $('.cart_total_Price').text(totalPrice);
	        
	        console.log("totalPrice : " + totalPrice);
	        
	        updateBK(0 , gdMinusNum, totalPrice);
	        
	    });
	    
	    //총 상품금액 처리
	    let item_price = 0;
	    $(".price_amount").each(function(index,item){
	    	console.log("price_amount : " + $(this).html());
	    	
	    	item_price = item_price + Number($(this).html());
	    	
	    	//item_price
	    });
	    $(".item_price").html(item_price);
	    
	    
	    //구매버튼 클릭
    	$("#buy_btn").on('click',function(){
    		console.log("구매버튼 클릭");
    		
    		let formData = new FormData();    		
    		
    		let str = "";
    		
    		//class="number"
    		$(".number").each(function(index,item){
    			let gdNum = $(this).val();
    			let gdbCd = $(this).data("gdbCd");
    			let gdCd = $(this).data("gdCd");
    			
    			str  = "<input type='text' name='gdNum' value='" + gdNum + "' />";
    			str += "<input type='text' name='gdbCd' value='" + gdbCd + "' />";
    			str += "<input type='text' name='gdCd' value='" + gdCd + "' />";
    			
				$("#frm").append(str);
    		});
    		
    		$("#frm").submit();
    		
//     		console.log("formData : " + formData);
    		
    	});
    });
    
    
    function updateBK(gdPlusNum,gdMinusNum, totalPrice ){
    	
    	$.ajax({
			url:"<%=request.getContextPath()%>/goods/shoppinglist.do",
			type:"post",
			contentType: "application/json; charset=utf-8",
			data: JSON.stringify({
				gdPlusNum : gdPlusNum, 
				gdMinusNum : gdMinusNum, 
				totalPrice : totalPrice
				}),
			dataType:"json",
			success:function(result){
				console.log("result : " + result);
				
				if(result.state === "success"){
					alert("수량값이 잘 반영되었습니다.");
				}
			}
		});
    	
    }
    
    $(function(){
    	$(".click_delete").on("click",function(e){
    		console.log("gdCd : " + e.target.value);
    		let cfm = confirm("삭제하시겠습니까?");
    		
    		let gdCd = e.target.value;
    		
    		console.log("gdCd : " + gdCd);
    		
    		if(cfm){//컨펌이 "확인"일때만 실행
    			$.ajax({
    				url:"<%=request.getContextPath()%>/goods/deleteShoppingList.do?gdCd="+gdCd,
    				type:"get",
    				dataType:"text",
    				success:function(result){
    					console.log("result : " + result);
    					if(result == "success"){
    						 updateShoppingList(); // 장바구니 리스트 갱신
//     						window.location.reload();
    						alert("삭제성공!!");
    						
    					}
    				},
    				error:function(result){
    					console.log("result : " + result);
    				}
    			});
    		} else{
    			return false; // 클릭 이벤트 중지
    		}//end if
    	});
    	
        // 장바구니 리스트 갱신 함수
        function updateShoppingList() {
            $.ajax({
                url: "<%=request.getContextPath()%>/goods/shoppinglist.do",
                type: "get",
                dataType: "html",
                success: function(response) {
                    $("#cartListContainer").html(response);
                }
            });
        }
    	
    	
    });


// $(function(){
//     $(".click_delete").on("click", function(e){
//         console.log(e.target.value);
//         let cfm = confirm("삭제하시겠습니까?");
        
//         let gdCd = e.target.value;
        
//         console.log("gdCd : " + gdCd);
        
//         if(cfm){ // 컨펌이 "확인"일 때만 실행
//             $.ajax({
<%--                 url: "<%=request.getContextPath()%>/goods/deleteShoppingList.do", --%>
//                 type: "post",
//                 data: { gdCd: gdCd }, // 객체 형태로 전달
//                 dataType: "json",
//                 success: function(data) {
//                     console.log("data : " + data);
//                     window.location.reload();
//                 }
//             });
//         }
//     });
// });
    
    
    </script>


	<!--     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> -->

	<script src="${pageContext.request.contextPath}/include/js/gdbucket.js"></script>
	<form id="frm"
		action="${pageContext.request.contextPath}/goods/goodsbucketpay.do"
		method="post"></form>
	<div class="space">
		<div class="cart_table">
			<p style="font-size: 60px">장바구니</p>
			<ul class="cart_list" id="cartListContainer">


				<%
					if (gdShoppingList.size() == 0) {
				%>
				<h2>상품 정보가 존재하지 않습니다.</h2>
				<%
					} else {
				%>

				<%
					int gdsp = gdShoppingList.size();

				if (gdsp != 0) {
					for (GoodsVO gv : gdShoppingList) {
				%>

				<!--                         <div class="checkbox"> -->
				<!--                             <input type="checkbox" name="item_chk" id="item_chk01"> -->
				<!--                             <label for="item_chk01"></label> -->
				<!--                         </div> -->
				<li>
					<div class="item_detail">
						<div></div>
						
						<img src="<%=request.getContextPath() + gv.getGdImgPath()%>"
							style="float: left; max-width: 100%; height: auto;">

						<div style="float: left; margin-left: 20px;">
							<!-- 추가된 부분 -->
							<p class="txt"><%=gv.getGdName()%></p>
							<p>
								구매 번호 :
								<%=gv.getGdbCd()%></p>
							<p>
								굿즈 코드 :
								<%=gv.getGdCd()%></p>

						</div>
					</div>
					<div class="opt_info">
						<strong class="price_unit"><%=gv.getGdPrice()%></strong>원
						<div class="price_btn">
							<input type="button" value="-" class="minus_btn"> <input
								type="text" value="1" class="number"
								data-gdb-cd="<%=gv.getGdbCd()%>" data-gd-cd="<%=gv.getGdCd()%>" />
							<input type="button" value="+" id="plusbtn" class="plus_btn">
						</div>
						<div class="total_p">
							<strong class="price_amount"><%=gv.getGdPrice()%></strong>원 <span
								class="del_li_btn"></span>
						</div>
					<form 
							action="${pageContext.request.contextPath}/goods/deleteShoppingList.do"
							method="get">
							<div>
								<button type="submit" class="click_delete"
									value="<%=gv.getGdCd()%>">삭제</button>
							</div>
						</form>
					</div>
					
				</li>

				<%
					} //end for                  	
				} //end if
				}
				%>


			</ul>

			<div class="cart_total_area">
				<p>결제 정보</p>

				<div class="cart_total_price">
					<p>
						총 상품금액 <strong class="item_price">0</strong>원
					</p>
					<!--                         <p>할인금액 <strong class="sale_price color-symbol">-10,000</strong>원 <span class="plus_ic"></span></p> -->
					<!--                         <p>총 배송비 <strong class="delivery_price">2,500</strong>원 <span class="equal_ic"></span></p> -->
					<!--                         <p>총 결제금액 <strong class="total_price color-red">52,500</strong>원</p> -->
				</div>
			</div>

			<div class="btn_box">
				<a href="<%=request.getContextPath()%>/goods/main.do"><button
						type="button" onclick="goBack()" class="btn wh-btn">계속
						쇼핑하기</button></a>
				<button type="button" id="buy_btn" class="btn black-btn">구매하기</button>
			</div>

		</div>
	</div>



	<%@include file="../../footer.jsp"%>