<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL fn 라이브러리</title>
</head>
<body>

	<c:set var="str1" value="No pain. No gain." />
	
	<h3>문자열 길이</h3>
	${fn:length(str1)} <%-- 17 --%>
	
	<h3>특정 문자열이 존재하는지?</h3>
	No가 존재하는가? ${fn:contains(str1, "No") } <%-- true --%>
	<br>
	no가 존재하는가? ${fn:contains(str1, "no") } <%-- false --%>
	<br>
	대소문자 구분없이 no 문자열 검색 ${fn:containsIgnoreCase(str1, "no") } <%-- true --%>
	<br>
	<%-- if문과 함께 응용! --%>
	<c:if test="${fn:containsIgnoreCase(str1, 'no') }" >
		문장에 no라는 문자열이 존재합니다 : 대소문자 구분 없이
	</c:if>
	
	<h2>특정 문자열로 시작하거나 끝나는지</h2>
	No로 시작하는가? : ${fn:startsWith(str1, "No") }
	<br>
	gain.으로 끝나는지 : ${fn:endsWith(str1, "gain.") }
	<br>
	
	<h2>문자열 치환</h2>
	<c:set var="str2" value="I Love chicken" />
	${str2 }
	<br>
	${fn:replace(str2, "chicken", "bread") }
	
	<h2>문자열 쪼개기</h2>
	${fn:split(str2, " ")[0]} <%-- [index] 배열로 저장된다. --%>
	${fn:split(str2, " ")[2]}
	<br>
	
	<h2>문자열 자르기</h2>
	${fn:substring(str2, 2, 6) } <%-- 결과 : Love / 시작 index(2)부터 끝 index(6)까지 --%>
	
	<h2>대소문자 변경</h2>
	모두 대문자로 : ${fn:toUpperCase(str2) }
	<br>
	모두 소문자로 : ${fn:toLowerCase(str2) }
	
	<h2>앞뒤 공백 제거</h2>
	<c:set var="str3" value="             hello world      " />
	<pre>${str3 }</pre> <%-- pre태그는 공백을 포함해서 풀력 --%>
	<pre>${fn:trim(str3) }</pre> <%-- trim함수 사용하면 <pre>태그 안에서도 공백 제거 --%>



</body>
</html>