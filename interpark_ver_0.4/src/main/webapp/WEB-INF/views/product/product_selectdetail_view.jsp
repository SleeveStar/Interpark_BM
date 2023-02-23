<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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

header {
	padding-bottom: 20px;
	border-bottom: 2px solid #9c9c9c;
}

.header-menu-list {
	width: 500px;
	list-style-type: none;
	position: absolute;
	top: 35px;
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
	font-size: 22px;
	text-decoration: none;
}

.header-menu-list li a:hover {
	color: #FFA500;
}

.selectdetail-view {
	width: 100%;
	display: flex;
	justify-content: center;
	margin-top: 150px;
}

table {
	font-family: 'Noto Sans KR', sans-serif;
	color: #020715;
	margin-left: 50px;
}

td {
	padding-right: 20px;
	padding-top: 20px;
	padding-bottom: 20px;
	border-bottom: 1px solid #9c9c9c;
}

.tdhead {
	font-size: 20px;
}

.proimg {
	margin-top: 30px;
}
</style>
</head>
<body>
	<header class="head">
		<div class="main-head">
			<h1>상품관리</h1>
		</div>
		<a href="./mainpage" class=mainhome><img alt="메인홈"
			class="mainimage" src="./img/pngwing.com.png"></img></a>
		<ul class="header-menu-list">
			<li><a href="./product_select">상품조회</a></li>
			<li><a href="./product_insert">상품등록</a></li>
			<li><a href="./product_update">상품수정</a></li>
			<li><a href="./product_delete"><span class="rightborder">상품삭제</span></a></li>
		</ul>
	</header>
	<div class="container">
		<div class="selectdetail-view">
			<img alt="상품" src="./imgUpload/${productDTO.productnumber}.jpg"
				style="width: 200px; height: 200px; position: relative; top: 100px;">
			<table>
				<tbody>
					<tr>
						<td class="tdhead">상품 번호 :</td>
						<td>${productDTO.productnumber}번</td>
					</tr>
					<tr>
						<td class="tdhead">상품명 :</td>
						<td>${productDTO.productName}</td>
					</tr>
					<tr>
						<td class="tdhead">상품 가격 :</td>
						<td>${productDTO.price}원</td>
					</tr>
					<tr>
						<td class="tdhead">상품 배송비 :</td>
						<td>${productDTO.shipping}원</td>
					</tr>
					<tr>
						<td class="tdhead">상품수량 :</td>
						<td>${productDTO.quantity}개</td>
					</tr>
					<tr>
						<td class="tdhead">상품 판매자 :</td>
						<td>${productDTO.seller}</td>
					</tr>
					<tr>
						<td class="tdhead">상품 할인율 :</td>
						<td>${productDTO.discountPrice}%</td>
					</tr>
					<tr>
						<td class="tdhead">상품 등록일</td>
						<td><fmt:formatDate pattern="yyyy/MM/dd"
								value="${productDTO.regdate}" /><br> <fmt:formatDate
								pattern="HH:mm:ss" value="${productDTO.regdate}" /></td>
					</tr>
					<c:set var="doneLoop" value="true" />
				</tbody>

			</table>
		</div>
	</div>
</body>
</html>