<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품입력</title>
<c:forEach var="productinsert" items="${productinsert}">
	<c:if test="${productinsert.productnumber==productDTO.productnumber}">
		<script type="text/javascript">
			alert("${productDTO.productnumber}.입력하신 상품 번호가 존재합니다 다시 입력하세요");
			location.href="./product_insert";
		</script>
	</c:if>
</c:forEach>

</head>
<body>
<script type="text/javascript">
alert(" ${productDTO.productnumber}번 상품을 등록하였습니다 ."  );
location.href="./product_select"
</script>

</body>
</html>