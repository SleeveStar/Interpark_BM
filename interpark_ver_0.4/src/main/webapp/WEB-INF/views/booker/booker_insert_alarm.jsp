<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예매 완료 알람창</title>

</head>
<body>

<script type="text/javascript">
alert("<${bookerDTO.showname}> 공연 예매가 완료되었습니다.")
location.href="./BookerSelect"
</script>

</body>
</html>