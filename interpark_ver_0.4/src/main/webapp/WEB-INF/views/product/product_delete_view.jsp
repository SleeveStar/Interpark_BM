<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 삭제</title>
</head>
<c:forEach var="productdelete" items="${productdelete}">
	<c:if test="${productdelete.productnumber==productDTO.productnumber}">
		<script type="text/javascript">
			alert("입력하신 ${productDTO.productnumber}번의 상품을 삭제하였습니다.");
			location.href = "./product_select";
		</script>
	</c:if>
</c:forEach>

<body>
	<script type="text/javascript">
		alert("입력하신 ${productDTO.productnumber}번의 상품을 번호가 없습니다.");
		location.href = "./product_delete.do";
	</script>
</body>
</html>