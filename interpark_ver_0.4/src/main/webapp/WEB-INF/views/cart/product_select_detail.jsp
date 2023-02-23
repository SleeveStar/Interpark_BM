<%-- <%@page import="sdw.interpark.dto.ShoppingCartDTO"%> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 상세 페이지</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
<script src="./js/jquery-3.5.1.min.js" type="text/javascript"></script>

<script type="text/javascript">
	function insertValue() {

		var url = "insertCart";
		var valueArr = new Array();
		var valueArr1 = new Array();
		var list = $("input[name='num']");
		var list1 = $("input[name='productcount']");
		if (list1[0].value > 0) {
			valueArr.push(list[0].value);
			valueArr1.push(list1[0].value);
			//alert("푸시됨")
		}

		if (list1[0].value == 0) {
			alert("수량이 선택되지 않았습니다.")
		} else {
			var chk = confirm("장바구니에 추가하시겠습니까?");
			$.ajax({
				//url : url,
				url : "insertCart?productnumber=" + valueArr + "&quantity="
						+ valueArr1,
				//type : "post",
				type : "get",
				traditional : true,
				data : {
					valueArr : valueArr,
					valueArr1 : valueArr1
				},
				success : function(jdata) {
					if (jdata = 1) {
						alert("장바구니에 추가되었습니다.");
						location.href = "./selectCartAll"
					}
				},
				error : function() {
					alert("이미 존재하는 상품입니다.");
					location.href = "./selectCartAll"
				}
			// 					else if (error : function()) {
			// 						alert("이미 존재하는 상품입니다.");
			// 						location.href = "./selectCartAll"
			// 					}
			// 					

			});
		}
	}
</script>

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
</style>

</head>
<body>
	<header class="head">
		<div class="main-head">
			<h1>상품 상세</h1>
		</div>
		<a href="./mainpage" class=mainhome><img alt="메인홈"
			class="mainimage" src="./img/pngwing.com.png"></img></a>
		<ul class="header-menu-list">
			<li><a href="./selectProductAllPage">상품목록</a></li>
			<li><a href="./selectCartAll">장바구니</a></li>
		</ul>
	</header>

	<div class="container">
		<img alt="상품" src="./imgUpload/${productDTO.productnumber}.jpg"
			style="width: 200px; height: 200px; position: relative; top: 100px;">

		<table style="position: relative; left: 900px; text-align: center;">
			<thead>
				<tr>
					<th></th>
					<td class="tdhead"><a style="display: none"><input
							type="text" name="num" id="num" value="${list.productnumber}"></a></td>
				</tr>
				<tr>
					<th>상품 이름 :</th>
					<td class="tdhead">${list.productName}</td>
				</tr>
				<tr>
					<th>상품 가격 :</th>
					<td class="tdhead"><fmt:formatNumber type="number" maxFractionDigits="3" value="${list.price}"/>원</td>
				</tr>
				<tr>
					<th>판매자 :</th>
					<td class="tdhead">${list.seller}</td>
				</tr>
				<tr>
					<th>수량 :</th>
					<td class="tdhead"><fmt:formatNumber type="number" maxFractionDigits="3" value="${list.quantity}"/>개</td>
				</tr>
				<tr>
					<th>할인율 :</th>
					<td class="tdhead">${list.discountPrice}%</td>
				</tr>
				<tr>
					<th>배송비 :</th>
					<td class="tdhead"><fmt:formatNumber type="number" maxFractionDigits="3" value="${list.shipping}"/>원</td>
				</tr>
				<tr>
					<th></th>
					<td><a style="display: none"><input type="text"
							name="date" id="date" value="${list.regdate}"></a></td>
				</tr>
			</thead>
			<tbody>

				<tr>
					<td colspan="2"><input type="number" min="1"
						max="${list.quantity}" name="productcount" id="productcount"
						placeholder="수량" required="required"> <!-- <button type="submit">수량 확인</button> -->
					</td>
				</tr>

				<tr>
					<td><div>
							<button type="button" class="w-btn w-btn-indigo"
								onclick="insertValue();">장바구니 추가</button>
						</div></td>
					<td>
						<div>
							<button type="button" class="w-btn w-btn-indigo"
								onclick="location.href='./selectProductAllPage'">상품목록</button>
						</div>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
</body>
</html>