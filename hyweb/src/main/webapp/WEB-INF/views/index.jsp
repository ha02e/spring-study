<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
</style>
<script>
function loginPopup(){
	window.open('loginForm.hy','login','width=500px,height=400px');
}
</script>
</head>
<body>
<div class="topmenu">
	<a href="memberJoin.hy">회원가입</a>&nbsp;|&nbsp;
	<a href="javascript:loginPopup();">로그인</a>
</div>
<h1>index.jsp</h1>
</body>
</html>