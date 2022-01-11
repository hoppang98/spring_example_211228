<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL core 라이브러리</title>
</head>
<body>
	<h2>변수 정의 하기 (c:set)</h2>
	
	<!--  int number1 = 100; 과 같다 -->
	<c:set var="number1" value="100" />
	<h4>${number1}</h4>
	
	<!--  위와 같은 방법인데 다른 표현식, int number2 = 200; -->
	<c:set var="number2">200</c:set>
	<h4>${number2}</h4>
	 
	<!-- el태그 안에서 연산도 가능 -->
	<h4>${number1 + number2}</h4>
	
	<!-- JSTL문법을 통해 출력 -->
	<h1>변수 출력하기(c:out)</h1>
	<h4><c:out value="900" /></h4>
	<h4><c:out value="${number1}" /></h4>
	
	<c:out value="<script>alert('출력')</script>" /> <!-- 문자 그대로 출력1 -->
	<c:out value="<script>alert('출력')</script>" escapeXml="true" />	 <!-- 문자 그대로 출력2 -->
	<c:out value="<script>alert('출력')</script>" escapeXml="false" /> <!-- script를 그대로 출력해서 alert가 나온다. -->

	<h2>조건문</h2>
	
	<c:if test="true">
		<h4>조건이 참이다.</h4>
	</c:if>
	
	<!-- if(number1 > 50) -->
	<c:if test="${number1 > 50 }">
		<h4>number1은 50보다 크다</h4>
	</c:if>
	
	<!-- if(number1 == 100) -->
	<c:if test="${number1 eq 100 }"> <!-- eq = equal -->
	
	</c:if>
	
	<!-- if(number1 != 100) -->
	<c:if test="${number1 ne 100 }"> <!-- ne = not equal -->
	
	</c:if>
	
	
	<c:if test="${empty number5}"> <!-- empty = 변수가 비어있는지 확인, !empty = 비어있지 않다 -->
		<h4>비어있다.</h4>
	</c:if>

</body>
</html>