<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
h1{
	text-align:center;	
}
table{
 	width:300px;
 	margin:auto;
 	border:1px solid #999999;
 	padding:20px 10px;
}
th{
	text-align: left;
	
}
input[type="submit"]{
	border:none;
	border-radius: 0;
	width:100px;
	height:28px;
	line-height: 28px;
	margin-top:16px;
}
</style>
</head>
<body>
<h1>로 그 인</h1>
<form name="login">
<table>
	<tr>
		<th><label>아이디</label></th>
		<td><input type="text" name="userid" placeholder="아이디를 입력하세요."></td>
	</tr>
	<tr>
		<th><label>비밀번호</label></th>
		<td><input type="password" name="userpwd" placeholder="비밀번호를 입력하세요."></td>
	</tr>
	<tr>
		<td colspan="2" align="center">
		<input type="submit" value="로 그 인">
		</td>
	</tr>
</table>
</form>
</body>
</html>