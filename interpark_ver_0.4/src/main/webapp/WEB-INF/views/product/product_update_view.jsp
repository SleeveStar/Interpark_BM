<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 수정</title>
<c:forEach var="productupdate" items="${productupdate}">
	<c:if test="${productupdate.productnumber==productDTO.productnumber}">
		<script type="text/javascript">
			alert("입력하신 ${productDTO.productnumber}번의 상품 번호를 수정하였습니다.");
			location.href="./product_select";
		</script>
	</c:if>
</c:forEach>
</head>
<body>
	<script type="text/javascript">
		alert("입력하신 ${productDTO.productnumber}상품번호가 없습니다.");
		location.href = "./product_update";
	</script>
</body>
</html>