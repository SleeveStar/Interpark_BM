<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>예약자 티켓정보 수정 페이지</title>
<link rel="stylesheet" type="text/css"
	href="./css/bootstrap.min_4.5.0.css">
<style type="text/css">
input.error {
	border: 1px solid red;
}

label.error {
	color: red;
}
</style>
<script src="./js/jquery-3.5.1.min.js" type="text/javascript"></script>

<script src="./js/bootstrap.min_4.5.0.js" type="text/javascript"></script>

<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css"
	type="text/css" />
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>

<script type="text/javascript">
	$(function() {
		$("#testDatepicker3").datepicker({
			showButtonPanel : true,
			closeText : '닫기',
			dateFormat : "yy-mm-dd",
			dayNamesMin : [ '일', '월', '화', '수', '목', '금', '토' ],
			minDate: new Date('${bookerDTO.showperiodst}'),
			  maxDate: new Date('${bookerDTO.showperioden}')
		});
	});
</script>

<script type="text/javascript">
$(function() {
	$("#sign_booker").submit(function() {
		var testDatepicker3 = $("#testDatepicker3").val();
		var cnt = $("input[name=showseat]:checkbox:checked").length;
		
		if (testDatepicker3 == "") {
			alert("공연 날짜를 선택하세요.");
			return false;
		}
		if (cnt<1) {
			alert("한 좌석 이상을 선택해야합니다.");
			return false;
		}
	});
});
	
</script>


</head>
<body>

	<header id="main-header" class="py-2 btn-danger text-white">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<h1>예약자 티켓 정보 수정</h1>
				</div>
			</div>
		</div>
	</header>
	<section id="actions" class="py-4 mb-4 bg-light"></section>
	<section id="details">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="card">
						<div class="card-header">
							<h5>티켓 정보 수정</h5>
						</div>
						<div class="card-body">
							<form method="post" id="sign_booker" action="./BookerUpdate">
								<fieldset>
									<div class="form-group row">
										<label for="showname" class="ml-sm-3 col-form-label"> 공연 이름 </label>
										<div class="ml-sm-3">
											<input type="text" name="showname" id="showname"
												class="form-control form-control-sm bg-white"
												value="${bookerDTO.showname}" readonly>
										</div>
									</div>
									<!-- 데이트피커 넣기 -->
									<div class="form-group row">
										<label for="showdate" class="ml-sm-3 col-form-label"> 공연 날짜 </label>
										<div class="ml-sm-3">
											<input type="text" name="showdate" id="testDatepicker3"
												class="form-control form-control-sm">
										</div>
									</div>
									<!-- 좌석선택창 넣기 -->
									<div class="form-group row">
										<label for="showseat" class="ml-sm-3 col-form-label"> 공연 좌석
										</label>
<!-- 										<div class="ml-sm-3"> -->
<!-- 											<input type="text" name="showseat" id="showseat" -->
<!-- 												class="form-control form-control-sm"> -->
<!-- 										</div> -->
									</div>
									
									
									<div style="width: 570px; border: 1px solid; padding: 10px; text-align: center">
			
			<fieldset style="border: 1px solid black">
			<div>	screen	</div>
			</fieldset>
			
	
				<c:forEach var="i" begin="1" end="${bookerDTO.ticketqty}">
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
									
									<div class="form-group">
										<button type="submit" class="btn btn-secondary">등록</button>
										<button type="reset" class="btn btn-secondary">취소</button>
									</div>
								</fieldset>
							</form>
							<div class="row">
								<div class="col-md-4">
									<a href="./BookerSelect" class="btn btn-primary btn-block">
										공연 예매 내역 </a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

</body>
</html>