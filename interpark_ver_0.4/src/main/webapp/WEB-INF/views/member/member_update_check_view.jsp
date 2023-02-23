<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>INTERPARK</title>
<c:forEach var="list" items="${list}">
	<c:if test="${list.id == memberDTO.id}">
		<script type="text/javascript">
			location.href="./MemberUpdate?id=${memberDTO.id}";
		</script>
	</c:if>
</c:forEach>
</head>
<body>
	<script type="text/javascript">
		alert("아이디가 일치하지 않습니다.");
		location.href="./";
	</script>
</body>
</html>