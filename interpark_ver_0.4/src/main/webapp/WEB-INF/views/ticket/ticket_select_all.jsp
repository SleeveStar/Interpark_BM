<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 페이지</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css"
	href="./css/bootstrap.min_4.5.0.css">
<script src="./js/jquery-3.5.1.min.js" type="text/javascript"></script>
<script src="./js/bootstrap.min_4.5.0.js" type="text/javascript"></script>
</head>
<body>
	<header id="main-header" class="py-2 btn-danger text-white">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<h1>메인 페이지</h1>
				</div>
			</div>
		</div>
	</header>

	<section id="ticket" class="py-4 mb-4 bg-light"></section>
	<section id="details">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="card">
						<div class="card-header">
							<h5>공연 목록</h5>
						</div>
						<div class="card-body">
							<table class="table table-hover">
								<thead class="thead-light">
									<tr class="text-center">
										<th>공연이미지</th>
										<th>공연이름</th>
										<th>공연기간 시작일</th>
										<th>공연기간 종료일</th>
										<th>공연장소</th>
										<th></th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="list" items="${list}">
										<tr class="text-center">

											<td><img alt="공연이미지"
												src="./imgUpload/${list.showname}.jpg"
												style="width: 99px; height: 130px;"></td>

											<td>${list.showname}</td>

											<td>${list.showperiodst}</td>

											<td>${list.showperioden}</td>



											<td>${list.showloc}</td>
											<td><a
												href="./TicketSelectDetail?showname=${list.showname}"
												class="btn btn-outline-info"> 공연 상세 보기 </a></td>
										</tr>
									</c:forEach>


									<c:if test="${empty list}">
										<tr>
											<td colspan="4">등록된 공연이 없습니다.</td>
										</tr>
									</c:if>
								</tbody>
							</table>
						</div>
						<div>
						
							<a href="./TicketInsert" class="btn btn-danger btn-block"> 공연
								정보 입력</a>
							
							
								<a href="./BookerSelect" class="btn btn-danger btn-block"> 공연 예매 내역</a>
						</div>

					</div>
	</section>


</body>
</html>