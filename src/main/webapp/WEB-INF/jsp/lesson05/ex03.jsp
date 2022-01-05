<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>fmt 라이브러리</title>
</head>
<body>

	<c:set var="number" value="12345678" />
	<h2>출력</h2>
	<fmt:formatNumber value="${number}" /> <%-- 결과값 = 12,345,678 숫자 읽기 좋게 쉼표를 넣는 포맷을 만든다. --%>

</body>
</html>