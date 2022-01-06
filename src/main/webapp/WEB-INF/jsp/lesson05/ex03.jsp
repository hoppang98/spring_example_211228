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
	<h2>숫자 출력</h2>
	<fmt:formatNumber value="${number}" /> <%-- 결과값 = 12,345,678 / formatNumber는 숫자 읽기 좋게 쉼표를 넣는 포맷을 만든다. --%>
	<br>
	콤마제거 : <fmt:formatNumber value="${number}" type="number" groupingUsed="false"/> <%-- type과 groupingUsed가 숨어있었다. groupingUsed가 false면 쉼표안생김--%>
	<br>
	
	<%-- percent --%>
	<fmt:formatNumber value="1" type="percent" /> <%-- 결과 = 100% --%>
	<%-- 40% --%>
	<fmt:formatNumber value="0.4" type="percent" />
	<br>
	
	<%-- 통화(돈) --%>
	통화(원) : <fmt:formatNumber value="${number }" type="currency" />
	통화(달러) : <fmt:formatNumber value="${number }" type="currency" currencySymbol="$"/>
	
	<fmt:formatNumber value="${number }" type="currency" currencySymbol="$" var="dollor" /> <%-- 결과값을 doller변수에 저장한다 --%>
	<br>
	통화 변수 출력 : ${dollor }
	
	<br>
	
	<h2>패턴</h2>
	<%-- 3.14 --%>
	<fmt:formatNumber value="3.14" pattern="0.0000" /> <%-- 3.1400 --%>
	<br>
	<fmt:formatNumber value="3.14" pattern="#.####" /> <%-- 3.14 --%>
	<br>
	<fmt:formatNumber value="3.141592" pattern="#.####" /> <%-- 3.1416로 9에서 반올림 --%>
	
	
	<h2>날짜</h2>
	<fmt:formatDate value="${today }" pattern="yyyy년 MM월 dd일 HH시 mm분 ss초"/> <%-- controller에서 넣은 today 모델 --%>
	
	<fmt:formatDate value="${today }" pattern="yyyy/MM/dd hh:mm:ss" var="dateString" /> <%-- 결과값을 dateString변수에 저장한다 --%>
	<br>
	데이트 문자열 변수 : ${dateString }
	
	
	<h2>문자열을 Date 객체로 변환</h2>
	<%-- dateString 변수에 있는 2022/01/06 07:26:39의 포맷을 정확하게 pattern에 입력 --%>
	<fmt:parseDate value="${dateString }" pattern="yyyy/MM/dd hh:mm:ss" var="date"/> <%-- 결과값을 date변수에 저장한다 --%>
	<fmt:formatDate value="${date }" pattern="yyyy년 MM월 dd일" /> <%-- date객체를 내가 원하는 형태로 다시 변환 --%>
	
</body>
</html>