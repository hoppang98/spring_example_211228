<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<h1>회원 정보 추가</h1>
	<form method="post" action="/lesson06/ex01/add_user" id="joinForm"> 
		<label>이름</label><input type="text" name="name" id="nameInput"> <br> 				<%-- id는 script에서 사용하기 위해서 만들었다. --%>
		<label>생년월일</label><input type="text" name="yyyymmdd" id="yyyymmddInput"> <br>
		<label>자기소개</label><br>
		<textarea rows="10" cols="50" name="introduce" id="introduceInput"></textarea> <br>
		<label>이메일 주소:</label><input type="text" name="email" id="emailInput"> <br>
		<button type="submit" id="submitBtn">추가</button> <%-- 1번 방법 / submit은 enter키가 눌린다. --%>
		<%-- <button type="button" id="addBtn">추가</button>  2번 방법은 편리하지만 enter키가 안눌린다. --%>
	</form>			
	
	<script>
		$(document).ready(function() {	// 내용이 제대로 입력되었는지 확인 = validation check
			// $("submitBtn").on("click", function())) 	// id=submitBtn이 클릭되었을 때
			//1번 방법 / submit 방식은 enter키가 눌린다. 따라서 로그인 서비스에는 submit이 좋다
			$("#joinForm").on("submit", function(){ //form은 <script> 내용을 무시하고 데이터를 보낸다.위와 다르게 click이벤트가 아닌 submit에서 데이터를 가로채야한다.
				let name = $("#nameInput").val(); // id =nameInput 의 value를 가져와서 변수에 삽입
				let yyyymmdd = $("#yyyymmddInput").val();
				let introduce = $("#introduceInput").val();
				let email = $("#emailInput").val();
			
				if(name == "") {
					alert("이름을 입력하세요");
					return false; // return false를 해야 submit을 중단한다. 그냥 return은 중단 없이 진행함
				}
				if(yyyymmdd == "") {
					alert("생일을 입력하세요");
					return false;
				}
				if(introduce == "") {
					alert("자기소개를 입력하세요");
					return false;
				}
				if(email == "") {
					alert("이메일을 입력하세요");
					return false;
				}
				
				$.ajax({
					type:"post" // post나 get
					,url:"/lesson06/ex01/add_user" //form의 action과 동일하다. 파라미터를 전달할 주소
					,data:{"name":name, "yyyymmdd":yyyymmdd, "introduce":introduce, "email":email} // 파라미터 이름 : 사용자가 입력한 값
					,success:function(data) { // 성공시
						// alert(data); // 결과 : 삽입성공 1이 alert된다
						if(data == "success") {
							alert("입력성공");
						} else {
							alert("입력실패");
						}
					}
					,error:function() {
						alert("에러발생"); //ex) url에 오류가 나는 경우(서버 자체에 접근이 안돼)
					}
				});

				return false;
				
			});
			
			//2번 방법
			//이 방식이 윗 방식보다 더 편리하고 에러찾기도 좋지만 enter키가 안눌린다.
			$("#addBtn").on("click", function(){
				
					let name = $("#nameInput").val(); // id =nameInput 의 value를 가져와서 변수에 삽입
					let yyyymmdd = $("#yyyymmddInput").val();
					let introduce = $("#introduceInput").val();
					let email = $("#emailInput").val();
				
					if(name == "") {
						alert("이름을 입력하세요");
						return; // return false를 해야 submit을 중단한다. 그냥 return은 중단 없이 진행함
					}
					if(yyyymmdd == "") {
						alert("생일을 입력하세요");
						return;
					}
					if(introduce == "") {
						alert("자기소개를 입력하세요");
						return;
					}
					if(email == "") {
						alert("이메일을 입력하세요");
						return;
					}
					
					$.ajax({
						type:"post" // post나 get
						,url:"/lesson06/ex01/add_user" //form의 action과 동일하다. 파라미터를 전달할 주소
						,data:{"name":name, "yyyymmdd":yyyymmdd, "introduce":introduce, "email":email} // 파라미터 이름 : 사용자가 입력한 값
						,success:function(data) { // 성공시
							// alert(data); // 결과 : 삽입성공 1이 alert된다
							if(data == "success") {
								alert("입력성공");
							} else {
								alert("입력실패");
							}
						}
						,error:function() {
							alert("에러발생"); //ex) url에 오류가 나는 경우(서버 자체에 접근이 안돼)
						}
					});

					return false;
			});
			
			
		});
	</script>
</body>
</html>