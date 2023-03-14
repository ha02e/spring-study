<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<style>
h1{
	text-align:center;	
}
td{
	text-align: center;
}
.saveid-box{
	font-size: 14px;
	padding:10px 0 0 0;
}
</style>
</head>
<body>
<h1>로 그 인</h1>
<form name="login" action="login.hy" method="post">
<table>
	<tr>
		<td>
		<div class="input-group mb-3">
  			<span class="input-group-text" id="inputGroup-sizing-default">아이디</span>
  			<input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default"
  			 name="userid" placeholder="아이디를 입력하세요." value="${cookie.saveid.value}">
		</div>
		</td>
	</tr>
	<tr>
		<td>
			<span class="input-group-text" id="inputGroup-sizing-default">비밀번호</span>
  			<input type="password" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default"
  			 name="userpwd" placeholder="비밀번호를 입력하세요.">
		</td>
	</tr>
	<tr>
		<td colspan="2" align="center">
		<input type="submit" value="로 그 인" class="btn btn-primary">
		</td>
	</tr>	
	<tr>
		<td colspan="2" align="center" class="saveid-box">
		<input type="checkbox" name="saveid" value="on" ${empty cookie.saveid.value?"":"checked"}>아이디 저장
		</td>	
	</tr>
</table>
</form>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>
</html>