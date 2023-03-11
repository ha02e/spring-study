<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>회원가입</title>

<!-- Icon Font Stylesheet -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
    
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<style>
body{
	background-color: #f5f5f5;
	height:2000px;
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
<%@include file="/WEB-INF/views/header.jsp"%>   
    

<ol class="breadcrumb">
  <li class="breadcrumb-item"><a href="#">Home</a></li>
  <li class="breadcrumb-item active">회원가입</li>
</ol>
<form name="memberJoin" action="memberJoin.hy" method="post">
<table>
	<tr>
		<th>아이디</th>
		<td><input type="text" name="id"></td>
		<td><input type="button" value="중복검사" onclick="idCheck();"></td>
	</tr>
	<div class="form-group">
	<tr>
		<td><label for="exampleInputPassword1" class="form-label mt-4">비밀번호</label></td>
		<td colspan="2">
		<input type="password" name="pwd" class="form-control" id="exampleInputPassword1" placeholder="Password">
    	</td>
	</tr>
	</div>
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


 








<%@include file="/WEB-INF/views/footer.jsp"%>   

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>