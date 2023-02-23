<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공연정보 입력 알림창</title>
<c:forEach var="list" items="${list}">
<c:if test="${list.showname==ticketDTO.showname}">
<script type="text/javascript">
alert("입력하신 ${ticketDTO.showname}이라는 공연이 이미 등록되어있습니다. 다시 확인해주세요.");
location.href="./TicketInsert";
</script>
</c:if>
</c:forEach>

</head>
<body>

<script type="text/javascript">
alert("<${ticketDTO.showname}> 공연이 등록되었습니다.")
location.href="./TicketSelect"
</script>

</body>
</html>