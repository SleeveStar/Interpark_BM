<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>INTERPARK</title>
<link rel="stylesheet" type="text/css" href="./css/bootstrap.min_4.5.0.css">
<script src="./js/jquery-3.5.1.min.js" type="text/javascript"></script>
<script src="./js/bootstrap.min_4.5.0.js" type="text/javascript"></script>
<script src="./js/jquery.validate.min.js" type="text/javascript"></script>
<script src="./js/mypage_validity.js" type="text/javascript"></script>
</head>
<body>
	<div class="container">
		<div class="card">
			<div class="card-header">
				<h2>회원 정보 수정</h2>
			</div>
			<div class="card-body">
				<fieldset>
					<form action="./MemberUpdate" method="post" id="sign_mypage">
						<div> 아이디 : <input type="text" name="id" id="id" value="${memberDTO.id}" readonly></div>
						<div> 비밀번호 : <input type="password" name="password" id="password"></div>
						<div> 이름 : <input type="text" name="mname" id="mname"></div>
						<div> 이메일 : <input type="email" name="email" id="email"></div>
						<div> 전화번호 : <input type="text" name="phone" id="phone" placeholder="-제외"></div><br>
						<button type="submit" class="btn btn-primary">등록</button>
						<button type="reset" onclick="location.href='./'" class="btn btn-primary">취소</button>
					</form>
				</fieldset>
			</div>
		</div>
	</div>
</body>
</html>