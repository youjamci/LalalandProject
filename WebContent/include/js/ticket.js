	var currentDate = new Date();

	function updateCalendar() {
	  var calendar = document.getElementById("calendar");

	  calendar.getElementsByTagName("tbody")[0].innerHTML = "";

	  var year = currentDate.getFullYear();
	  var month = currentDate.getMonth() + 1;

	  document.getElementById("YYYYMM").innerHTML = year + ". " + month;

	  var daysInMonth = new Date(year, month, 0).getDate();

	  var row, cell;
	  var dayCount = 1;
	  for (var i = 0; i < 6; i++) {
	    row = calendar.insertRow();
	    for (var j = 0; j < 7; j++) {
	      cell = row.insertCell();
	      if (i === 0 && j < new Date(year, month - 1).getDay()) {
	        cell.innerHTML = "<span class='unable'></span>";
	      } else if (dayCount > daysInMonth) {
	        cell.innerHTML = "<span class='unable'></span>";
	      } else {
	        var dateString =
	          year +
	          (month < 10 ? "0" + month : month) +
	          (dayCount < 10 ? "0" + dayCount : dayCount);
	        if (currentDate > new Date(year, month - 1, dayCount)) {
	          cell.innerHTML = "<span class='unable'>" + dayCount + "</span>";
	        } else {
	          cell.innerHTML =
	            "<a href='javascript:void(0)' onclick='fn_playDate(" +
	            dateString +
	            ", this)'>" +
	            dayCount +
	            "</a>";
	        }
	        dayCount++;
	      }
	    }
	  }
	}

	  function fn_playDate(date, element) {
	    var selected = document.getElementsByClassName("selected");
	    if (selected.length > 0) {
	      selected[0].classList.remove("selected");
	    }

	    element.classList.add("selected");

	    document.getElementById("selectedDate").innerHTML = "Selected date: " + date;

	    console.log("Selected date:", date);
	  }

function fn_changeDate(change) {
  if (change === 1) {
    // 이전 달로 이동
    currentDate.setMonth(currentDate.getMonth() - 1);
  } else if (change === 2) {
    // 다음 달로 이동
    currentDate.setMonth(currentDate.getMonth() + 1);
    currentDate.setDate(1); // 다음 달의 1일로 이동
  }

  // 달력 업데이트
  updateCalendar();
}

