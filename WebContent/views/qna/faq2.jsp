<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../../mem_header.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.tabmenu {
	max-width: 600px;
	margin: 0 auto;
	position: relative;
}

.tabmenu ul {
	position: relative;
}

.tabmenu ul li {
	display: inline-block;
	width: 33.33%;
	float: left;
	text-align: center;
	background: #f9f9f9;
	line-height: 40px;
}

.tabmenu input {
	display: none;
}

.tabmenu input:checked ~ label {
	background: #ccc;
}

.tabmenu input:checked ~ .tabCon {
	display: block;
}

.WrapWidth {
	max-width: 660px;
	margin: 0 auto;
	margin-bottom: 100px;
	margin-top: 70px;
}

.board_type_faq tbody td dl dd {
    display: none;
    padding: 15px 20px 15px 10px;
    border-bottom: 3px solid #F5646F; 
    background: #F6F6F6;

}

</style>
</head>
<script type="text/javascript">
	$(document).ready(function() {
		$('.tab_faq ul li a').click(function() {
			_satellite.track("filter_apply", {
				filter_name : $(this).data("title"),
				filter_type : "faq"
			});
		});
		$('.board_type_faq thead th:first-child').css('background', 'none');
		$('.board_type_faq dl dt').click(function(e) {
			e.preventDefault();
			$(this).siblings('dd').slideUp('fast');
			$('.board_type_faq dl dt').removeClass('on');
			$(this).next('dd').slideDown('fast');
			$(this).addClass("on");

			_satellite.track("faq_click", {
				faq_name : $(this).find("a").text()
			});
		});
	});
</script>

<body>
	<!-- <div class="rbox no_top">
		<div class="box_content pad_t0">
			<div class="customer_area" -->
	<p class="mb30">
		<img
			src="https://www.everland.com/web/images/front/everland/customer/img_faq.gif"
			alt="궁금한 내용이 있으시면 FAQ를 통하여 빠르게 찾아 보세요.">
	</p>
	<div class="tabmenu out-tabmenu">
		<ul>
			<li id="tab1" class="btnCon"><a
				href="http://localhost:8888/LalalandProject/views/qna/faq.jsp"
				target="_self"> <input type="radio" name="tabmenu" id="tabmenu1">종합이용안내
			</a></li>

			<li id="tab2" class="btnCon"><input type="radio" checked
				name="tabmenu" id="tabmenu2">홈페이지/비밀번호</li>

			<li id="tab3" class="btnCon"><a
				href="http://localhost:8888/LalalandProject/views/qna/faq3.jsp"
				target="_self"> <input type="radio" name="tabmenu" id="tabmenu3">동물원/사육사
			</a></li>
		</ul>
	</div>
	<br>
	<div class="WrapWidth">
		<table class="board_type_faq" summary="게시판">
			<colgroup>
				<col width="12%">
				<col width="*">
			</colgroup>
			<tbody>
				<tr>
					<td colspan="2">
						<dl>
							<dt class="on">
								<span>15</span><em>[홈페이지/비밀번호]</em>신규 가입시 본인 인증은
									필수인가요?
							</dt>
							<dd class="on">
								<p>
									네. 본인 명의 휴대폰으로 인증이 필요합니다.
								</p>
							</dd>
							<dt>
								<span>14</span><em>[홈페이지/비밀번호]</em>본인 인증을 진행했더니,
									이미 본인 인증된 회원이 있다고 해요.
							</dt>
							<dd>
								<p>
								동일한 명의의 아이디가 존재하고 있습니다.<br>아이디/비밀번호 찾기를 이용해 주세요.
								</p>
							</dd>
							<dt>
								<span>13</span><em>[홈페이지/비밀번호]</em>카카오 로그인 연동은
									어디서 어떻게 하나요?
							</dt>
							<dd>
								<p>
								마이페이지에서 가능합니다.<br>본인인증 완료된 ID만 연동 가능하며, 기존 가입한 카카오ID가 없어야
								합니다.
								</p>
							</dd>
							<dt>
								<span>12</span><em>[홈페이지/비밀번호]</em>페이스북 로그인을
									연동하고 싶어요.
							</dt>
							<dd>
								<p>
									페이스북 로그인 연동은 지원하지 않습니다.
								</p>
							</dd>
							<dt>
								<span>11</span><em>[홈페이지/비밀번호]</em>만 14세 미만도 가입할
									수 있나요?
							</dt>
							<dd>
							<p>
								보호자 동의 절차 후 가입 가능합니다.
							</p>
							</dd>
							<dt>
								<span>10</span><em>[홈페이지/비밀번호]</em>기존에 쓰던 아이디가
									있는데, 다른 ID로 본인인증을 해버렸어요.
							</dt>
							<dd>
								<p>
								본인인증은 한 ID만 가능합니다.<br>인증한 ID 탈퇴 후 재가입 및 본인인증을 진행해주세요.
								</p>
							</dd>
							<dt>
								<span>9</span><em>[홈페이지/비밀번호]</em>오래전 가입한 ID로
									로그인이 되지 않습니다.
							</dt>
							<dd>
								<p>아래 절차를 따라 확인해주세요.</p>
								<p>
									- 아이디 찾기 또는 비밀번호 찾기를 통하여 계정 정보를 다시 한번 확인해주세요.<br> - 최근 1년간
									로그인하지 않으신 경우 정보통신망법에 따른 안전한 개인정보 관리를 위하여 자동으로 탈퇴 처리됩니다.<br>-
									재이용을 원하시는 경우 신규 ID로 가입해주세요. (개인정보 보호를 위하여 탈퇴 처리된 ID는 재사용 불가)
								</p>
							</dd>
							<dt>
								<span>8</span><em>[홈페이지/비밀번호]</em>홈페이지 오류가 발생해요
									(보안 관련)
							</dt>
							<dd>

								<p>
									<font face=""><b>홈페이지 오류가 발생할 경우 아래 절차를 따라 주십시오.</b></font>
								</p>
								<p>
									<font face="">① 우선 열려 있는 인터넷창을 모두 닫습니다.</font>
								</p>
								<p>
									<font face="">② 인터넷창 상단의 "도구" &gt; "인터넷 옵션" &gt;
										"일반"에서 "검색 기록"을 모두 삭제합니다. </font>
								</p>
								<p>
									<font face="">&nbsp;&nbsp;(쿠키, 파일, 오프라인 항목 모두 삭제)</font>
								</p>
								<p>
									<font face="">③ Windows Vista를 사용하는 경우 "도구" &gt; "인터넷
										옵션" &gt; "보안"에서 "보호모드 사용 체크"를 해제합니다. </font>
								</p>
								<p>
									<font face="" color="red">※ Windows 확인은 화면 왼쪽 하단의
										"시작"을 클릭하면 알 수 있습니다.</font>
								</p>
								<p>
									<font face="">④ Windows 7을 사용하는 경우 "도구" &gt; "인터넷 옵션"
										&gt; "보안"에서 "사용자 지정 설정"을 "보통"으로 합니다.</font>
								</p>
								<p>
									<font face="">⑤ 계속 오류가 해결되지 않으면 "도구" &gt; "인터넷 옵션"
										&gt; "고급"에서 &nbsp;"원래대로"를 클릭하십시오.</font>
								</p>
								<p>
									<font face="">&nbsp;&nbsp;단, "원래대로"를 수행할 경우 기존에 설치된
										ActiveX가 모두 삭제되는 점을 유의하십시오.</font>
								</p>
								<p>
									<font face="">&nbsp;</font>
								</p>
								<p>
									<font face="">기업체·전산실·PC방 등 보안 프로그램 설치가 금지되거나 방화벽이
										엄격한 장소에서는 </font>
								</p>
								<p>
									<font face="">오류가 해결되지 않을 수 있으므로 다른 PC로 시도해 주십시오.</font>
								</p>
								<p>
									<font face="">툴바(Tool Bar) 등 악영향을 끼칠 수 있는 프로그램이 설치된
										경우 삭제를 한 뒤 </font>
								</p>
								<p>
									<font face="">①~⑥ 과정을 수행해 주십시오.</font>
								</p>
								<p>
									<font face="">- 화면 왼쪽 하단의 "시작" &gt; "설정" &gt; "제어판"
										&gt; "프로그램 추가/제거"에서 해당 프로그램 제거</font>
								</p>

							</dd>
							<dt>
								<span>7</span><em>[홈페이지/비밀번호]</em>홈페이지 회원을 위한 생일
									우대 혜택이 있나요? (생일 축하 우대 쿠폰)
							</dt>
							<dd>
								<p>
									<font face="">홈페이지 회원에 가입하면 생일 일주일 전에 에버랜드 우대 쿠폰을
										이메일로 보내 드립니다.</font>
								</p>
								<p>
									<font face="">쿠폰 1매당 본인 포함 4인까지 사용 가능하며 제휴카드 등 다른 혜택과
										중복 적용되지 않습니다.</font>
								</p>
								<p>&nbsp;</p>
								<p>
									<font face="">- 쿠폰 유효기간 : 생일 일주일 전 ~ 생일 열흘 후 (쿠폰에 날짜
										기재)</font>
								</p>
								<p>
									<font face="">- 사용 방법 : 생일자 신분증과 함께 매표소에 제시</font>
								</p>
								<p>
									<font face="">- 유의 사항</font>
								</p>
								<p>
									<font face="">&nbsp;&nbsp;&nbsp;① 회원 가입 시 정확한 이메일 주소를
										기입해 주십시오.</font>
								</p>
								<p>
									<font face="">&nbsp;&nbsp;&nbsp;② 손님의 부주의로 인한 미수신 및
										분실 시 재발송해 드리지 않습니다.</font>
								</p>
								<p>
									<font face="">&nbsp;&nbsp;&nbsp;③ 생일 일주일 전 이후에 가입한
										경우, 금년도 쿠폰은 받을 수 없습니다.</font>
								</p>
								<p>
									<font face="">&nbsp;&nbsp;&nbsp;④ 최소 생일 이주일 전에는
										회원가입하여야 생일 쿠폰이 정상적으로 발송됩니다. </font>
								</p>
							</dd>
							<dt>
								<span>6</span><em>[홈페이지/비밀번호]</em>임시 비밀번호로 로그인이
									안 돼요.</a>
							</dt>
							<dd>

								<p>
									<font face="">임시 비밀번호(알파벳과 숫자의 임의 조합)는 전송할 때마다 새로운
										번호로 전송되므로 </font>
								</p>
								<p>
									<font face="">가장 최근에 받은 번호를 사용해야 합니다. </font>
								</p>
								<p>
									<font face="">중복으로 신청할 경우 최근 번호를 입력하지 않게 될 경우가 있으니
										유의하십시오.</font>
								</p>
								<p>
									<font face="">입력할 때에는 1과 l, 0과 o 등이 헷갈릴 수 있으니 직접 입력하지
										마시고,</font>
								</p>
								<p>
									<font face="">빈 칸 없이 Ctrl+C(복사하기) → Ctrl+V(붙이기)를 통해
										입력해 주십시오.</font>
								</p>
								<p>
									<font face="">로그인 후에 뜨는 팝업창에서 원하는 비밀번호로 재설정해 주신 후 다시
										로그인 시도를 해주십시오.</font>
								</p>

							</dd>
							<dt>
								<span>5</span><em>[홈페이지/비밀번호]</em>쿠폰이나 메일 인쇄가
									제대로 안 돼요.
							</dt>
							<dd>

								<p>
									<font face="">쿠폰임이 식별 가능할 정도라면 어떻게 인쇄되어도 상관 없으니 인쇄된
										그대로 사용하십시오.(흑백도 가능)</font>
								</p>
								<p>
									<font face="">그리고 바코드가 인쇄되지 않아도 상관 없습니다만 아래와 같이 설정을
										변경하면 정상적으로 인쇄가 됩니다.</font>
								</p>
								<p>
									<font face="" color="red">- 인터넷창 상단의 "도구" &gt; "인터넷
										옵션" &gt; "고급" &gt; "인쇄" &gt; "배경 및 이미지 인쇄" 체크</font>
								</p>

							</dd>
							<dt>
								<span>4</span><em>[홈페이지/비밀번호]</em>메일 수신 동의를 했는데도
									메일이 안 와요.
							</dt>
							<dd>

								<p>
									<font face="">일부 메일 계정이나 사내 메일은 방화벽 등의 이유로 메일 수신이 불가한
										경우가 있습니다. </font>
								</p>
								<p>
									<font face="">네이버, 한메일, 네이트 등으로 이메일주소를 변경하기를 권해 드립니다.</font>
								</p>

							</dd>
							<dt>
								<span>3</span><em>[홈페이지/비밀번호]</em>개인 정보가 도용된 것
									같아요.
							</dt>
							<dd>

								<p>
									<font face="">개인정보 도용의 경우 본인 외에는 고발 등의 조치를 취할 수가 없어 </font>
								</p>
								<p>
									<font face="">사이버수사대 개인정보침해신고센터에 의뢰할 것을 제안 드립니다.</font>
								</p>
								<p>
									<font face="">원하시면 손님의 정보를 도용한 회원이 가입할 때 기입한 개인 정보를
										알려 드릴 수 있으나 </font>
								</p>
								<p>
									<font face="">대부분 그 정보 역시 조작된 경우가 많습니다.</font>
								</p>
								<p>
									<font face="">- 국번 없이 1336, <a
										href="http://www.1336.or.kr">http://www.1336.or.kr</a></font>
								</p>

							</dd>
							<dt>
								<span>2</span><em>[홈페이지/비밀번호]</em>예약 및 결제 완료 후
									지불 실패 메시지가 떠요.
							</dt>
							<dd>
								<p>
								아래의 사유로 인해 지불 실패된 경우에 뜨는 메시지입니다.<br> 1. 카드 사용한도 초과<br>
								2. 카드 사용 조건이 올바르지 않음 (전월 실적 부족 등)<br> 3. 기타 결제 조건에 맞지 않는 카드<br>
								지불 실패에 대한 내용은 개인금융정보 보호로 인하여 에버랜드에서는 조회할 수 없으니 <br> 각 카드사
								고객센터로 해 주시기 바랍니다.<br> 삼성카드 : 1588-8700&nbsp;&nbsp; BC 카드 :
								1588-4000&nbsp;&nbsp; 외환카드: 1588-3200&nbsp;&nbsp; KB국민카드 :
								1588-1688<br>신한카드 : 1544-7000&nbsp;&nbsp; 현대카드 :
								1577-6000&nbsp;&nbsp; 하나SK카드 : 1599-1155
								</p>
							</dd>
							<dt>
								<span>1</span><em>[홈페이지/비밀번호]</em>정기권 가입 시 업로드할
									사진 크기를 변경하는 방법은?
							</dt>
							<dd>

								<p>
									<font face="">① 증명사진으로 활용할 수 있는, 배경이 없는 사진을 준비합니다. </font>
								</p>
								<p>
									<font face="">② 화면 왼쪽 하단의 "시작" &gt; "프로그램" &gt; "보조
										프로그램" &gt; "그림판" 을 실행합니다.</font>
								</p>
								<p>
									<font face="">③ "파일 &gt; 열기" 에서 준비한 사진을 엽니다.</font>
								</p>
								<p>
									<font face="">④ "선택"으로 얼굴 부분을 선택한 뒤 "편집" &gt; "복사"
										&gt; "파일" &gt; "새로 만들기" &gt; "편집 &gt; "붙여넣기" </font>
								</p>
								<p>
									<font face="">&nbsp;&nbsp;&nbsp;&gt; "파일" &gt; "다른
										이름으로 저장" </font>
								</p>
								<p>
									<font face="">⑤ 파일 이름은 영문으로, 파일 형식은 JPEG로 저장합니다.</font>
								</p>

							</dd>
						</dl>
					</td>
				</tr>
			</tbody>
		</table>
	</div>


	<%@include file="../../footer.jsp"%>
</body>
</html>