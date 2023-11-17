		 let totalPrice = 0;

	$(document).ready(function() {
	  // 전체 선택 클릭 시
	  $('#all_chk').change(function() {
	    if ($("#all_chk").is(":checked")) {
	      $("input[name=item_chk]").prop("checked", true);
	    } else {
	      $("input[name=item_chk]").prop("checked", false);
	    }
	    var check_cnt = 0;
	    $("input:checkbox[name=item_chk]").each(function() {
	      if ($("input:checkbox[name=item_chk]").is(":checked") == true) {
	        check_cnt++;
	      }
	    });
	    $('.del_btn .num').text(check_cnt);
	  });

	  // 개별 선택 클릭 시
	  $('input[name="item_chk"]').change(function() {
	    var itemLength = $('input[name="item_chk"]').length;
	    var checkedLength = $('input[name="item_chk"]:checked').length;
	    var selectAll = (itemLength == checkedLength);
	    $('.del_btn .num').text(checkedLength);
	    $('#all_chk').prop('checked', selectAll);
	  });

	  // 수량 변경 버튼 클릭 시
	  $('.price_btn input[type="button"]').on('click', function() {
	    var $ths = $(this);
	    var $par = $ths.parent().parent();
	    var $obj = $par.find('input[type="text"]');
	    var val = $obj.val();
	    if ($ths.val() == '-') {
	      if (val > 0)
	        $obj.val(--val);
	    } else if ($ths.val() == '+') {
	      if (val < 30)
	        $obj.val(++val);
	    }

	    // 수량 변경
	    var unit_amount = $par.find('.price_unit').text().replace(/[^0-9]/g, "");
	    var quantity = val;
	    pay_unit_func($par, unit_amount, quantity); // 1단 세로 부분 결제 금액 업데이트
	    pay_total_func(); // 2단 결제 금액 업데이트
	  });

	  function pay_unit_func($par, unit_amount, quantity) {
	    // 1번 단
	    var unit_total_amount = $par.find('.price_amount').text((unit_amount * quantity).toLocaleString());
	  }

	  function pay_total_func() {
	    // 2번 단
	    var amount_total = 0;
	    var converse_unit = 0;
	    $('.cart_list li').each(function() {
	      converse_unit = $(this).find('.price_amount').text().replace(/[^0-9]/g, "");
	      amount_total += parseInt(converse_unit) || 0;
	    });
	    $('.cart_total_price').children().find('.item_price').text(amount_total.toLocaleString());
	  }
	});