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
	
	<!-- if else -->
	<h1>조건문 (if else)</h1>
	<%-- 몸무게가 70이하면 치킨, 80이하면 샐러드 그게 아니면 굶는다 --%>
	<c:set var="weight" value="90" />
	
	<c:choose>
	
		<%-- if(weight <= 70) --%>
		<c:when test="${weight <= 70}">
			<div>치킨먹자</div>
		</c:when>
		
		<%-- else if(weight <= 80) --%>
		<c:when test="${weight <= 80}">
			<div>샐러드먹자</div>
		</c:when>
		
		<%-- else --%>
		<c:otherwise>
			<div>굶자</div>
		</c:otherwise>
	
	</c:choose>
	
	<%-- 반복문 --%>
	<h1>반복문</h1>
	<%-- 0 ~ 4 5번 반목 --%>
	<c:forEach var="i" begin="0" end="4" step="1"> <%-- step = 얼마나 증가시킬지 / for(int i = 0; i <= 4; i++ --%>
		${i }
	</c:forEach>
	
	<hr>
	
	<%-- 16 ~ 20 반복 --%>
	<c:forEach var="i" begin="16" end="20" step="1" varStatus="status" > <%-- varStatus  = 상태값 --%>
		${i } ${status.current } ${status.first } ${status.last } ${status.count } ${status.index } <br>
		<%-- current(현재값), first(반복문의 첫번째 값인지), last(반복문의 마지막 값인지), count(몇번째 반복인지, 1부터 시작), index(현재값, 0부터 시작) --%>
	</c:forEach>
	
	
	<%-- 모델에서 전달 받은 리스트 반복-- %>
	<%-- 향상된 for문 for(String fruit : fruits) / 변수 fruit안에 controller에서 받은 fruits값을 넣는다. --%> 
	<c:forEach var="fruit" items="${fruits}" varStatus="status" > <%-- 외부에서 받은 값은 el태그 $ 안에 넣는다 --%>
		${fruit} :: ${status.count } ${status.index } <br>
	</c:forEach>
	
	
	<%-- 모델에서 전달 받은 List<Map> 반복 --%>
	<c:forEach var="user" items="${users }" varStatus="status">
		<h4>${status.count }번째 회원 정보</h4>
		이름 : ${user.name} <br> <%-- key.value 로 사용 가능 --%>
		나이 : ${user.age} <br>
		취미 : ${user.hobby} <br>
	</c:forEach>
	
	<br>
	
	<%-- user 내용을 테이블에 정리 --%>
	<table border="1">
		<thead>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>나이</th>
				<th>취미</th>
			</tr>
		</thead>
		
		<tbody>
		
			<c:forEach var="user" items="${users}" varStatus="status">
				<tr>
					<td>${status.count }</td>			
					<td>${user.name}</td>			
					<td>${user.age}</td>			
					<td>${user.hobby}</td>			
				</tr>
			</c:forEach>
			
		</tbody>
	</table>
	
	
	
	
</body>
</html>