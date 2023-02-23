<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>관리자 공연 정보 수정 페이지</title>
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
<script src="./js/jquery.validate.min.js" type="text/javascript"></script>
<script src="./js/dept_validity.js" type="text/javascript"></script>

<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css"
	type="text/css" />
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>

<script>
	$(function() {
		$("#testDatepicker4").datepicker({
			showButtonPanel : true,
			closeText : '닫기',
			dateFormat : "yy-mm-dd",
			dayNamesMin : [ '일', '월', '화', '수', '목', '금', '토' ]
		});
	});

	$(function() {
		$("#testDatepicker5").datepicker({
			showButtonPanel : true,
			closeText : '닫기',
			dateFormat : "yy-mm-dd",
			dayNamesMin : [ '일', '월', '화', '수', '목', '금', '토' ]
		});
	});
</script>

<script src="./js/jquery.validate.min.js" type="text/javascript"></script>
<script src="./js/ticket_validity.js" type="text/javascript"></script>

</head>
<body>

	<header id="main-header" class="py-2 btn-danger text-white">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<h1>공연 정보 수정</h1>
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
							<h5>부서 수정</h5>
						</div>
						<div class="card-body">
							<form method="post" id="sign_ticket" action="./TicketUpdate">
								<fieldset>
									<div class="form-group row">
										<label for="showname" class="ml-sm-3 col-form-label">
											공연 이름 </label>
										<div class="ml-sm-3">
											<input type="text" name="showname" id="showname"
												class="form-control form-control-sm bg-white"
												value="${param.showname}" readonly>
										</div>
									</div>
									<div class="form-group row">
										<label for="showloc" class="ml-sm-3 col-form-label">
											공연 장소 </label>
										<div class="ml-sm-3">
											<input type="text" name="showloc" id="showloc"
												class="form-control form-control-sm">
										</div>
									</div>
									<div class="form-group row">
										<label for="showinfo" class="ml-sm-3 col-form-label">
											공연 정보 </label>
										<div class="ml-sm-3">
											<textarea name="showinfo" id="showinfo" rows="10" cols="40"
												class="form-control form-control-sm"></textarea>
										</div>
									</div>
									<div class="form-group row">
										<label for="ticketprice" class="ml-sm-3 col-form-label">
											티켓 가격 </label>
										<div class="ml-sm-3">
											<input type="text" name="ticketprice" id="ticketprice"
												class="form-control form-control-sm">
										</div>
									</div>
									<div class="form-group row">
										<label for="ticketqty" class="ml-sm-3 col-form-label">
											티켓 수량 </label>
										<div class="ml-sm-3">
											<input type="text" name="ticketqty" id="ticketqty"
												class="form-control form-control-sm">
										</div>
									</div>
									<div class="form-group row">
										<label for="showperiodst" class="ml-sm-3 col-form-label">
											공연 시작일 </label>
										<div class="ml-sm-3">
											<input type="text" name="showperiodst" id="testDatepicker4"
												class="form-control form-control-sm">
										</div>
									</div>
									<div class="form-group row">
										<label for="showperioden" class="ml-sm-3 col-form-label">
											공연 종료일 </label>
										<div class="ml-sm-3">
											<input type="text" name="showperioden" id="testDatepicker5"
												class="form-control form-control-sm">
										</div>
									</div>
									<div class="form-group">
										<button type="submit" class="btn btn-secondary">등록</button>
										<button type="reset" class="btn btn-secondary">취소</button>
									</div>
								</fieldset>
							</form>
							<div class="row">
								<div class="col-md-4">
									<a href="./TicketSelect" class="btn btn-primary btn-block">
										공연 목록 </a>
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