<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생정보 입력</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
		<h1>학생정보 추가</h1>
		<form method="post" action="/lesson04/ex02/add_student"> <%-- 추가버튼 누르면 action으로 이동해서 작동 --%>
			<label>이름</label>
			<input type="text" class="form-control" name="name"> <%--name속성으로 넘어갈때 보낼 이름을 지정 --%>
			
			<label>휴대폰 번호</label>
			<input type="text" class="form-control" name="phoneNumber">
			
			<label>이메일 주소</label>
			<input type="text" class="form-control" name="email">
			
			<label>장래희망</label>
			<input type="text" class="form-control" name="dreamJob">
			
			<button type="submit" class="btn btn-success">추가</button>
		</form>
	</div>
</body>
</html>