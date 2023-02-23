<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인터파크</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
<style type="text/css">
html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p,
	blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn,
	em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var,
	b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend,
	table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas,
	details, embed, figure, figcaption, footer, header, hgroup, menu, nav,
	output, ruby, section, summary, time, mark, audio, video {
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

table {
	border-collapse: collapse;
	border-spacing: 0;
}

.mainimage {
	position: relative;
	width: 280px;
	height: 60px;
	padding-bottom: 20px;
	padding-top: 20px;
	padding-left: 40px;
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
	top: 50px;
	left: 1400px;
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

ul.menu-list {
	list-style-type: none;
	position: relative;
	top: 150px;
	width: 900px;
	margin-left: auto;
	margin-right: 450px;
}

ul.menu-list li {
	list-style-type: none;
	float: left;
	margin-bottom: 30px;
	margin-top: 30px;
	margin-right: 30px;
	margin-left: 30px;
}

ul.menu-list a {
	text-decoration: none;
}

ul.menu-list a span {
	color: #2F4F4F;
	font-family: 'Noto Sans KR', sans-serif;
	display: inline-block;
	width: 190px;
	margin-left: 10px;
	text-align: center;
	padding-bottom: 30px;
	padding-top: 30px;
	position: relative;
	bottom: 45px;
	letter-spacing: 1px;
	line-height: 25px;
	font-size: 20px;
}

ul.menu-list a span:hover {
	text-decoration: underline;
}

.newlist {
	position: relative;
	top: 120px;
	display: flex;
	justify-content: center;
	text-align: center;
}

table {
	margin-left: 80px;
	color: #2F4F4F;
	font-family: 'Noto Sans KR', sans-serif;
}

table tr, th, td {
	border-bottom: 1px solid #2F4F4F;
	padding-top: 20px;
	padding-bottom: 20px;
	padding-left: 30px;
}

td a {
	color: #FF9900;
}

.new-list {
	position: relative;
	top: 100px;
	display: flex;
	justify-content: center;
	text-align: center;
	color: #2F4F4F;
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: bolder;
}

thead {
	display: block;
	padding-right: 80px;
}

thead th {
	padding-right: 40px;
	padding-left: 40px;
}

tbody {
	display: block;
	height: 100px;
	overflow: auto;
}

tbody td {
	padding-right: 50px;
	padding-left: 50px;
}

.head5 {
	width: 80px;
}

.head6 {
	text-align: center;
	padding-right: 70px;
}

.thead {
	padding: 0px;
	margin: 0px;
}
</style>
</head>
<body>
	<header class="head">
		<div class="main-head">
			<h1>관리자 상품관리</h1>
		</div>
		<a href="./index.jsp" class=mainhome><img alt="인터파크이미지"
			class="mainimage" src="./img/pngwing.com.png"></img></a>
		<ul class="header-menu-list">
			<li><a href="">로그인</a></li>
			<li><a href="./selectCartAll">장바구니</a></li>
			<li><a href="./product_select">관리자 상품 조회</a></li>
			<li><a href="./product_insert">관리자 상품 등록</a></li>
			<li><a href="./product_update">관리자 상품 수정</a></li>
			<li><a href="./product_delete"><span class="rightborder">관리자
						상품 삭제</span></a></li>
		</ul>
	</header>
	<section class="menu">
		<div class=mainhome></div>
		<nav class="menu-contain">
			<ul class="menu-list">

				<li>
					<div class=create>
						<h3>배송지</h3>
					</div>
					<div>
						<a href="./AddressSelectList"> <img alt="ìíë±ë¡"
							class="create product" src="./img/img_hor_register.png"> <span>배송지
								관리<br>페이지입니다.
						</span>
						</a>
					</div>
				</li>

				<li>
					<div class=create>
						<h3>고객센터</h3>
					</div>
					<div>
						<a href="./CustomerSelect"> <img alt="ìíë±ë¡"
							class="create product" src="./img/img_hor_register.png"> <span>고객센터<br>페이지입니다.
						</span>
						</a>
					</div>
				</li>

				<li>
					<div class=create>
						<h3>문의작성</h3>
					</div>
					<div>
						<a href="./CustomerInsert"> <img alt="ìíë±ë¡"
							class="create product" src="./img/img_hor_register.png"> <span>문의작성<br>페이지입니다.
						</span>
						</a>
					</div>
				</li>

				<li>
					<div class=select>
						<h3>공연</h3>
					</div>


					<div>
						<a href="./TicketSelect"> <img alt="ìíì¡°í"
							class="view product" src="./img/img_hor_category.png"> <span>공연
								전체 조회<br>페이지입니다.
						</span>
						</a>
					</div>
				</li>
				<li>
					<div class=select>
						<h3>상품조회</h3>
					</div>
					<div>
						<a href="./selectProductAll"> <img alt="ìíì¡°í"
							class="view product" src="./img/img_hor_category.png"> <span>상품조회<br>페이지입니다.
						</span>
						</a>
					</div>
				</li>
				<li>
					<div class=create>
						<h3>상품등록</h3>
					</div>
					<div>
						<a href="./product_insert"> <img alt="ìíë±ë¡"
							class="create product" src="./img/img_hor_register.png"> <span>상품등록<br>페이지입니다.
						</span>
						</a>
					</div>
				</li>
				<li>
					<div class=update>
						<h3>상품수정</h3>
					</div>
					<div>
						<a href="./product_update"> <img alt="ìí ìì "
							class="update product" src="./img/img_hor_manage.png"> <span>상품수정<br>페이지입니다.
						</span>
						</a>
					</div>
				</li>
				<li>
					<div class=delete>
						<h3>상품삭제</h3>
					</div>
					<div>
						<a href="./product_delete"> <img alt="ìí ì­ì "
							src="./img/img_hor_stock.png"> <span>상품삭제<br>페이지입니다.
						</span>
						</a>
					</div>
				</li>



			</ul>
		</nav>
	</section>

</body>
</html>