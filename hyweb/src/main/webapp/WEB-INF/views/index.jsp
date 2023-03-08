<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<c:if test="${empty sessionScope.userid}">
	<div class="topmenu">
		<a href="memberJoin.hy">회원가입</a>&nbsp;|&nbsp;
		<a href="javascript:loginPopup();">로그인</a>
	</div>
</c:if>
<c:if test="${! empty sessionScope.userid}">
	<div class="topmenu">
		${sessionScope.username}님 로그인중&nbsp;|&nbsp;
		<a href="logout.hy">로그아웃</a>
	</div>
</c:if>
<h1>index.jsp</h1>
<ul>
	<li><a href="student.hy">학생 성적관리 프로그램</a></li>
</ul>
</body>
</html>