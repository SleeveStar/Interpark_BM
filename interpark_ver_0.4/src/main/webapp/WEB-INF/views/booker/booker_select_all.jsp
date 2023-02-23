<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예매자 메인 페이지</title>
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
					<h1>공연 예매 내역</h1>
				</div>
			</div>
		</div>
	</header>
	<section id="booker" class="py-4 mb-4 bg-light"></section>
	<section id="details">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="card">
						<div class="card-header">
							<h5>예매 목록</h5>
						</div>
						<div class="card-body">
							<table class="table table-hover">
								<thead class="thead-light">
									<tr class="text-center">
										<th>공연 이름</th>
										<th>공연 날짜</th>
										<th>공연 장소</th>
										<th>좌석</th>
										<th>티켓가격</th>
										<th></th>
										<th></th>
										<th></th>
									</tr>
								</thead>
								<tbody>
									<%--객체를 호출하고 파라미터에 저장하여 반복한다.--%>
									<c:forEach var="list" items="${list}">
										<tr class="text-center">
											<td>${list.showname}</td>
											<td>${list.showdate}</td>
											<td>${list.showloc}</td>
											<td>${list.showseat}</td>
											<td>${list.ticketprice}</td>
											<td><a href="./TicketSelectDetail?showname=${list.showname}"
												class="btn btn-outline-danger"> 상세보기 </a></td>
												<td><a href="./BookerUpdate?showname=${list.showname}"
												class="btn btn-outline-primary"> 티켓수정 </a></td>
												<td><a href="./BookerDelete?showname=${list.showname}"
												class="btn btn-outline-success"> 예매취소 </a></td>
										</tr>
									</c:forEach>
									<%--객체값이 null 일 경우에 반환한다.--%>
									
									<c:if test="${empty list}">
										<tr>
											<td colspan="4"> 예매한 공연이 없습니다.</td>
										</tr>
									</c:if>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

 
 
</body>
</html>