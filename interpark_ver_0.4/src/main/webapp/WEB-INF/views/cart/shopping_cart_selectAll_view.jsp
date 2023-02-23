<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니</title>
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
	strong, sub, sup, tt, var, b, button, u, i, center, dl, dt, dd, ol, ul,
	li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead,
	tr, th, td, article, aside, canvas, details, embed, figure, figcaption,
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
	left: 18%;
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

.select-button {
	float: left;
	margin-top: 20px;
	margin-right: 10px;
	margin-left: 700px;
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
</style>

<script type="text/javascript">
	$(function() {
		var chkObj = document.getElementsByName("num");
		var rowCnt = chkObj.length;

		$("input[name = 'allCheck']").click(function() {
			var chk_listArr = $("input[name ='num']");
			for (var i = 0; i < chk_listArr.length; i++) {
				chk_listArr[i].checked = this.checked;
			}
		});

		$("input[name='num]").click(function() {
			if ($("input[name='num]:checked").length == rowCnt) {
				$("input[name='allCheck]")[0].checked = true;
			} else {
				$("input[name='allCheck]")[0].checked = false;
			}
		});
	});

	function deleteValue() {
		var url = "deleteCart";
		var valueArr = new Array();
		var dlist = $("input[name='num']");
		for (var i = 0; i < dlist.length; i++) {
			if (dlist[i].checked) {
				valueArr.push(dlist[i].value);
			}
		}
		if (valueArr.length == 0) {
			alert("선택된 상품이 없습니다.")
		} else {
			var chk = confirm("정말 삭제하시겠습니까?");
			$.ajax({
				//url : "deleteCart?num=" + valueArr,
				url : url,
				//type : "get",
				type : "POST",
				traditional : true,
				data : {
					valueArr : valueArr
				},
				success : function(jdata) {
					if (jdata = 1) {
						alert("삭제 완료");
						location.reload()
					} else {
						alert("삭제 실패");
					}
				}
			});
		}
	}

	$("input[name = 'num']").click(function() {

		var rowData = new Array();
		var tdArr = new Array();
		var checkbox = $("input[name=num]:checked");
		checkbox.each(function(i) {
			var tr = checkbox.parent().parent().eq(i);
			var td = tr.children();
			rowData.push(tr.text());
			var no = td.eq(2).text();
			var userid = td.eq(6).text();
			tdArr.push(no);
			tdArr.push(userid);
		});
	});

	function updateValue() {
		var url = "updateCart";
		var valueArr = new Array();
		var valueArr1 = new Array();
		var list = $("input[name='num']");
		var list1 = $("input[name='quantity']");
		for (var i = 0; i < list.length; i++) {
			if (list[i].checked) {
				valueArr.push(list[i].value);
				valueArr1.push(list1[i].value);
			}
		}
		if (valueArr.length == 0) {
			alert("선택된 상품이 없습니다.")
		} else {
			var chk = confirm("정말 수정하시겠습니까?");
			$.ajax({
				//url : "updateCart?num=" + valueArr + "&quantity=" + valueArr1,
				url : url,
				//type : "get",
				type : "POST",
				traditional : true,
				data : {
					valueArr : valueArr,
					valueArr1 : valueArr1
				},
				success : function(jdata) {
					if (jdata = 1) {
						alert("수정 성공");
						location.reload()
					} else {
						alert("수정 실패");
					}
				}
			});
		}
		if (valueArr1.length == 0) {
			alert("수정될 숫자가 정해지지 않았습니다.")
		}
	}
</script>

</head>
<body>
	<header class="head">
		<div class="main-head">
			<h1>장바구니</h1>
		</div>
		<a href="./mainpage" class=mainhome><img alt="메인홈"
			class="mainimage" src="./img/pngwing.com.png"></img></a>
		<ul class="header-menu-list">
			<li><a href="./selectCartAll"><span class="thispage">장바구니</span></a></li>
			<li><a href="./selectProductAllPage">상품목록</a></li>
			<li><a href="./product_insert">상품등록</a></li>
			<li><a href="./product_update">상품수정</a></li>
			<li><a href="./product_delete"><span class="rightborder">상품삭제</span></a></li>
		</ul>
	</header>

	<div class="container">
		<div class="select-view">
			<table class="select-table">
				<thead class="thead-light">
					<tr class="text-center">
						<th><input type="checkbox" id="allCheck" name="allCheck" /></th>
						<th></th>
						<th>상품 이미지</th>
						<th>상품 이름</th>
						<th>상품 개당 가격</th>
						<th>판매자</th>
						<th>수량</th>
						<th>할인율</th>
						<th>배송비</th>
						<th>총 가격</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="list" items="${list}" varStatus="status">
						<tr class="text-center">
							<td><input type="checkbox" id="num" name="num" class="num"
								value="${list.productnumber}"></td>
							<td><input style="display: none" type="hidden" id="count"
								name="count" value="${list.productnumber}" /></td>
							<td><img alt="상품"
								src="./imgUpload/${list.productnumber}.jpg"
								style="width: 100px; height: 100px;"></td>
							<td><a
								href="selectProductDetail?productnumber=${list.productnumber}">${list.productName}</a></td>
							<td><fmt:formatNumber type="number" maxFractionDigits="3"
									value="${list.price}" />원</td>
							<td>${list.seller}</td>
							<td><input type="number" min="1" max="999" name="quantity"
								id="quantity" placeholder="${list.quantity}"></td>
							<td>${list.discountPrice}%</td>
							<td><fmt:formatNumber type="number" maxFractionDigits="3"
									value="${list.shipping}" />원</td>
							<td><fmt:formatNumber type="number" maxFractionDigits="3"
									value="${list.price * list.quantity}" />원</td>
							<td><input style="display: none" type="hidden" id="date"
								name="date" value="${list.regdate}"></td>
						</tr>
					</c:forEach>
					<c:if test="${empty list}">
						<tr>
							<td colspan="9">장바구니가 비었습니다.</td>
						</tr>
					</c:if>

				</tbody>
			</table>

			<div class="select-button">
				<button type="button" class="w-btn w-btn-indigo"
					onclick="updateValue();">선택 수정</button>
				<button type="button" class="w-btn w-btn-indigo"
					onclick="deleteValue();">선택 삭제</button>
			</div>
		</div>
	</div>


	<!-- 						<div style="position: relative; left: 850px;"> -->
	<!-- 							<input type="button" value="선택 삭제" class="class_button" -->
	<!-- 								onclick="deleteValue();"> <input type="button" -->
	<!-- 								value="선택 수정" class="class_button" onclick="updateValue();"> -->
	<!-- 						</div> -->
	<!-- 						<div> -->
	<!-- 							<div style="position: relative; left: 850px;"> -->
	<!-- 								<button type="submit" class="class_button" -->
	<%-- 									onclick="CaseUpdateView.do?count=${arrayList.num}&quantity=${arrayList.quantity}">수정</button> --%>
	<!-- 							</div> -->
	<!-- 						</div> -->

	<!-- 								<button type="submit" class="class_button" -->
	<!-- 									formaction="./CaseDelete.do">삭제</button> -->
	<!-- 							</div> -->
	<!-- 						</div> -->

</body>
</html>