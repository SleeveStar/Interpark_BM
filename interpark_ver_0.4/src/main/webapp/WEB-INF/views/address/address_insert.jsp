<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>INTERPARK</title>
<link rel="stylesheet" type="text/css"
	href="./css/bootstrap.min_4.5.0.css">
<script src="./js/jquery-3.5.1.min.js" type="text/javascript"></script>
<script src="./js/jquery.validate.min.js" type="text/javascript"></script>
<script src="./js/address_validity.js" type="text/javascript"></script>
<script src="./js/bootstrap.min_4.5.0.js" type="text/javascript"></script>
</head>
<body>
	<div class="container">
		<div class="card">
			<div class="card-header">
				<h2>배송지 추가</h2>
			</div>
			<div class="card-body">
				<fieldset>
					<form action="./AddressInsert" method="post" id="sign_address">
						<div>배송지 이름 : <input type="text" name="addressname" id="addressname"></div>
						<div>주소 : <input type="text" name="address" id="address"></div>
						<div>전화번호 : <input type="text" name="phone" id="phone" placeholder="-제외"></div>
						<div>
							<br>
							<button type="submit" class="btn btn-primary">등록</button>
							<button type="reset" onclick="location.href='./AddressSelectList'" 	class="btn btn-primary">취소</button>
						</div>
					</form>
				</fieldset>
			</div>
		</div>
	</div>
</body>
</html>