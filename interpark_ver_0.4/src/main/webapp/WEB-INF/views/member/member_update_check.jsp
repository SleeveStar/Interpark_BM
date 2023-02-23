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
<script type="text/javascript">
	alert("정보 수정을 위한 아이디 확인이 필요합니다.");
</script>
</head>
<body>
	<div class="container">
		<div class="card">
			<div class="card-header">
				<h2>정보 수정 확인</h2>
			</div>
			<div class="card-body">
				<fieldset>
					<form action="./MemberUpdateCheckView" id="sign_mypage">
						아이디 : <input type="text" name="id" id="id">
						<div>
							<br>
							<button type="submit" class="btn btn-primary">확인</button>
							<button type="reset" onclick="location.href='./'" class="btn btn-primary">취소</button>
						</div>
					</form>
				</fieldset>
			</div>
		</div>
	</div>
</body>
</html>