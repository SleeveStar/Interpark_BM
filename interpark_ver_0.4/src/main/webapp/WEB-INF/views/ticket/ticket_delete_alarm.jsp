<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공연정보 삭제 알림창</title>
</head>
<body>
<script type="text/javascript">
alert("<${ticketDTO.showname}>의 공연정보를 삭제하였습니다.")
location.href="./TicketSelect";
</script>
</body>
</html>