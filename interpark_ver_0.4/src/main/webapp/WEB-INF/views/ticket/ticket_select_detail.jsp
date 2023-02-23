<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
	pageContext.setAttribute("cout", "\n");
%>

<%
	pageContext.setAttribute("CR", "\r");
	pageContext.setAttribute("LF", "\n");
	pageContext.setAttribute("CRLF", "\r\n");
	pageContext.setAttribute("SP", "&nbsp;");
	pageContext.setAttribute("BR", "<br/>");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공연정보 상세보기</title>


<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css"
	href="./css/bootstrap.min_4.5.0.css">
<script src="./js/jquery-3.5.1.min.js" type="text/javascript"></script>
<script src="./js/bootstrap.min_4.5.0.js" type="text/javascript"></script>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css"
	type="text/css" />
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>

<!--  이거 쓰면 날짜선택에 datepicker가 안떠서 일단 주석처리함. 원래는 좌석 선택할 때 나왔던 코드인데 왜 충돌하는지 모르겠다
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR"/>
 <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js" type="text/javascript"></script>-->

<script>
	$(function() {
		$("#testDatepicker2").datepicker({
			showButtonPanel : true,
			closeText : '닫기',
			dateFormat : "yy-mm-dd",
			dayNamesMin : [ '일', '월', '화', '수', '목', '금', '토' ],
			minDate: "${ticketDTO.showperiodst}",
			  maxDate: "${ticketDTO.showperioden}"
		});
	});
</script>


<!-- 달력 도전2 -->
<script type="text/javascript">
	var today = new Date();
	var date = new Date();

	var selectedCell;

	var realMonth = date.getMonth() + 1;
	var realToDay = date.getDate();

	var selectedMonth = null;
	var selectedDate = null;

	function buildCalendar() {
		var row = null
		var cnt = 0;
		var calendarTable = document.getElementById("calendar");
		var calendarTableTitle = document.getElementById("calendarTitle");
		calendarTableTitle.innerHTML = today.getFullYear() + "년"
				+ (today.getMonth() + 1) + "월";

		var firstDate = new Date(today.getFullYear(), today.getMonth(), 1);
		var lastDate = new Date(today.getFullYear(), today.getMonth() + 1, 0);
		while (calendarTable.rows.length > 2) {
			calendarTable.deleteRow(calendarTable.rows.length - 1);
		}

		row = calendarTable.insertRow();

		for (i = 0; i < firstDate.getDay(); i++) {
			cell = row.insertCell();
			cnt += 1;
		}

		for (i = 1; i <= lastDate.getDate(); i++) {
			cell = row.insertCell();
			cnt += 1;

			cell.setAttribute('id', i);
			cell.innerHTML = i;
			cell.align = "center";

			cell.onclick = function() {
				clickedYear = today.getFullYear();
				clickedMonth = (1 + today.getMonth());
				clickedDate = this.getAttribute('id');

				clickedDate = clickedDate >= 10 ? clickedDate : '0'
						+ clickedDate;
				clickedMonth = clickedMonth >= 10 ? clickedMonth : '0'
						+ clickedMonth;
				clickedYMD = clickedYear + "-" + clickedMonth + "-"
						+ clickedDate;

				opener.document.getElementById("date").value = clickedYMD;
				self.close();
			}

			if (cnt % 7 == 1) {
				cell.innerHTML = "<font color=#F79DC2>" + i + "</font>";
			}

			if (cnt % 7 == 0) {
				cell.innerHTML = "<font color=skyblue>" + i + "</font>";
				row = calendar.insertRow();
			}
		}

		if (cnt % 7 != 0) {
			for (i = 0; i < 7 - (cnt % 7); i++) {
				cell = row.insertCell();
			}
		}

	};

	function prevCalendar() {
		today = new Date(today.getFullYear(), today.getMonth() - 1, today
				.getDate());
		buildCalendar();
	};

	function nextCalendar() {
		today = new Date(today.getFullYear(), today.getMonth() + 1, today
				.getDate());
		buildCalendar();
	};
</script>


<script>
	// html 이 다 로딩된 후 실행
	$(document).ready(function() {
		// 체크박스들이 변경됐을때
		$(":checkbox").change(function() {
			var cnt = $("#person").val();

			// 셀렉트박스의 값과 체크박스중 체크된 갯수가 같을때, 다른 체크박스들을 disable 처리
			if (cnt == $(":checkbox:checked").length) {
				$(":checkbox:not(:checked)").attr("disabled", "disabled");
			}
			// 체크된 갯수가 다르면 활성화 시킴
			else {
				$(":checkbox").removeAttr("disabled");
			}
		});

		// 셀렉트박스에서 다른 인원수를 선택하면 초기화 시킴
		$("#person").change(function() {
			$(":checkbox").removeAttr("checked");
			$(":checkbox").removeAttr("disabled");
		});
	});
</script>
<script type="text/javascript">
	$(function() {
		$("#submit").click(function() {
			var testDatepicker2 = $("#testDatepicker2").val();
			if (testDatepicker2 == "") {
				alert("날짜를 선택하세요.");
				return false;
			}
		});
	});
</script>


<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<!-- CSS -->
<style type="text/css">
.wpqkf {
	float: left;
}

.wpqkf1 {
	display: flex;
	flex-wrap: wrap;
	flex-direction: column;
	align-content: center;
	align-items: flex-start;
	justify-content: flex-start;
	margin-top: 10px;
}

.productMainBody {
	margin-top: 30px;
}
</style>

</head>
<body>
	<header id="main-header" class="py-2 btn-danger text-white">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<h1>공연 상세 보기</h1>
				</div>
			</div>
		</div>
	</header>

	<form id="booker_insert" action="./BookerInsert" method="post">


		<div style="display: flex; justify-content: center;">
			<!-- 상단줄 다 묶음 -->
			<div class="wpqkf">
				<!-- 제목이랑 이미지 -->
				<h2 class="prdTitle">뮤지컬 &lt;${ticketDTO.showname}&gt;</h2>
				<br>
				<div class="contents">

					<img alt="공연이미지" src="./imgUpload/${ticketDTO.showname}.jpg"
						style="width: 298px; height: 398px;">
				</div>
			</div>

			<div class="wpqkf" style="margin-top: 150px;">
				<!-- 장소 기간 가격 -->
				<ul class="info">
					<li class="infoItem"><strong class="infoLabel">공연 장소</strong>
						<div class="infoDesc">
							<a class="infoBtn" data-popup="info-place" role="button">
								${ticketDTO.showloc} </a>
						</div></li>

					<li class="infoItem"><strong class="infoLabel">공연 기간</strong>
						<div class="infoDesc">
							<a class="infoText">${ticketDTO.showperiodst}</a> ~ <a
								class="infoText">${ticketDTO.showperioden}</a>
						</div></li>

					<li class="infoItem"><strong class="infoLabel">티켓 가격</strong>
						<div class="infoDesc">
							<a class="infoText">${ticketDTO.ticketprice}</a>
						</div></li>

				</ul>
			</div>
			<div style="margin-top: 150px;">
				<table id="calendar">
					<tr>
						<td align="center"><label onclick="prevCalendar()"> ◀
						</label></td>
						<td colspan="5" align="center" id="calendarTitle">yyyy년 m월</td>
						<td align="center"><label onclick="nextCalendar()"> ▶
						</label></td>
					</tr>
					<tr>
						<td align="center"><font color="#F79DC2">일</font></td>
						<td align="center">월</td>
						<td align="center">화</td>
						<td align="center">수</td>
						<td align="center">목</td>
						<td align="center">금</td>
						<td align="center"><font color="skyblue">토</font></td>
					</tr>
				</table>

				<div>
					<script type="text/javascript">
						buildCalendar();
					</script>
				</div>

			</div>

		</div>


		<!-- 달력 도전2 -->


		<div class="wpqkf1">
		<!-- 원래 여기임 -->

			<div>
				<label for="showdate">공연 날짜 선택</label> <input type="text"
					name="showdate" id="testDatepicker2">
			</div>

			<div>
				<span>인원수 선택 : </span> <select id="person" name="people">
					<option value="1">1명</option>
					<option value="2">2명</option>
					<option value="3">3명</option>
					<option value="4">4명</option>
					<option value="5">5명</option>
				</select>
			</div>



			<br>

			<div
				style="width: 570px; border: 1px solid; padding: 10px; text-align: center">

				<fieldset style="border: 1px solid black">
					<div>screen</div>
				</fieldset>

				<br>


				<c:forEach var="i" begin="1" end="${ticketDTO.ticketqty}">
					<c:choose>
						<c:when test="${i <= 10}">
							<label
								style="display: inline-block; width: 50px; line-height: 25px;"><input
								type="checkbox" value="A${i}" id="ticketqty" name="showseat">A${i}</label>
							<c:if test="${i == 10}">
								<c:out escapeXml="false" value="${fn:replace(cout, LF, '<br>')}"></c:out>
							</c:if>
						</c:when>

						<c:when test="${i> 10 && i<=20}">
							<label
								style="display: inline-block; width: 50px; line-height: 25px;"><input
								type="checkbox" value="B${i-10}" id="ticketqty" name="showseat">B${i-10}</label>
							<c:if test="${i == 20}">
								<c:out escapeXml="false" value="${fn:replace(cout, LF, '<br>')}"></c:out>
							</c:if>
						</c:when>

						<c:when test="${i> 20 && i<=30}">
							<label
								style="display: inline-block; width: 50px; line-height: 25px;"><input
								type="checkbox" value="C${i-20}" id="ticketqty" name="showseat">C${i-20}</label>
							<c:if test="${i == 30}">
								<c:out escapeXml="false" value="${fn:replace(cout, LF, '<br>')}"></c:out>
							</c:if>
						</c:when>

						<c:when test="${i> 30 && i<=40}">
							<label
								style="display: inline-block; width: 50px; line-height: 25px;"><input
								type="checkbox" value="D${i-30}" id="ticketqty" name="showseat">D${i-30}</label>
							<c:if test="${i == 40}">
								<c:out escapeXml="false" value="${fn:replace(cout, LF, '<br>')}"></c:out>
							</c:if>
						</c:when>

						<c:when test="${i> 40 && i<=50}">
							<label
								style="display: inline-block; width: 50px; line-height: 25px;"><input
								type="checkbox" value="E${i-40}" id="ticketqty" name="showseat">E${i-40}</label>
							<c:if test="${i == 40}">
								<c:out escapeXml="false" value="${fn:replace(cout, LF, '<br>')}"></c:out>
							</c:if>
						</c:when>


						<c:otherwise>없음</c:otherwise>
					</c:choose>
				</c:forEach>
			</div>
		<!-- 요기 넣어보자 -->
		<div id="productMainBody" class="productMainBody">
				<h4 class="moreInfoTitle">공연 상세 정보</h4>
				<p>${ticketDTO.showinfo}</p>
			</div>
		
		</div>
		<br>

		<div style="display: flex; justify-content: center;">
			<div>
				<a href="./TicketSelect" class="btn btn-outline-danger"> 공연 목록 </a>
			</div>
			<div>
				<a href="./TicketUpdate?showname=${ticketDTO.showname}" class="btn btn-outline-danger"> 공연
					수정 </a>
			</div>
			<div>
				<a href="./TicketDelete?showname=${ticketDTO.showname}" class="btn btn-outline-danger"> 공연 삭제 </a>
			</div>

			<input type="hidden" name="showname" value="${ticketDTO.showname}">
			<input type="hidden" name="showloc" value="${ticketDTO.showloc}">
			<input type="hidden" name="showinfo" value="${ticketDTO.showinfo}">
			<input type="hidden" name="ticketprice" value="${ticketDTO.ticketprice}"> <input type="hidden"
				name="ticketqty" value="${ticketDTO.ticketqty}">
				 <input type="hidden" name="showperiodst" value="${ticketDTO.showperiodst}">
			<input type="hidden" name="showperioden" value="${ticketDTO.showperioden}">

			<div>
				<input type="submit" id="submit"  class="btn btn-primary" value="예매하기">
			</div>
			
		</div>

		</ul>


	</form>

</body>
</html>