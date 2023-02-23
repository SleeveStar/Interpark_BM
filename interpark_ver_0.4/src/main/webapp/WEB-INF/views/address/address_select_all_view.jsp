<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>INTERPARK</title>
<link rel="stylesheet" type="text/css"
	href="./css/bootstrap.min_4.5.0.css">
<script src="./js/jquery-3.5.1.min.js" type="text/javascript"></script>
<script src="./js/bootstrap.min_4.5.0.js" type="text/javascript"></script>
<script type="text/javascript">
	function deleteValue() {
		var valueArr = new Array();
		var num = $("input[name=radio]");
		for (var i = 0; i < num.length; i++) {
			if (num[i].checked) {
				valueArr.push(num[i].value);
			}
		}
		if (confirm("정말 삭제하시겠습니까?") == true) {
			$.ajax({
				url : "AddressDelete?num=" + valueArr,
				type : "get",
				traditional : true,
				data : {
					'valueArr' : valueArr
				}
			});
			alert("삭제 되었습니다.");
			location.reload();
		} else {
			alert("취소 되었습니다.");
			location.reload();
		}
	}
</script>
<script type="text/javascript">
	function updateValue() {
		var valueArr = new Array();
		var num = $("input[name=radio]");
		for (var i = 0; i < num.length; i++) {
			if (num[i].checked) {
				valueArr.push(num[i].value);
			}
		}
		if (confirm("정말 수정하시겠습니까?") == true) {
			// 			$.ajax({												//아작스를 이용할 필요가 없다.
			// 				url : "AddressUpdate?num=" + valueArr,
			// 				type : "get",
			// 				traditional : true,
			// 				data : {
			// 					'valueArr' : valueArr
			// 				}
			// 			});
			location.href = "./AddressUpdate1?num=" + valueArr;
		} else {
			alert("취소 되었습니다.");
			location.reload();
		}
	}
</script>
</head>
<body>
	<div class="container">
		<div class="card">
			<div class="card-header" align="center">
				<h2>배송지 주소록 관리</h2>
			</div>
			<div class="card-body" align="center">
				<fieldset>
					<table class="table table-hover">
						<thead class="thead-light">
							<tr class="text-center">
								<th></th>
								<th>이름</th>
								<th></th>
								<th>주소</th>
								<th></th>
								<th>전화번호</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="list" items="${list}">
								<tr class="text-center">
									<td><input type="radio" name="radio" id="radio" value="${list.num}" checked></td>
									<td>${list.addressname}</td>
									<td></td>
									<td>${list.address}</td>
									<td></td>
									<td>${list.phone}</td>
									<td></td>
								</tr>
							</c:forEach>
								<c:if test="${empty list}">
									<tr>
										<td>등록된 배송지가 없습니다.</td>
									</tr>
								</c:if>
						</tbody>
					</table>

					<div class="search">
						<select name="searchType">
							<option value="n"
								<c:out value="${scri.searchType eq 'n' ? 'selected' : ''}"/>>배송지 이름</option>
							<option value="a"
								<c:out value="${scri.searchType eq 'a' ? 'selected' : ''}"/>>주소</option>
						</select>
						
						<input type="text" name="keyword" id="keywordInput" value="${scri.keyword}" />

						<button id="searchBtn">검색</button>
						<script>
							$(function() {
								$('#searchBtn')
										.click(
												function() {
													self.location = "AddressSelectList"
															+ '${pageMaker.makeQuery(1)}'
															+ "&searchType="
															+ $("select option:selected").val()
															+ "&keyword="
															+ encodeURIComponent($('#keywordInput').val());
												});
							});
						</script>
					</div>

					<div align="center">
						<ul>
							<c:if test="${pageMaker.prev}">
								<%-- <a href="AddressSelectList${pageMaker.makeQuery(pageMaker.startPage - 1)}">이전</a> --%>
								<a href="AddressSelectList${pageMaker.makeSearch(pageMaker.startPage - 1)}">이전</a>
							</c:if>
							<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
								<%-- <a href="AddressSelectList${pageMaker.makeQuery(idx)}">${idx}</a> --%>
								<a href="AddressSelectList${pageMaker.makeSearch(idx)}">${idx}</a>
							</c:forEach>
							<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
								<%-- 	<a href="AddressSelectList${pageMaker.makeQuery(pageMaker.endPage + 1)}">다음</a> --%>
								<a href="AddressSelectList${pageMaker.makeSearch(pageMaker.endPage + 1)}">다음</a>
							</c:if>
						</ul>
					</div>
					<button onclick="location.href='./AddressInsert'" class="btn btn-primary">추가</button>
					<button onclick="updateValue();" class="btn btn-primary">수정</button>
					<button onclick="deleteValue();" class="btn btn-primary">삭제</button>
					<button onclick="location.href='./'" class="btn btn-primary">마이페이지</button>
				</fieldset>
			</div>
		</div>
	</div>
</body>
</html>