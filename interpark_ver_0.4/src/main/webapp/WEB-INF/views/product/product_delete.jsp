<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품등록</title>
<script src="./js/jquery-3.5.1.min.js" type="text/javascript"></script>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
<style type="text/css">
<
style type ="text /css">html, body, div, span, applet, object, iframe,
	h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address,
	big, cite, code, del, dfn, em, img, ins, kbd, q, s, samp, small, strike,
	strong, sub, sup, tt, var, b, u, i, center, dl, dt, dd, ol, ul, li,
	fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr,
	th, td, article, aside, canvas, details, embed, figure, figcaption,
	footer, header, hgroup, menu, nav, output, ruby, section, summary, time,
	mark, audio, video {
	margin: 0;
	padding: 0;
	border: 0;
	font-size: 100%;
	font: inherit;
	vertical-align: baseline;
}
/* HTML5 display-role reset for older browsers */
article, aside, details, figcaption, figure, footer, header, hgroup,
	menu, nav, section {
	display: block;
}

body {
	line-height: 1;
}

ol, ul {
	list-style: none;
}

blockquote, q {
	quotes: none;
}

blockquote:before, blockquote:after, q:before, q:after {
	content: '';
	content: none;
}

fieldset {
	border: 0px;
}

table {
	border-collapse: collapse;
	border-spacing: 0;
}

.mainimage {
	position: relative;
	width: 280px;
	height: 60px;
	padding-bottom: 20px;
	padding-top: 16px;
	padding-left: 34px;
	padding-right: 20px;
}

h1 {
	display: none;
}

h3 {
	display: none;
}

.head {
	padding-bottom: 20px;
	border-bottom: 2px solid #9c9c9c;
}

.header-menu-list {
	width: 500px;
	list-style-type: none;
	position: absolute;
	top: 36px;
	left: 1350px;
}

.header-menu-list li {
	float: left;
	margin-left: 30px;
	text-align: center;
}

.header-menu-list li a {
	font-family: 'Noto Sans KR', sans-serif;
	color: #020715;
	font-size: 15px;
	text-decoration: none;
}

.header-menu-list li a:hover {
	color: #FFA500;
}

.mainview {
	color: #FF9900;
}

.container {
	position: absolute;
	left: 40%;
	top: 150px;
}

.container div {
	margin-bottom: 10px;
}

.create-menu input {
	width: 400px;
	height: 40px;
	border: 2px solid #D8D8D8;
	font-size: 15px;
	font-family: 'Noto Sans KR', sans-serif;
	letter-spacing: 1px;
}

.createhead {
	font-family: 'Noto Sans KR', sans-serif;
	color: #020715;
	font-size: 25px;
	margin-left: 150px;
	font-weight: bolder;
}

.create-menu p {
	font-family: 'Noto Sans KR', sans-serif;
	font-size: 16px;
}

.create-photo p {
	font-family: 'Noto Sans KR', sans-serif;
	font-size: 16px;
}

.create-butten, .reset-butten {
	margin-top: 3px;
	border: 1px solid #D8D8D8;
	font-family: 'Noto Sans KR', sans-serif;
	font-size: 16px;
	letter-spacing: 1px;
	border-radius: 4px;
	background-color: #F2F2F2;
}

.create-butten:hover {
	background-color: #D8D8D8;
}

.reset-butten:hover {
	background-color: #D8D8D8;
}

.create-butten {
	margin-right: 20px;
	padding-left: 20px;
	padding-right: 20px;
	padding-bottom: 7px;
	padding-top: 7px;
}

.reset-butten {
	padding-left: 12px;
	padding-right: 12px;
	padding-bottom: 7px;
	padding-top: 7px;
}

body {
	
}

#thispage {
	color: #FFA500;
}
</style>
<script type="text/javascript">
	$(function() {
		$("#createproduct").submit(function() {
			if (!$("input[name='productnumber']").val()) {
				alert("상품번호를 입력하세요.");
				$("input[name='productnumber']").focus();
				return false;
			}
			var regexp_productnumber = /[0-9]{1,9}$/;
			var productnumber_check = $("input[name='productnumber']").val();
			if (!regexp_productnumber.test(productnumber_check)) {
				alert("1~9자리의 숫자만 입력하실수있습니다.");
				$("input[name='productnumber']").focus();
				$("input[name='productnumber']").val("");
				return false;
			}
		});
	});
</script>
</head>
<body>
	<header class="head">
		<div class="main-head">
			<h1>상품등록</h1>
		</div>
		<a href="./mainpage" class=mainhome><img alt="메인홈"
			class="mainimage" src="./img/pngwing.com.png"></img></a>
		<ul class="header-menu-list">
			<li><a href="./product_select">상품조회</a></li>
			<li><a href="./product_insert">상품등록</a></li>
			<li><a href="./product_update">상품수정</a></li>
			<li><a href="./product_delete"><span class="rightborder"
					id="thispage">상품삭제</span></a></li>
		</ul>

	</header>

	<div class="container">
		<P class="createhead">상품삭제</P>
		<form action="./product_delete" method="post" id="createproduct"
			enctype="application/x-www-form-urlencoded">
			<fieldset>
				<div class="create-menu">
					<div class="create-number">
						<p class="create-number-write">삭제번호입력</p>
						<input type="text" id="productnumber" name="productnumber"
							class="productnumber" maxlength="5" value="${productselect.productnumber}" readonly="readonly">
					</div>
				</div>
				<div class="submit-reset">
					<input type="submit" id="psub" class="create-butten"> <input
						type="reset" class="reset-butten">
				</div>
			</fieldset>
		</form>
	</div>
</body>
</html>