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
<script src="./js/bootstrap.min_4.5.0.js" type="text/javascript"></script>
</head>
<body>
	<div class="container">
		<div class="card">
			<div class="card-header">
				<h2>회원 정보 조회</h2>
			</div>
			<div class="card-body">
				<fieldset>
					<div>아이디 : ${memberDTO.id}</div>
					<div>비밀번호 : ${memberDTO.password}</div>
					<div>이름 : ${memberDTO.mname}</div>
					<div>이메일 : ${memberDTO.email}</div>
					<div>전화번호 : ${memberDTO.phone}</div><br>
					<a href="./MemberUpdateCheck" class="btn btn-primary">회원정보 수정</a>
					<a href="./MemberDeleteCheck" class="btn btn-primary">회원 탈퇴</a>
					<button onclick="location.href='./'" class="btn btn-primary">마이페이지</button>
				</fieldset>
			</div>
		</div>
	</div>
</body>
</html>