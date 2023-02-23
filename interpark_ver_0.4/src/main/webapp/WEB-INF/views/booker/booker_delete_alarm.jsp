<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예매 취소 페이지</title>
</head>
<body>
<script type="text/javascript">
alert("<${bookerDTO.showname}> 공연의  예매를 취소했습니다.")
location.href="./BookerSelect";
</script>
</body>
</html>