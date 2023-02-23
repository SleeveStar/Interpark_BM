<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품관리</title>
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

a {
	text-decoration-line: none;
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

@import
	url("https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800,900&display=swap")
	;

.w-btn {
	position: relative;
	border: none;
	display: inline-block;
	padding: 10px 15px;
	border-radius: 10px;
	font-family: "paybooc-Light", sans-serif;
	text-decoration: none;
	font-weight: 600;
	transition: 0.25s;
}

.w-btn-outline {
	position: relative;
	padding: 10px 15px;
	border-radius: 10px;
	font-family: "paybooc-Light", sans-serif;
	text-decoration: none;
	font-weight: 600;
	transition: 0.25s;
}

.w-btn-indigo {
	background-color: #FFA500;
	color: #ffffff;
}

button {
	margin-left: 5px;
	margin-right: 5px;
}

.w-btn:hover {
	letter-spacing: 2px;
	transform: scale(1.1);
	cursor: pointer;
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
	font-size: 15px;
	text-decoration: none;
}

.header-menu-list li a:hover {
	color: #FFA500;
}

.mainview {
	color: #FF9900;
}

.select-view {
	position: absolute;
	left: 8%;
	top: 200px;
}

th, td {
	border-bottom: 1px solid #D8D8D8;
	padding-top: 15px;
	padding-bottom: 15px;
	padding-left: 30px;
	text-align: center;
	font-family: 'Noto Sans KR', sans-serif;
}

.pname {
	padding-left: 150px;
	padding-right: 150px;
	color: #FF9900;
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: bolder;
	text-decoration: none;
}

.pnum {
	color: #FF9900;
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: bolder;
	text-decoration: none;
}

th, td {
	padding-bottom: 20px;
	padding-left: 30px;
	padding-right: 30px;
}

.pagenumber {
	margin-top: 20px;
	position: relative;
	left: 25px;
}

.pagenumber a {
	margin-left: 30px;
	margin-right: 20px;
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: bolder;
	text-decoration: none;
	color: #666666;
}

.pagenumber a span {
	color: #CD5C5C;
}

fieldset {
	border: none;
}

form {
	margin-top: 20px;
	position: relative;
	left: 40px;
}

select {
	font-family: 'Noto Sans KR', sans-serif;
	padding-left: 2px;
	padding-right: 2px;
	padding-top: 3px;
	padding-bottom: 3px;
}

option {
	font-family: 'Noto Sans KR', sans-serif;
	padding-left: 2px;
	padding-right: 2px;
	padding-top: 3px;
	padding-bottom: 3px;
}

.serch-name {
	font-family: 'Noto Sans KR', sans-serif;
	padding-left: 2px;
	padding-right: 2px;
	padding-top: 3px;
	padding-bottom: 3px;
}

.serch-submit {
	background-color: #F2F2F2;
	border: 1px solid #D8D8D8;
	padding-left: 10px;
	padding-right: 10px;
	padding-bottom: 5px;
	padding-top: 5px;
	font-family: 'Noto Sans KR', sans-serif;
}

.productname {
	padding-left: 120px;
	padding-right: 120px;
}

.serch-submit:hover {
	background-color: #D8D8D8;
}

#selectgo {
	color: #FFA500;
	text-decoration-line: none;
}

.thispage {
	color: #FFA500;
}

.paginate_button {
	float: left;
}

.paginate_button a {
	color: #666666;
	padding: 8px 16px;
	text-decoration: none;
	border: 0.5px solid #D8D8D8;
	border-radius: 5px;
}

.active a {
	background-color: #FFA500;
	color: #ffffff;
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
			<li><a href="./selectCartAll">장바구니</a></li>
			<li><a href="./product_select"><span class="thispage">상품관리</span></a></li>
			<li><a href="./product_insert">상품등록</a></li>
			<li><a href="./product_update">상품수정</a></li>
			<li><a href="./product_delete"><span class="rightborder">상품삭제</span></a></li>
		</ul>

	</header>
	<div class="container">
		<div class="select-view">
			<table class="select-table">
				<thead>
					<tr>
						<th>상품 사진</th>
						<th>상품 번호</th>
						<th class="productname">상품 이름</th>
						<th>상품 가격</th>
						<th>상품 판매자</th>
						<th>상품 총 수량</th>
						<th>상품 배송비</th>
						<th>상품 할인율</th>
						<th>등록 날짜/시간</th>
						<th>수정/삭제</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="list" items="${list}">
						<tr class="trtop">
							<td><a
								href="./product_selectdetail_view?productnumber=${list.productnumber}"
								id="selectgo"><img alt="상품"
									src="./imgUpload/${list.productnumber}.jpg"
									style="width: 100px; height: 100px;"></a></td>
							<td><a
								href="./product_selectdetail_view?productnumber=${list.productnumber}"
								id="selectgo">${list.productnumber}</a></td>
							<td class="productname"><a
								href="./product_selectdetail_view?productnumber=${list.productnumber}"
								id="selectgo">${list.productName}</a></td>
							<td><fmt:formatNumber type="number" maxFractionDigits="3" value="${list.price}"/>원</td>
							<td>${list.seller}</td>
							<td><fmt:formatNumber type="number" maxFractionDigits="3" value="${list.quantity}"/>개</td>
							<td><fmt:formatNumber type="number" maxFractionDigits="3" value="${list.shipping}"/>원</td>
							<td>${list.discountPrice}%</td>
							<td><fmt:formatDate pattern="yyyy/MM/dd"
									value="${list.regdate}" /><br> <fmt:formatDate
									pattern="HH:mm:ss" value="${list.regdate}" /></td>
							<td><a
								href="./product_update?productnumber=${list.productnumber}"
								id="selectgo"><button class="w-btn w-btn-indigo"
										type="button">수정</button></a><a
								href="./product_delete?productnumber=${list.productnumber}"
								id="selectgo"><button class="w-btn w-btn-indigo"
										type="button">삭제</button></a></td>
						</tr>
					</c:forEach>
					<c:if test="${empty list}">
						<tr>
							<td colspan="8">상품목록이 비었습니다.</td>
						</tr>
					</c:if>
				</tbody>
			</table>
			<div style="display: flex; justify-content: center;">
				<ul>
					<c:if test="${pageMaker.prev}">
						<li class="paginate_button"><a href="selectProductAllPage${pageMaker.makeQuery(pageMaker.startPage - 1)}">PREVIOUS</a></li>
					</c:if>
					<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
						<li class="paginate_button ${pageMaker.pagingDTO.page == idx ? "active":"" }">
							<a id="a" href="selectProductAllPage${pageMaker.makeQuery(idx)}">${idx}</a>&nbsp;</li>
					</c:forEach>
					<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
						<li class="paginate_button"><a href="selectProductAllPage${pageMaker.makeQuery(pageMaker.endPage + 1)}">NEXT </a></li>
					</c:if>
				</ul>
			</div>

		</div>
	</div>

</body>
</html>