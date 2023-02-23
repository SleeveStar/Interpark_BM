<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공연 정보 삭제</title>
<link rel="stylesheet" type="text/css" href="./css/bootstrap.min_4.5.0.css">
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
</head>
<body>
	<header id="main-header" class="py-2 btn-danger text-white">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<h1>공연 정보 삭제</h1>
				</div>
			</div>
		</div>
	</header>
	<section id="actions" class="py-4 mb-4 bg-light">
</section>
	<section id="details">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="card">

						<div class="card-body">
							<form method="post" id="sign_ticket" action="./TicketDelete">
								<fieldset>
									<div class="form-group row">
										<label for="name" class="ml-sm-3 col-form-label"> 공연 이름</label>
										<div class="ml-sm-3">
											<input type="text" name="showname" id="showname"
												class="form-control form-control-sm bg-white"
												value="${param.showname}" readonly>
										</div>
									</div>
									<div class="form-group">
										<button type="submit" class="btn btn-secondary">삭제</button>
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