<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<style>
body{
	width:1280px;
	margin:0 auto;
}
.topmenu{
	text-align:right;
	font-size: 14px;
	margin : 10px 30px 20px 0;
}
h1{
	text-align:center;	
}
table{
	margin:40px auto;
}
</style>
<script>
function idCheck(){
	window.open('idCheckForm.hy','idCheck','width=500px,height=300px');
}
</script>
</head>
<body>

<h1>index.jsp</h1>
<form name="memberJoin" action="memberJoin.hy" method="post">
<table>
	<tr>
		<th>아이디</th>
		<td><input type="text" name="id"></td>
		<td><input type="button" value="중복검사" onclick="idCheck();"></td>
	</tr>
	<tr>
		<th>비밀번호</th>
		<td colspan="2"><input type="password" name="pwd"></td>
	</tr>
	<tr>
		<th>이름</th>
		<td colspan="2"><input type="text" name="name"></td>
	</tr>
	<tr>
		<th>E-mail</th>
		<td colspan="2"><input type="text" name="email"></td>
	</tr>
	<tr>
		<th>전화번호</th>
		<td colspan="2"><input type="text" name="tel"></td>
	</tr>
	<tr>
		<th>주소</th>
		<td colspan="2"><input type="text" name="addr"></td>
	</tr>
	<tr>
		<td colspan="3" align="center">
			<input type="submit" value="회원가입">
			<input type="reset" value="다시작성">
		</td>
	</tr>
</table>
</form>
</body>
</html>