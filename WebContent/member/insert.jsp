<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 페이지</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>

	<h1>회원 가입 화면</h1>
	<form action="insert.do" method="post">
		
		<label for="id">아이디: </label>
		<input name="id" id="id" type="email"placeholder="@이메일을 입력해주세요">
		<button id="btnID">중복체크</button><span></span><br>
		<label for="pw1">비밀번호: </label>
		<input name="pw1" id="pw1" type="password" placeholder="********"><br>
		<label for="pw2">비밀번호확인: </label>
		<input name="pw2" id="pw2" type="password"><br>
		<label for="name">이름: </label><input name="name" id="name"><br>
		<label for="nickname">닉네임: </label>
		<input	name="nickname" id="nickname"></input><br>
		<label for="address">주소: </label><input name="address" id="address"><br>
		<input type="submit" value="가입"><br>
	</form>
	<script type="text/javascript">
		var a = false;

		$(document).ready(function() {
			$("input[type=submit]").click(function(event) {

				var idn = $("input[name=id]").val();
				var pw1 = $("input[name=pw1]").val();
				var pw2 = $("input[name=pw2]").val();
				var namen = $("input[name=name]").val();
				if (!a) { //아이디 중복체크 
					alert("id 중복체크를 해주세요");
					event.preventDefault();
					return;
				} else if (!idn) { //아이디 널체크
					alert("id를 입력해주세요");
					event.preventDefault();
					return;
				} else if (pw1 != pw2) {//비밀번호 체크
					$("#pw1").focus(); // 커서가 깜박깜박
					$("#pw2").select(); // 드래그 선택됨 
					alert("비밀번호가 같지 않습니다.");
					event.preventDefault();// 1+2
					return;
				} else if (!pw1) {
					alert("비밀번호를 입력해주세요");
					event.preventDefault();
					return;
				} else if(!namen){
					alert("이름을 입력해주세요");
					event.preventDefault();
					return;
				}

			});
			$("#btnID").click(function(event) {
				event.preventDefault(); // 버튼의 원래 이벤트 무효
				var idv = $("#id").val();/*중복체크할 아이디 입력값 */
				a = true;
				$.ajax({
					type : 'get', /*연결방식 get과 post중 하나*/
					url : 'idcheck.do', /* IdCheckCommand로 연결 */
					data : {
						id : idv
					/* $("input[name=id]").val()를 id에 대입(param으로 IdCheckCommand 에게 넘겨줌) */
					},
					dataType : 'text', /* 받아올 데이터 타입이 무엇인가. IdCheckCommand 에서 바인딩한 msg의 타입 (JSON이나 배열이될수도 있다.)  */
					success : function(result) { /*연결이 성공했을때 이벤트 */
						console.log(result); /* 콘솔에 출력 */
						$("span").text(result); /*span태그에 text 입력  */
					},
					error : function(request, status, error) { /* 실패했을때의 이벤트(성공하면 사용안함) */
						console.log(error); /* 실패했을때 콘솔에 출력 */
					},
					complete : function(result) { /* 성공과 실패에 상관없이 실행하는 이벤트 */
					}
				});
			});
		});
	</script>
</body>
</html>