<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>INTERPARK</title>
<%-- <c:forEach var="list" items="${list}">
	<c:if test="${list.addressname == addressDTO.addressname}">
			<script type="text/javascript">
				alert("배송지 이름이 이미 존재합니다.")
				location.href = "./AddressSelectList";
			</script>
	</c:if>
</c:forEach> --%>
</head>
<body>
	<script type="text/javascript">
		alert("배송지가 등록되었습니다.")
		location.href = "./AddressSelectList";
	</script>
</body>
</html>